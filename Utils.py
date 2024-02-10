import os

# Get the path to the directory of the current script
current_dir = os.path.dirname(os.path.abspath(__file__))

# Define the path to Scores.txt relative to the current directory
SCORES_FILE_NAME = os.path.join(current_dir, "Scores.txt")

# SCORES_FILE_NAME = "Scores.txt"
BAD_RETURN_CODE = -1


def screen_cleaner():
    """
    Clears the terminal screen.
    """
    os.system('cls' if os.name == 'nt' else 'clear')





