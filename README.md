# Authorship Verification Project

This repository contains the implementation of an **Authorship Verification** system.

## Overview
Authorship verification is a branch of forensic analysis that aims to determine whether a given document is written by a specific author. In this project, we propose an approach using the **Distance-L1 Algorithm** to address this problem.

### Key Features
- The system uses a simple distance measure with imposters to verify whether the given text is authored by the proposed author.
- The system calculates the **L1-norm** to measure the probability that an unknown text matches the writing style of a known author profile.
- The project works on an unsupervised learning model and is adaptable to different languages and datasets without changes in the code.

## Project Structure

- **src/**: Contains the source code for the project.
- **data/**: Contains the English and Spanish datasets used for verification.
- **results/**: Contains the output files with predictions.

### Datasets
- **English**: Consists of 500 files. Each file contains two text files:
  - `known.txt`: Document whose author is known.
  - `unknown.txt`: Document whose authorship needs to be verified.
  
  Additionally, the file `truth.txt` contains information about the correct author of the `unknown.txt` file.
  
- **Spanish**: Similar structure as the English dataset, but with an increased number of known documents for improved accuracy.

## Methodology
1. **Distance-L1 Algorithm**: 
   - Calculates the probability of a query text (`Q`) and an author profile (`A`) using occurrence frequency and length in tokens.
   - Uses impostors from other documents to compare the distance between texts.
   - Returns a score between 0.0 and 1.0, indicating the probability that the texts were written by the same author.

2. **Evaluation**: 
   - The **c@1 measure** is used to evaluate the system's accuracy, considering both correct answers and unsolved texts.
   - For the English dataset, the system achieved an accuracy of **72.72%**.

## Requirements
- Python 3.x
- Required libraries: `numpy`, `scikit-learn`

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/authorship-verification.git
   cd authorship-verification
   ```

2. Run the verification for the English dataset:
   ```bash
   bash run_en.sh
   ```

   This will generate the output file `answers.txt` with the predictions.

3. To evaluate accuracy, compare the generated `answers.txt` with the `truth.txt` file in the dataset.

## Future Scope
- Improve accuracy by incorporating **smoothing techniques** and experimenting with different **distance measures**.
- Apply feature selection strategies to improve efficiency and accuracy, such as reducing the number of terms and ignoring frequently occurring names in the text.
- Extend the system to handle more complex languages and varying text genres.

## References
1. Moshe Koppel, Jonathan Schler, "Authorship verification as a one-class classifier problem," 2004.
2. Stefano Ferilli, Floriana Esposito, Domenico Redavid, "Unsupervised author identification and characterization," 2016.
3. Chen Qian, Rao Zhang, Tianchang He, "Deep Learning based Authorship Identification," 2020.
