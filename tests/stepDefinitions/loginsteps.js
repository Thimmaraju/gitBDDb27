const {Given, When, Then} = require('@cucumber/cucumber')
// import expect for assertion
const { expect } = require("@playwright/test")





Given("User launch the application", async function(){

   await page.goto("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

})


When("User Enter username as {string} and password as {string}", async function (username, password) {
   
    await page.locator('input[name="username"]').fill(username)
    await page.locator('input[name="password"]').fill(password)

})




When('User clicks on login button', async function () {
   
   await page.locator("button[type='submit']").click()
    
 })

 Then('User should be navigated to Dashboard', async function () {
   
    await expect(page).toHaveURL('https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index')
  
 })


 Then('User should get login error message', async function () {
   
    await expect(page.getByText('Invalid credentials')).toBeVisible()
 })


 
