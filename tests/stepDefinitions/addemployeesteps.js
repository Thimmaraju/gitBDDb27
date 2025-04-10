const {Given, When, Then} = require('@cucumber/cucumber')
// import expect for assertion
const { expect } = require("@playwright/test")

When('user clicks on PIM', async function () {
  
   await  page.locator('a[href="/web/index.php/pim/viewPimModule"]').click()
});

When('user clciks on add employee submenu', async function () {
    
    await page.locator("//a[text()='Add Employee']").click()
  });


  When('User enter firstname {string} and lastname {string}', async function (firstname, lastname) {
    
      await page.locator('input[name="firstName"]').fill(firstname)

      await page.locator('input[name="lastName"]').fill(lastname)
  });


  When('user clicks on save button', async function () {
    
    await page.locator('button[type="submit"]').click()
  });


  Then('User should see that employee is created', async function () {
    
    await expect(page.locator("//h6[text()='Personal Details']")).toBeVisible()
  });

  

    