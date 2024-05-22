*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Library        String
Documentation    This is the documentation of the test cases suite.

*** Variables ***
${csv_file_path}         ${CURDIR}${/}myData.csv

*** Test Cases ***
Test - Read from CSV
    ${csv}=    Get File    ${csv_file_path}
    @{read}=    Create List    ${csv}
    @{lines}=    Split To Lines    @{read}    0

    FOR    ${line_csv}    IN    @{lines}
        Log    \n${line_csv}
    END
