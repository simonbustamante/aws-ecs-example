### AWS ECS Fargate Cluster and Service Management Scripts

This collection of Bash scripts is used to manage AWS ECS resources, specifically for a Fargate cluster and services. It includes creating a cluster, registering a task definition, listing task definitions, creating services, listing services, describing services, managing tasks, and deleting services.

#### Scripts Overview

1. **Create Cluster Script**
   - Sets up an ECS cluster named 'fargate-cluster-test'.
   - Utilizes the AWS Administrator Access profile.

2. **Register Task Definition Script**
   - Registers a task definition from a JSON file (`task-definition.json`).
   - Requires the same AWS Administrator Access profile.

3. **List Task Definitions Script**
   - Lists all task definitions available in the specified AWS profile.

4. **Create Service Script**
   - Creates a service within the Fargate cluster.
   - Configures network settings, including the subnet and security group.
   - Allows enabling of public IP assignment and execute command feature.
   - Specifies the desired count, launch type, and task definition version.

5. **List Services Script**
   - Lists all services within the 'fargate-cluster-test' cluster.

6. **Describe Services Script**
   - Provides detailed information about a specific service within the cluster.

7. **Task Management Script**
   - Lists tasks, describes a specific task, and manages network interfaces.
   - Executes commands within a specified task and container.

8. **Delete Service Script**
   - Deletes a specified service from the cluster forcefully.

#### JSON Configuration for Task Definition

- Defines a task with the Fargate network mode.
- Specifies task and execution role ARNs.
- Configures a container named 'fargate-app' to serve a simple HTML page using Apache HTTPD.
- Sets CPU and memory allocations for the task.

### Usage Instructions

1. **Prerequisites**
   - AWS CLI installed and configured.
   - `jq` tool for parsing JSON output (used in some scripts).

2. **Running Scripts**
   - Grant execute permission to the scripts: `chmod +x <script_name>.sh`.
   - Run the scripts from the command line: `./<script_name>.sh`.

3. **Customization**
   - Replace the `PROFILE`, `CLUSTER_NAME`, `SERVICE_NAME`, and other parameters as needed for your AWS environment.

### Notes

- Ensure your AWS account has the necessary permissions for these operations.
- Modify and use these scripts according to your specific ECS configuration and requirements.

