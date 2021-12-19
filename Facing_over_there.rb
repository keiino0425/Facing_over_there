# じゃんけん用のメソッドを作成
def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  # 自分の手を入力、相手の手をランダムで取得
  player_hand = gets.to_i
  program_hand = rand(3)
  # じゃんけんの手を配列で作成し、入力させた数字で取得できるようにする
  jankens = ["グー", "チョキ", "パー"]
  
  # 入力した数値に応じて分岐する
  if (player_hand == 1) || (player_hand == 2)
    puts "ぽん！"
    puts "-------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "-------------"
  elsif player_hand == 3
    puts "あっちむいてほいを終わります"
    exit
  else
    puts "正確な値を入力してください"
    return true
  end

  # じゃんけんの勝敗によって分岐する
  # あいこのときはあいこ用のじゃんけんメソッドを使う
  if player_hand == program_hand
    puts "あいこで..."
    janken_aiko
  # 勝ったときは自分が指を指すメソッドを使う
  elsif(player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    win_face
  # 負けたときは自分が首を振るメソッドを使う
  else
    lose_face
  end
end

# あいこ用のじゃんけんメソッドを作成(ぽん -> しょ)
def janken_aiko
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  # 自分の手を入力、相手の手をランダムで取得
  player_hand = gets.to_i
  program_hand = rand(3)
  # じゃんけんの手を配列で作成し、入力させた数字で取得できるようにする
  jankens = ["グー", "チョキ", "パー"]
  
  # 入力した数値に応じて分岐する
  if (player_hand == 1) || (player_hand == 2)
    puts "しょ！"
    puts "-------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "-------------"
  elsif player_hand == 3
    puts "あっちむいてほいを終わります"
    exit
  else
    puts "正確な値を入力してください"
    return true
  end

  # じゃんけんの勝敗によって分岐する
  # あいこのときはあいこ用のじゃんけんメソッドを使う
  if player_hand == program_hand
    puts "あいこで..."
    janken_aiko
  # 勝ったときは自分が指を指すメソッドを使う
  elsif(player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    win_face
  # 負けたときは自分が首を振るメソッドを使う
  else
    lose_face
  end
end

# あっち向いてほいのメソッド(勝ったとき用)
def win_face
  puts "あっちむいて〜"
  puts "0(上)1(下)2(右)3(左)"
  
  # 自分の手を入力、相手の手をランダムで取得
  player_hand = gets.to_i
  program_hand = rand(4)
  
  # あっち向いてほいの向きを配列で作成し、入力させた数字で取得できるようにする
  hands = ["上", "下", "右", "左"]
  
  if (player_hand == 0) || (player_hand == 1) || (player_hand == 2) || (player_hand == 3)
    puts "ほい！"
    puts "-------------"
    puts "あなた:#{hands[player_hand]}"
    puts "相手:#{hands[program_hand]}"
    puts "-------------"
  else
    puts "正確な値を入力してください"
  end
  
  # あっち向いてほいの勝敗に応じて分岐する
  if player_hand == program_hand
    # 勝ったら終了する
    puts "あなたの勝ち!"
    return false
    # 負けたらもう一度じゃんけんする
  else
    return true
  end
  
end

# あっち向いてほいのメソッド(負けたとき用)
def lose_face
  puts "あっちむいて〜"
  puts "0(上)1(下)2(右)3(左)"
  
  # 自分の手を入力、相手の手をランダムで取得
  player_hand = gets.to_i
  program_hand = rand(4)
  
  # あっち向いてほいの向きを配列で作成し、入力させた数字で取得できるようにする
  hands = ["上", "下", "右", "左"]
  
  if (player_hand == 0) || (player_hand == 1) || (player_hand == 2) || (player_hand == 3)
    puts "ほい！"
    puts "-------------"
    puts "あなた:#{hands[player_hand]}"
    puts "相手:#{hands[program_hand]}"
    puts "-------------"
  else
    puts "正確な値を入力してください"
  end
  
  # あっち向いてほいの勝敗に応じて分岐する
  if player_hand == program_hand
    # 負けたら終了する
    puts "あなたの負け!"
    return false
    # 勝ったらもう一度じゃんけんする
  else
    return true
  end
  
end

# 次のじゃんけんをするかどうか決める
nextgame = true

while nextgame
  nextgame = janken
end