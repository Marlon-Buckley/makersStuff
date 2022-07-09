feature 'Attacking' do
  scenario 'Attack player 2' do
    sign_in_and_play()
    click_link 'Attack'
    expect(page).to have_content "Charlotte attacked Mittens"
  end

  scenario 'reduce player 2 HP by 10 HP' do
    sign_in_and_play()
    click_link 'Attack'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
    save_and_open_page
  end
end

