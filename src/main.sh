source ./config/config.sh
source ./src/usecase.sh

echo -e "${SUCCESS_COLOR_CODE}パスワードマネージャーへようこそ！${RESET_COLOR_CODE}"

main() {
  read -p "次の選択肢から入力してください(Add Password / Get Password / Exit):" user_input

  if [ "$user_input" = "Add Password" ]; then
    add_password; main; return
  fi

  if [ "$user_input" = "Get Password" ]; then
    get_password; main; return
  fi

  if [ "$user_input" = "Exit" ]; then
    echo -e "${SUCCESS_COLOR_CODE}Thank you!${RESET_COLOR_CODE}"; return
  fi

  echo -e "${ERROR_COLOR_CODE}入力が間違えています。Add Password / Get Password / Exit から入力してください。${RESET_COLOR_CODE}"
  main
}
