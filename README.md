
# Project Title

A brief description of your project.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repository.git
   ```
2. Navigate to the project directory:
   ```bash
   cd your-repository
   ```
3. Install the required packages:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

To run the Streamlit app, use the following command:
```bash
streamlit run app.py
```

# Quadratic Equation Solver in R

An interactive R script that calculates the roots of any quadratic equation, including real and complex solutions.

## Description

This project provides a simple yet robust R script to solve quadratic equations of the form ax^2 + bx + c = 0. The script prompts the user to enter the coefficients a, b, and c, and then calculates the roots. It correctly handles cases for real and complex roots.

## Getting Started

### Prerequisites

*   R installed on your system. You can download it from the [R Project website](https://www.r-project.org/).

### Usage

1.  Open your terminal or command prompt.
2.  Navigate to the directory where you have the `main.R` script.
3.  Run the following command to execute the script with R:

    ```bash
    Rscript main.R
    ```

4.  The script will then prompt you to enter the values for `a`, `b`, and `c`.

Alternatively, you can use the provided shell script for a more streamlined experience:

```bash
./run.sh
```

## How It Works

The script calculates the discriminant (Δ = b^2 - 4ac) to determine the nature of the roots:
*   If Δ > 0, there are two distinct real roots.
*   If Δ = 0, there is exactly one real root.
*   If Δ < 0, there are two complex conjugate roots.

The script then calculates and displays the roots accordingly.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue to discuss any changes.

