# LEDboard

Screen shows "texts" in a "text color" with the background in a "color" that a user set in the setting screen.

- Learning Points:
1. UINavigationViewController: There are 4 ways of switching screen(window?)
  - Switching the views by getting another view on the view of a view controller.
  - Switching by calling a view controller from another view controller
  - Switching by using Navigation Controller
  - Switching by using Segueway, the Object for screen switching
  
2. ViewController Life Cycle
  - Life Cycle has 4 stages: Appeared > Disappearing > Disappeared > Appearing
  - 4 methods: viewWillDisappear(), viewDidDisappear(), viewWillAppear(), viewDidAppear()

3. Transferring data from a screen to another screen
  - Data is handed over by overriding "prepare" method from the senderViewController and received by "delegate" in the receiverViewController
  - A protocol that defines the method to delegate the data must exist in the receiving view controller
  - The delegate must be binded with "weak" keyword
  
4. Asset Catalogue 
  - The resources such as images, sound effects, background music, etc. can be added in the Asset Catalogue to use. 
  - When adding image resources, it is better to put same image with different sizes so that the application can encounter resolution differences of the various apple devices(iphone, ipad, mac, etc.)
  
 
