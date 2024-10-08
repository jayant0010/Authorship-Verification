python run.py -i "data/EN/" -o "output/EN/"
python -c "from evaluator import evalAV; evalAV('data/EN/truth.txt', 'output/EN/answers.txt')"
Read-Host -Prompt "Press Enter to exit"