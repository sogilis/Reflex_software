pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__blenders_tests.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__blenders_tests.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E075 : Short_Integer; pragma Import (Ada, E075, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__io_exceptions_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__strings__maps_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__strings__maps__constants_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "interfaces__c_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__object_reader_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__dwarf_lines_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links__initialize_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__tags_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "ada__streams_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "gnat_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "system__file_control_block_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "system__finalization_root_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "ada__finalization_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__file_io_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "system__storage_pools_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__finalization_masters_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__storage_pools__subpools_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__strings__unbounded_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__task_info_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "system__task_primitives__operations_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__real_time_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "ada__text_io_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "gnat__directory_operations_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "system__pool_global_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "system__regexp_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "gnat__command_line_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "devices_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "devices__blenders_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "xreqlib__ansi_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "xreqlib__asserts_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "xreqlib__containers_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "xreqlib__error_handling_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "xreqlib__format_html_template_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "xreqlib__io_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "xreqlib__report_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "xreqlib__standard_io_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "xreqlib__string_hash_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "xreqlib__tables_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "xreqlib__string_tables_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "xreqlib__util_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "xreqlib__variables_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "xreqlib__args_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "step_definitions_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "xreqlib__format_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "xreqlib__format__base_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "xreqlib__format__html_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "xreqlib__format__multi_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "xreqlib__format__text_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "xreqlib__cli_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "xreqlib__register_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "feature_test_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E259 := E259 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "xreqlib__format__text__finalize_spec");
      begin
         F1;
      end;
      E257 := E257 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "xreqlib__format__multi__finalize_spec");
      begin
         F2;
      end;
      E248 := E248 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "xreqlib__format__html__finalize_spec");
      begin
         F3;
      end;
      E255 := E255 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "xreqlib__format__base__finalize_spec");
      begin
         F4;
      end;
      E226 := E226 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "xreqlib__format__finalize_spec");
      begin
         F5;
      end;
      E195 := E195 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "xreqlib__args__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "xreqlib__variables__finalize_body");
      begin
         E197 := E197 - 1;
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "xreqlib__variables__finalize_spec");
      begin
         F8;
      end;
      E213 := E213 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "xreqlib__string_tables__finalize_spec");
      begin
         F9;
      end;
      E252 := E252 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "xreqlib__standard_io__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "xreqlib__io__finalize_spec");
      begin
         E253 := E253 - 1;
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "xreqlib__containers__finalize_spec");
      begin
         E211 := E211 - 1;
         F12;
      end;
      E169 := E169 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "devices__blenders__finalize_spec");
      begin
         F13;
      end;
      E167 := E167 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "devices__finalize_spec");
      begin
         F14;
      end;
      E241 := E241 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "system__regexp__finalize_spec");
      begin
         F15;
      end;
      E204 := E204 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "system__pool_global__finalize_spec");
      begin
         F16;
      end;
      E171 := E171 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "ada__text_io__finalize_spec");
      begin
         F17;
      end;
      E138 := E138 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "ada__strings__unbounded__finalize_spec");
      begin
         F18;
      end;
      E146 := E146 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__storage_pools__subpools__finalize_spec");
      begin
         F19;
      end;
      E148 := E148 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "system__finalization_masters__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "system__file_io__finalize_body");
      begin
         E175 := E175 - 1;
         F21;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E070 := E070 + 1;
      Ada.Strings'Elab_Spec;
      E055 := E055 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E057 := E057 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E061 := E061 + 1;
      Interfaces.C'Elab_Spec;
      E045 := E045 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Object_Reader'Elab_Spec;
      E081 := E081 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E050 := E050 + 1;
      System.Os_Lib'Elab_Body;
      E075 := E075 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E017 := E017 + 1;
      E015 := E015 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E130 := E130 + 1;
      Ada.Streams'Elab_Spec;
      E153 := E153 + 1;
      Gnat'Elab_Spec;
      E233 := E233 + 1;
      System.File_Control_Block'Elab_Spec;
      E176 := E176 + 1;
      System.Finalization_Root'Elab_Spec;
      E155 := E155 + 1;
      Ada.Finalization'Elab_Spec;
      E151 := E151 + 1;
      System.File_Io'Elab_Body;
      E175 := E175 + 1;
      System.Storage_Pools'Elab_Spec;
      E157 := E157 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E148 := E148 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E146 := E146 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E138 := E138 + 1;
      System.Task_Info'Elab_Spec;
      E116 := E116 + 1;
      System.Task_Primitives.Operations'Elab_Body;
      E108 := E108 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E099 := E099 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E171 := E171 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E237 := E237 + 1;
      System.Pool_Global'Elab_Spec;
      E204 := E204 + 1;
      System.Regexp'Elab_Spec;
      E241 := E241 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E235 := E235 + 1;
      Devices'Elab_Spec;
      Devices'Elab_Body;
      E167 := E167 + 1;
      Devices.Blenders'Elab_Spec;
      Devices.Blenders'Elab_Body;
      E169 := E169 + 1;
      E244 := E244 + 1;
      Xreqlib.Asserts'Elab_Spec;
      E187 := E187 + 1;
      Xreqlib.Containers'Elab_Spec;
      E211 := E211 + 1;
      E246 := E246 + 1;
      E250 := E250 + 1;
      Xreqlib.Io'Elab_Spec;
      E253 := E253 + 1;
      E230 := E230 + 1;
      Xreqlib.Standard_Io'Elab_Spec;
      Xreqlib.Standard_Io'Elab_Body;
      E252 := E252 + 1;
      E210 := E210 + 1;
      E219 := E219 + 1;
      Xreqlib.String_Tables'Elab_Spec;
      Xreqlib.String_Tables'Elab_Body;
      E213 := E213 + 1;
      Xreqlib.Util'Elab_Spec;
      E261 := E261 + 1;
      Xreqlib.Variables'Elab_Spec;
      Xreqlib.Variables'Elab_Body;
      E197 := E197 + 1;
      Xreqlib.Args'Elab_Spec;
      Xreqlib.Args'Elab_Body;
      E195 := E195 + 1;
      step_definitions'elab_body;
      E165 := E165 + 1;
      Xreqlib.Format'Elab_Spec;
      Xreqlib.Format'Elab_Body;
      E226 := E226 + 1;
      Xreqlib.Format.Base'Elab_Spec;
      Xreqlib.Format.Base'Elab_Body;
      E255 := E255 + 1;
      Xreqlib.Format.Html'Elab_Spec;
      Xreqlib.Format.Html'Elab_Body;
      E248 := E248 + 1;
      Xreqlib.Format.Multi'Elab_Spec;
      Xreqlib.Format.Multi'Elab_Body;
      E257 := E257 + 1;
      Xreqlib.Format.Text'Elab_Spec;
      Xreqlib.Format.Text'Elab_Body;
      E259 := E259 + 1;
      E232 := E232 + 1;
      E224 := E224 + 1;
      feature_test'elab_body;
      E136 := E136 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_blenders_tests");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/devices.o
   --   /home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/devices-blenders.o
   --   /home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/step_definitions.o
   --   /home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/feature_test.o
   --   /home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/blenders_tests.o
   --   -L/home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/
   --   -L/home/sogilis/sb/reflex_software/tank/src/devices/tests_xreq/test_blenders/obj/
   --   -L/home/sogilis/sb/reflex_software/lib/XReq-Enhanced/build/lib/development/native/
   --   -L/home/sogilis/opt/GNAT/2019/lib/gcc/x86_64-pc-linux-gnu/8.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -lrt
   --   -lpthread
   --   -ldl
--  END Object file/option list   

end ada_main;