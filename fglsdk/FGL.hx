package fglsdk;

/**
 * FGL externs for Haxe
 */
class FGL
{
	/**
	 * Usefull to prevent click
	 */
	public static function isBlockingOverlay():Bool
	{
		#if (js && !noFGL)
		return untyped fgl.isBlockingOverlay(); 
		#else
		return false;
		#end
	}
	
	/**
	 * Displays an advert. The current version of the FGL SDK only
	 * supports full-screen takeover or interstitial adverts, therefore
	 * there are no options.
	 * You should call this method whenever you want to display an
	 * advert. Some good times to do this are on the main menu and
	 * in between levels.
	 */
	public static function showAd() 
	{
		#if (js && !noFGL)
		untyped fgl.showAd(); 
		#end
	}
	
	/**
	 * Displays the "More Games" cross promotional system. This
	 * system is a full screen page which contains links to cross
	 * promote other games in our network.
	 * By implementing the More Games system, you will benefit by
	 * receiving free traffic and promotion from other games in our
	 * network, which is vital for growth.
	 */
	public static function showMoreGames() 
	{
		#if (js && !noFGL)
		untyped fgl.showMoreGames(); 
		#end
	}
	
	/**
	 * Call this method to initiate a payment wall requesting for the
	 * game to be unlocked. This function takes advantage of In App
	 * Purchase APIs to offer the player a way to pay money for your
	 * game to be converted from a free game to a premium game.
	 * Calling this function will eventually result in either a call to the
	 * onSuccess or a call to the onFailure functions that you pass in.
	 * You should not implement any kind of messaging or alerts to the
	 * user as the FGL SDK will do that.
	 */
	public static function initiateUnlockFunction( onSuccess:Void->Void, onFailure:Void->Void ) 
	{
		#if (js && !noFGL)
		untyped fgl.inApp.initiateUnlockFunction( onSuccess, onFailure ); 
		#end
	}
	
	/**
	 * Returns true if premium content is available to the player.
	 * This function should be checked frequently because it may
	 * change without any form of notification. Whenever there's a
	 * chance to display premium content to the player, check to see if
	 * the game is unlocked.
	 * 
	 * A good example of this would be when the player reaches the
	 * "Level select" screen. If you are selling extra levels as premium
	 * content, you should check at this point to see if the game is
	 * unlocked and allow the user to select and use the content if the
	 * above function returns true.
	 */
	public static function isPremium():Bool
	{
		#if (js && !noFGL)
		return untyped fgl.isPremium(); 
		#else
		return false;
		#end
	}
	
	/**
	 * This property will be set to true if cross promotion is available
	 * on the current platform.
	 * You must check this property before displaying or rendering
	 * your More Games button.
	 */
	public static function crossPromotionEnabled():Bool
	{
		#if (js && !noFGL)
		return untyped fgl.crossPromotionEnabled; 
		#else
		return false;
		#end
	}
	
	/**
	 * This property will be set to trueif the current platform has in
	 * app purchases enabled.
	 * You must check this property before displaying or rendering
	 * your Unlock or Upgrade button.
	 */
	public static function unlockEnabled():Bool
	{
		#if (js && !noFGL)
		return untyped fgl.unlockEnabled;
		#else
		return false;
		#end
	}
	
	/**
	 * Is set to true if you should be displaying publisher branding on
	 * your menu.
	 */
	public static function brandingEnabled():Bool
	{
		#if (js && !noFGL)
		return untyped fgl.brandingEnabled;
		#else
		return false;
		#end
	}
	
	/**
	 * When branding is enabled, this will return a URI or Data URI for
	 * the image that needs to be displayed. The string returned from
	 * this function should be used as the srcattribute for a DOM
	 * <img>tag or a HTML5 Imageobject.
	 */
	public static function getBrandingLogo():String 
	{
		#if (js && !noFGL)
		return untyped fgl.getBrandingLogo();
		#else
		return "";
		#end
	}
	
	/**
	 * This function should be called when the branding logo is tapped
	 * or clicked by the player.
	 */
	public static function handleBrandingClick() 
	{
		#if (js && !noFGL)
		untyped fgl.handleBrandingClick(); 
		#end
	}
	
	/**
	 * Is set to true if the player has previously been granted the
	 * named achievement.
	 */
	public static function hasAchievement( name:String ):Bool
	{
		#if (js && !noFGL)
		return untyped fgl.hasAchievement( name ); 
		#else
		return false;
		#end
	}
	
	/**
	 * Call this function to grant the named achievement to the player.
	 */
	public static function grantAchievement( name:String ) 
	{
		#if (js && !noFGL)
		untyped fgl.grantAchievement( name ); 
		#end
	}
	
	/**
	 * Submit the score in response to a user pressing a submit button
	 */
	public static function submitScore( score:Int, leaderboardID:String = "" ) 
	{
		#if (js && !noFGL)
		untyped fgl.submitScore( score, leaderboardID ); 
		#end
	}
	
	/**
	 * Show the scoreboard UI. This happens automatically after submitScore
	 */
	public static function displayScoreboard( leaderboardID:String = "" ) 
	{
		#if (js && !noFGL)
		untyped fgl.displayScoreboard( leaderboardID );
		#end
	}
}