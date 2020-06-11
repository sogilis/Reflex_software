------------------------------------------------------------------------------
--                                                                          --
--                         REFLEX COMPILER COMPONENTS                       --
--                                                                          --
--          Copyright (C) 2012-2020, Free Software Foundation, Inc.         --
--                                                                          --
-- Reflex is free software; you can redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware Foundation; either version 3, or (at your option) any later version --
-- Reflex is distributed in the hope that it will be useful, but WITH-      --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License distributed with Reflex; see file COPYING3. If not, go to --
-- http://www.gnu.org/licenses for a complete copy of the license.          --
--                                                                          --
-- Reflex is originally developed by Artics
------------------------------------------------------------------------------

package body Rxunit.Assertions is

   Failures         : Failure_Lists.List;
   --  ??? Calls to Failures should be protected, so that we can use
   --  multitasking

   Current_Id : Test_Id := 1;

   procedure Init_Test (T : in out Test) is
   begin
      if T.Id = Null_Id then
         T.Id := Current_Id;
         Current_Id := Current_Id + 1;
      end if;
   end Init_Test;

   The_Current_Test : Test_Access := null;

   ------------
   -- Assert --
   ------------

   procedure Assert
     (Condition : Boolean;
      Message   : String;
      Source    : String := GNAT.Source_Info.File;
      Line      : Natural := GNAT.Source_Info.Line) is
   begin
      if not Assert (Condition, Message, Source, Line) then
         raise Assertion_Error;
      end if;
   end Assert;

   ------------
   -- Assert --
   ------------

   function Assert
     (Condition : Boolean;
      Message   : String;
      Source    : String := GNAT.Source_Info.File;
      Line      : Natural := GNAT.Source_Info.Line) return Boolean is
   begin
      if not Condition then
         Failure_Lists.Append
           (Failures,
            (Failure => (Format (Message), Format (Source), Line),
             Id      => The_Current_Test.Id));
      end if;

      return Condition;
   end Assert;

   ----------------------
   -- Assert_Exception --
   ----------------------

   procedure Assert_Exception
     (Proc    : Throwing_Exception_Proc;
      Message : String;
      Source  : String := GNAT.Source_Info.File;
      Line    : Natural := GNAT.Source_Info.Line) is separate;

   ------------
   -- Assert --
   ------------

   procedure Assert
     (Actual    : String;
      Expected  : String;
      Message   : String;
      Source    : String  := GNAT.Source_Info.File;
      Line      : Natural := GNAT.Source_Info.Line) is
   begin
      if Actual /= Expected then
         Assert
           (False,
            Message & " - got '" & Actual & "', expecting '" & Expected & "'",
            Source,
            Line);
      end if;
   end Assert;

   --------------------
   -- Clear_Failures --
   --------------------

   procedure Clear_Failures (T : Test) is
      C, N : Failure_Lists.Cursor;
   begin
      C := Failure_Lists.First (Failures);

      while Failure_Lists.Has_Element (C) loop
         N := Failure_Lists.Next (C);

         if Failure_Lists.Element (C).Id = T.Id then
            Failure_Lists.Delete (Failures, C);
         end if;

         C := N;
      end loop;
   end Clear_Failures;

   ------------------
   -- Has_Failures --
   ------------------

   function Has_Failures (T : Test) return Boolean is
   begin
      return Has_Failure (First_Failure (T));
   end Has_Failures;

   -------------------
   -- First_Failure --
   -------------------

   function First_Failure (T : Test) return Failure_Iter is
      C : Failure_Lists.Cursor;
   begin
      C := Failure_Lists.First (Failures);

      while Failure_Lists.Has_Element (C) loop
         if Failure_Lists.Element (C).Id = T.Id then
            return Failure_Iter (C);
         end if;

         Failure_Lists.Next (C);
      end loop;

      return Failure_Iter (Failure_Lists.No_Element);
   end First_Failure;

   -----------------
   -- Has_Failure --
   -----------------

   function Has_Failure (I : Failure_Iter) return Boolean is
   begin
      return Failure_Lists.Has_Element (Failure_Lists.Cursor (I));
   end Has_Failure;

   function Get_Failure
     (I : Failure_Iter) return Rxunit.Test_Results.Test_Failure is
   begin
      return Failure_Lists.Element (Failure_Lists.Cursor (I)).Failure;
   end Get_Failure;

   ----------
   -- Next --
   ----------

   procedure Next (I : in out Failure_Iter) is
      Id : Test_Id;
   begin
      if not Has_Failure (I) then
         return;
      end if;

      Id := Failure_Lists.Element (Failure_Lists.Cursor (I)).Id;
      Failure_Lists.Next (Failure_Lists.Cursor (I));

      while Failure_Lists.Has_Element (Failure_Lists.Cursor (I)) loop
         exit when Failure_Lists.Element (Failure_Lists.Cursor (I)).Id = Id;
         Failure_Lists.Next (Failure_Lists.Cursor (I));
      end loop;
   end Next;

   ------------------
   -- Current_Test --
   ------------------

   function Current_Test return Test_Access is
   begin
      return The_Current_Test;
   end Current_Test;

   ----------------------
   -- Set_Current_Test --
   ----------------------

   procedure Set_Current_Test (T : Test_Access) is
   begin
      The_Current_Test := T;
   end Set_Current_Test;

   -------------
   -- Copy_Id --
   -------------

   procedure Copy_Id (From : Test'Class; To : in out Test'Class) is
   begin
      To.Id := From.Id;
   end Copy_Id;

end Rxunit.Assertions;