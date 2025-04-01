# Local environment setup

### Step 1: Clone the Git Repository

Assuming you have Git installed on your system, the first step is to clone the Git repository of the project you wish to work on. Open your terminal or command prompt, navigate to the desired directory, and use the following command:

```
git clone <repository_url>
```

Replace `<repository_url>` with the URL of the Git repository you want to clone. This will create a local copy of the project on your machine.

### Step 2: Start the Development Environment

Once the repository is cloned and Lando is installed, navigate to the root directory of the cloned Git repository using the terminal or command prompt. Lando uses a configuration file named `.lando.yml`, which defines the services and settings for your local development environment.

With the `.lando.yml` file already present in the repository, you are ready to start the local development environment. In the terminal, run the following command from the root directory of the project:

```
lando start
```

Lando will read the configuration file, download and configure the necessary services, and spin up your local development environment. This process might take a few minutes, especially if it's the first time you're running Lando for the project.

### Step 3: Import the Database

After Lando successfully starts the development environment, the next step is to import the project's database. You will receive a database dump file (e.g., `database.sql`) from a contact person (or download yourself according to your level of access).

To import the database, execute the following command in the terminal:

```
lando db-import <path_to_database_dump>
```

Replace `<path_to_database_dump>` with the actual path to the database dump file. Lando will import the database into the appropriate database service within your development environment.

## Step 4: Access the Local Development Environment

Congratulations! Your local development environment is now set up and ready for use. To access the project in your web browser, simply run:

```
lando info
```

This command will display a list of available services along with their corresponding URLs. Copy the URL of the service hosting your web application and paste it into your browser. You should now see the project running in your local environment.
