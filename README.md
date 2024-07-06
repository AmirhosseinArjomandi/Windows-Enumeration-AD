## Introduction
This project aims to provide comprehensive tools and scripts for enumerating Active Directory environments on Windows systems. It helps security professionals and system administrators to gather valuable information and perform security assessments.

## Features
- Enumerates users, groups, and computers.
- Retrieves Group Policy Objects (GPOs).
- Extracts information about organizational units (OUs).
- Identifies domain trusts and permissions.
- Supports output in various formats (JSON, CSV).

## Usage
To use the scripts in PowerShell ISE, follow these steps:

Open PowerShell ISE.
Navigate to the directory where you cloned the repository.
Load the script you want to run by clicking on "File" > "Open" and selecting the script.
Run the script by pressing F5 or clicking on the "Run Script" button.
For example, to enumerate Active Directory information, open and run the enum_ad.ps1 script:

# Open PowerShell ISE and navigate to the script's directory
cd C:\path\to\Windows-Enumeration-AD

# Load and run the script in PowerShell ISE
.\enum_ad.ps1 -OutputFormat json
