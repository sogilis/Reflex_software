Feature: Mixing test

Background:
Given Mixing app is initialized

  Scenario: Mixing
    Given State is Init_State

    When Start_Mixing is TRUE 
    And Blender_Started is FALSE 
    And Mixing_Duration is 2

    Then New_state is Mix_State
    And Start_Blender is FALSE 
    And Start_Resistance is FALSE
    And End_Mixing is FALSE

    Given State is It_Mixes_State

    When Start_Mixing is TRUE 
    And Blender_Started is TRUE 
    And Mixing_Duration is 2
 
    Then New_state is It_Mixes_State
    And Start_Blender is TRUE 
    And Start_Resistance is TRUE
    And End_Mixing is FALSE

    Given State is It_Mixes_State

    When Start_Mixing is TRUE 
    And Blender_Started is FALSE 
    And Mixing_Duration is 3

    Then New_state is End_Mixing_State
    And Start_Blender is FALSE 
    And Start_Resistance is FALSE
    And End_Mixing is TRUE

    Given State is It_Mixes_State

    When Start_Mixing is TRUE 
    And Blender_Started is FALSE 
    And Mixing_Duration is 2

    Then New_state is End_Mixing_State
    And Start_Blender is FALSE 
    And Start_Resistance is FALSE
    And End_Mixing is TRUE

    Given State is End_Mixing_State

    When Start_Mixing is TRUE 
    And Blender_Started is FALSE 
    And Mixing_Duration is 2

    Then New_state is End_Mixing_State
    And Start_Blender is FALSE 
    And Start_Resistance is FALSE
    And End_Mixing is TRUE



