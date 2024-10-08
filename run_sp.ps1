python run.py -i "data/SP/" -o "output/SP/"
python -c "from evaluator import evalAV; evalAV('data/SP/truth.txt', 'output/SP/answers.txt')"
Read-Host -Prompt "Press Enter to exit"