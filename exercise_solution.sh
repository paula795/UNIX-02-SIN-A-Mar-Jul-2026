#!/bin/bash
# Stores the first command-line argument in the variable NAME. This value represents the name provided by the user.
NAME="${1}"
# Stores the second command-line argument in the variable DOMAIN. This value represents the target domain to be tested.
DOMAIN="${2}"
# Creates a variable containing the name of the CSV file where the results will be stored.
OUTPUT_FILE="results.csv"

# Check if the two expected arguments are set
# Checks whether either NAME or DOMAIN is empty. The -z operator returns true if a string has zero length.
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
# Displays an error message informing the user that two arguments are required.
  echo "You must provide two arguments to this script."
  # Shows an example of the correct way to execute the script. ${0} represents the script name.
  echo "Example: ${0} mysite nostarch.com"
  # Terminates the script and returns exit code 1, indicating an error.
  exit 1
  # Ends the conditional validation block.
fi

# Write CSV header to the file
# Creates the CSV file and writes the header row containing the column names. The > operator overwrites any existing content.
echo "status,name,domain,timestamp" > ${OUTPUT_FILE}
# Sends one ICMP packet to the specified domain. The output is redirected to /dev/null so that no information is displayed on the screen. If the ping succeeds, the condition evaluates as true.
if ping -c 1 "${DOMAIN}" &> /dev/null; then
# Writes a CSV record indicating that the ping was successful. It includes the provided name, domain, and the current date and time.
  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # Executes the following block if the ping command fails.
else
# Writes a CSV record indicating that the ping failed, including the same information fields.
  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # Ends the conditional statement that evaluates the ping result.
fi

sleep 100