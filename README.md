## Project: Give Your Application Auto-Deploy Superpowers
[![CircleCI](https://circleci.com/gh/omelnik/cdond-c3-project/tree/master.svg?style=svg)](https://circleci.com/gh/omelnik/cdond-c3-project/tree/master)

### Project Submission
| Description | Screenshot |
| --- | ----------- |
| Job failed because of compile errors | ![Screenshot](screenshots/SCREENSHOT01.png) |
| Job failed because of unit tests | ![Screenshot](screenshots/SCREENSHOT02-01.png) ![Screenshot](screenshots/SCREENSHOT02-02.png) |
| Job that failed because of vulnerable packages | ![Screenshot](screenshots/SCREENSHOT03.png) |
| An alert from one of your failed builds | ![Screenshot](screenshots/SCREENSHOT04.png) |
| Appropriate job failure for infrastructure creation | ![Screenshot](screenshots/SCREENSHOT05.png) |
| Appropriate job failure for the smoke test job | ![Screenshot](screenshots/SCREENSHOT06.png) |
| Successful rollback after a failed smoke test | ![Screenshot](screenshots/SCREENSHOT07.png) |
| Successful promotion job | ![Screenshot](screenshots/SCREENSHOT08.png) |
| Successful cleanup job | ![Screenshot](screenshots/SCREENSHOT09.png) |
| Only deploy on pushed to `master` branch | ![Screenshot](screenshots/SCREENSHOT10.png) |
| Provide a screenshot of a graph of your EC2 instance including available memory, available disk space, and CPU usage | ![Screenshot](screenshots/SCREENSHOT11.png) |
| Provide a screenshot of an alert that was sent by Prometheus | ![Screenshot](screenshots/SCREENSHOT12.png) |

### Built With
- [Circle CI](www.circleci.com) - Cloud-based CI/CD service
- [Amazon AWS](https://aws.amazon.com/) - Cloud services
- [AWS CLI](https://aws.amazon.com/cli/) - Command-line tool for AWS
- [CloudFormation](https://aws.amazon.com/cloudformation/) - Infrastrcuture as code
- [Ansible](https://www.ansible.com/) - Configuration management tool
- [Prometheus](https://prometheus.io/) - Monitoring tool

### Useful Links
- [How to setup Prometheus.](https://codewizardly.com/prometheus-on-aws-ec2-part1/)