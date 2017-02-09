Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.40])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cbprd-000787-HA
 for barebox@lists.infradead.org; Thu, 09 Feb 2017 14:38:28 +0000
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
Date: Thu, 9 Feb 2017 15:37:41 +0100
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Using LVDS in a iMX6Q/D from Barebox
To: barebox@lists.infradead.org

Hello,
I would like to know if there is a clear way on using the lvds pins to 
drive a LVDS display in a custom made board, based on iMX6Q (in the near 
future the iMX6Dual).

Actually it boots using Barebox 2017.01 and if there is a HDMI display 
it uses without hassle.

My init scripts are loading a splash screen, then boot into linux:

> 	echo "Load splash.png from filesystem..."
> 	splash -f /dev/fb0 -b 0 $bootconfig_path/splash.png
> 	fb0.enable=1

But now, we are looking for a clear way to activate the LVDS signals in 
the LCD Controller when an eeprom chip is found in the I2C bus (more or 
less like EDID stuff) during bootup.

In my bootup script (or specific board initcall code [board.c]) if no 
EEPROM is found, then it will boot naturally with the HDMI port LCD 
Display (if any) or completely BLIND board if no lcd is present.

If it easy to activate the i2c bus and check for some chip addresses, I 
do not know on how to activate the lvds within code.

In my iMX28 based board, I was used the:

> 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
> 			   IORESOURCE_MEM, &board_fb_pdata);

system call to activate a specific videomode defined in the board_fb_data.

Which is the correct way to enable LVDS stuff? Maybe in the device tree 
stuff?

Best regards for any example or any help, hint or clue you will give me
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
