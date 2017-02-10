Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc5kR-0008RN-Ej
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 07:36:06 +0000
Date: Fri, 10 Feb 2017 08:35:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Using LVDS in a iMX6Q/D from Barebox
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Hi Gianluca,

On Thu, Feb 09, 2017 at 03:37:41PM +0100, gianluca wrote:
> Hello,
> I would like to know if there is a clear way on using the lvds pins to drive
> a LVDS display in a custom made board, based on iMX6Q (in the near future
> the iMX6Dual).
> 
> Actually it boots using Barebox 2017.01 and if there is a HDMI display it
> uses without hassle.
> 
> My init scripts are loading a splash screen, then boot into linux:
> 
> > 	echo "Load splash.png from filesystem..."
> > 	splash -f /dev/fb0 -b 0 $bootconfig_path/splash.png
> > 	fb0.enable=1
> 
> But now, we are looking for a clear way to activate the LVDS signals in the
> LCD Controller when an eeprom chip is found in the I2C bus (more or less
> like EDID stuff) during bootup.
> 
> In my bootup script (or specific board initcall code [board.c]) if no EEPROM
> is found, then it will boot naturally with the HDMI port LCD Display (if
> any) or completely BLIND board if no lcd is present.
> 
> If it easy to activate the i2c bus and check for some chip addresses, I do
> not know on how to activate the lvds within code.

I think what you are looking for is of_device_enable_and_register() or
of_device_enable_and_register_by_name(). You can call it on either the
lvds device node or the hdmi device node, depending on whether you found
an EEPROM or not.

Sascha



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
