# n8n Lead Generation Workflow

This workflow automates the process of finding website, app, and software companies in specific regions (India, Middle East, USA, Europe) and saving their contact information to Google Sheets.

## Workflow File
The workflow is defined in [LeadGen_Workflow.json](file:///C:/Users/ayaz/Desktop/Leadsgeneration/LeadGen_Workflow.json).

## Setup Instructions

### 1. Import to n8n
1. Open your n8n instance.
2. Go to **Workflows** > **Add Workflow**.
3. Click the three dots (top right) and select **Import from File**.
4. Select the `LeadGen_Workflow.json` file.

### 2. Configure Credentials
You will need to set up the following credentials in n8n for the workflow to function:

- **Google Maps API**:
    - Go to Google Cloud Console, enable "Places API", and get an API key.
    - In n8n, create a new `Google Maps API` credential and paste your key.
- **Hunter.io API**:
    - Sign up at Hunter.io and get your API key.
    - In n8n, create a new `Hunter.io API` credential.
- **Google Sheets OAuth2**:
    - Go to Google Cloud Console, enable "Google Sheets API", and set up OAuth credentials.
    - In n8n, create a new `Google Sheets OAuth2 API` credential.

### 3. Customize Search
In the **Search Parameters** node, you can modify the:
- `query`: e.g., "Software development companies", "Mobile app agencies".
- `location`: e.g., "India", "Dubai", "New York", "London".

### 4. Set Up Google Sheets
1. Create a new Google Sheet.
2. Name a sheet tab "Leads".
3. Add the following headers to the first row:
   `Company Name`, `Website`, `Phone`, `Email`, `Region`
4. Copy the Sheet ID from the URL and paste it into the **Google Sheets Store** node in n8n.

## Workflow nodes
- **Weekly Execution**: Triggers the search once a week (mon morning).
- **Google Maps Search**: Finds businesses based on your industry and location.
- **Hunter.io Enrichment**: Extracts professional emails from the business website.
- **Google Sheets Store**: Saves the gathered data for your sales team.

## Deployment to Render

This project is pre-configured to be deployed on Render with one click.

### 1. Push to GitHub
Ensure you have pushed all files (`LeadGen_Workflow.json`, `Dockerfile`, `render.yaml`) to your GitHub repository.

### 2. Deploy to Render
1. Go to the [Render Dashboard](https://dashboard.render.com).
2. Click **New +** > **Blueprint**.
3. Connect your GitHub repository.
4. Render will automatically detect the `render.yaml` file and set up n8n and a PostgreSQL database for you.
5. Click **Apply**.

### 3. Initialize n8n
- Once deployed, open your Render URL.
- Create your admin account.
- Go to **Workflows** > **Add Workflow** > **Import from File** and select `LeadGen_Workflow.json`.
- Follow the API configuration steps in the setup section above.
