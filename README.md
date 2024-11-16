# DevSecOps Projects Overview

## Introduction

This security document outlines a DevSecOps project implementation incorporating Static Application Security Testing(SAST), Software Composition Analysis(SCA) and Infrastructure as Code(IaC) scanning best practices on applications running within AWS infrastructure, utilizing GitHub Actions with workflows

## Project Goal

- Implement security measures throughout the software development lifecycle, creating a Secure Software Development Life Cycle(SDLC)
- Automate security testing to identify vulnerabilities early in the development process, shifting security left
- Integrate security into the CI/CD pipeline for continuous security monitoring
- Ensure compliance with security best practices and industry standards
- Enable PR blocking for Critical and High Vulnerabilities

## Component

1. **Infrastructure as Code (IaC) Scanning**

IaC scanning ensures that the infrastructure configuration code adheres to security best practices and compliance standards. It helps in identifying misconfigurations and security loopholes in cloud infrastructure.

Tools:

- Terraform Compliance: Assesses Terraform scripts against security policies defined using BDD-style language to ensure compliance
- Trivy: Provides automated IaC scanning to identify security misconfiguration across AWS, Azure and GCP cloud environment.

2. **Static Application Security Testing (SAST)**

SAST involves analyzing the application’s source code or binary code without executing it. This is done to identify security vulnerabilities, coding errors and other issues in the codebase.

Tools:
- CodeQL: Provides static code analysis to identify bugs, vulnerabilities and code smells in various programming languages.

3. **Software Composition Analysis (SCA)**

SCA focuses on identifying and managing open-source components and third-party libraries used in the application. It  helps in detecting known vulnerabilities in dependencies.

Tools:

- Trivy: Scans project dependencies and identifies vulnerabilities based on the National Vulnerability Database (NVD) and other resources.
1. Integration with CI/CD Pipeline: Incorporate SAST, SCA and IaC scanning tools into the CI/CD pipeline to automate security testing.
2. Pre-Commit and Post-Commit Hooks: Implement pre-commit hooks to trigger security scans before code is merged into the main branch. Also, execute post-commit hooks to perform additional security checks after code deployment.
3. Custom Policies: Define custom security policies based on the project requirements and industry standards to ensure comprehensive security coverage.
4. Automated Remediation: Configure automated remediation processes to fix identified vulnerabilities or misconfigurations whenever possible.
5. Reporting and Notifications: Generate detailed reports on security findings and send notifications to relevant stakeholders for prompt remediation.


## Conclusion

By integrating SAST, SCA, and IaC scanning practices into the DevSecOps pipeline, the project aims to enhance the security posture of the running application in AWS, reducing vulnerabilities and ensure compliance throughout the software development lifecycle.

```mermaid
graph TD
    A[GitHub Repos] --> B[CI/CD Pipeline Github Actions]
    B --> B1[SAST]
    B --> B2[SCA]
    B --> B3[IaC Scanning]
   

    B1 --> C1[Static Code Analysis]
    B2 --> C2[Dependency Check]
    B3 --> C3[Infrastructure Configuration]

    C1 --> D1[Code Vulnerabilities]
    C2 --> D2[Dependency Vulnerabilities]
    C3 --> D3[Infrastructure Misconfigurations]
    

    D1 --> E[Remediation Actions]
    D2 --> E[Remediation Actions]
    D3 --> E[Remediation Actions]
   

    E --> F[Reporting and Notifications]

    F --> G1[Development Team]
    F --> G2[Stakeholder]
   


