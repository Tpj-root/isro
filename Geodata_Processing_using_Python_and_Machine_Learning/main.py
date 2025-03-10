###########
# miniconda
##########
# cd $HOME/Desktop/RUN_TIME
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh
# Miniconda3 will now be installed into this location:
# $HOME/miniconda3
# alias miniconda_activate='source $HOME/miniconda3/bin/activate'
# alias miniconda_deactivate='conda deactivate'
# pip install pyqt5 bs4
# python3 main.py
# 
#
import sys
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QLineEdit, QTextEdit, QPushButton
from bs4 import BeautifulSoup

class GISExtractor(QWidget):
    def __init__(self):
        super().__init__()

        # Initialize the UI components
        self.initUI()

    def initUI(self):
        self.setWindowTitle("GIS Question Extractor")

        # Set layout
        layout = QVBoxLayout()

        # Input TextBox for HTML content
        self.html_input = QLineEdit(self)
        self.html_input.setPlaceholderText("Paste HTML content here")
        layout.addWidget(self.html_input)

        # Button to trigger extraction
        self.extract_button = QPushButton("Extract", self)
        self.extract_button.clicked.connect(self.extract_question)
        layout.addWidget(self.extract_button)
        
        # Button to clear input and output
        self.clear_button = QPushButton("Clear", self)
        self.clear_button.clicked.connect(self.clear_fields)
        layout.addWidget(self.clear_button)

        # Output area to display extracted question and options
        self.output_area = QTextEdit(self)
        self.output_area.setReadOnly(True)
        layout.addWidget(self.output_area)

        # Set the layout to the window
        self.setLayout(layout)

    def extract_question(self):
        html_content = self.html_input.text()

        # Use BeautifulSoup to parse the HTML
        soup = BeautifulSoup(html_content, 'html.parser')

        # Extract question text, handle the case where the element is not found
        question = soup.find('div', class_='qtext')
        if question:
            question_text = question.text.strip()
        else:
            question_text = "Question not found"

        # Extract options
        options = []
        for option in soup.find_all('div', class_='answer'):
            option_text = option.get_text(strip=True)
            options.append(option_text)

        # Format options with newlines after each option
        formatted_options = "\n".join([f"{chr(97 + i)}. {opt}" for i, opt in enumerate(options)])
        formatted_options = formatted_options.replace("a.", "\na.").replace("b.", "\nb.").replace("c.", "\nc.").replace("d.", "\nd.")

        # Display the extracted content in the output area
        output_text = f"Question: {question_text}\n\nOptions:{formatted_options}"
        self.output_area.setText(output_text)
        
        # Append extracted content to a text file
        with open("extracted_questions.txt", "a", encoding="utf-8") as file:
            file.write(output_text + "\n\n")

    def clear_fields(self):
        self.html_input.clear()
        self.output_area.clear()

# Run the PyQt application
app = QApplication(sys.argv)
window = GISExtractor()
window.show()
sys.exit(app.exec_())