# メニューは仮置き
MenuItem.create!([
  { name: 'カルビ', category: 'yakiniku', price: 780, active: true },
  { name: 'ロース', category: 'yakiniku', price: 880, active: true },
  { name: 'ハラミ', category: 'yakiniku', price: 980, active: true },
  { name: 'タン塩', category: 'yakiniku', price: 1280, active: true },
  { name: 'キムチ', category: 'side_dish', price: 380, active: true },
  { name: 'ナムル', category: 'side_dish', price: 380, active: true },
  { name: 'ビール', category: 'drink', price: 580, active: true },
  { name: '烏龍茶', category: 'drink', price: 280, active: true }
])

puts "Created #{MenuItem.count} menu items"