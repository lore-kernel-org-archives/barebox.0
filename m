Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nm13.bullet.mail.ukl.yahoo.com ([217.146.183.187])
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjBX-0000vr-3V
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:40:55 +0000
Message-ID: <4F7D68A1.9000800@yahoo.fr>
Date: Thu, 05 Apr 2012 11:40:49 +0200
From: Patrick <kpa_info@yahoo.fr>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: GPIO commands on OMAP4
To: barebox@lists.infradead.org

Dear mailing-list,

I am using a pcm049 phyCORE omap4430 module from Phytec with BareBox 
2011.09.0 patched with BSP from Phytec.

I would like to use the GPIO command to read a switch at startup. This 
chip is connected on ABE_MCBSP1_DX (gpio_116). I have edited the 
boards/pcm049/mux.c files to change the configuration of this GPIO as 
follow: {ABE_MCBSP1_DX, (DIS | IEN | M3)} instead of {ABE_MCBSP1_DX, 
(SAFE_MODE)}.

I then use the "gpio_get_value 116" command followed by "echo $?" to 
read the value. I always read a 0. On Linux I could read the right value 
depending of the position of the switch, so it's not an hardware problems.

I have tried with one of the two LEDs on the module (gpio_152) and I 
could change the LED state and read it back with gpio_get_value.

I do not understand what I am doing wrong. Any help will be appreciated.

Patrick



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
