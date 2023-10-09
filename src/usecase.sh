add_password() {
  read -p "サービス名を入力してください: " service_name
  read -p "ユーザー名を入力してください: " user_name
  read -p "パスワードを入力してください: " password
  echo "$service_name:$user_name:$password" >> "$FILE_PATH"
  echo -e "${SUCCESS_COLOR_CODE}パスワードの追加は成功しました。${RESET_COLOR_CODE}"
}

get_password() {
  read -p "サービス名を入力してください [未入力の場合は全検索]: " user_input_service_name
  file_search_results=$(grep -i "^$user_input_service_name" "$FILE_PATH")

  if [ -z "$file_search_results" ]; then
    echo -e "${ERROR_COLOR_CODE}"そのサービスは登録されていません."${RESET_COLOR_CODE}"
  else
    while IFS= read -r line; do
      IFS=":" read -r -a data <<< "$line"
      echo "サービス名：${data[0]}"
      echo "ユーザー名：${data[1]}"
      echo "パスワード：${data[2]}"
      echo "----------------------------"
    done <<< "$file_search_results"
  fi
}
