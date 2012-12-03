Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSbb-0000we-M5
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:46:28 +0000
Date: Mon, 3 Dec 2012 10:46:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203094625.GJ10369@pengutronix.de>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212011607040.13954@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,


On Sat, Dec 01, 2012 at 04:18:08PM -0500, Robert P. J. Day wrote:
> 
>   a bit embarrassed but, all of a sudden, what used to work just fine
> in terms of building and booting barebox on my beagleboard xM (rev C)
> doesn't work anymore.
> 
>   not that long ago, i documented how easy this was here:
> 
> http://www.crashcourse.ca/wiki/index.php/BeagleBoard-xM#Barebox_for_the_xM
> 
> absolutely nothing out of the ordinary as i remember it.  so, when
> this worked, the boot looked like what you see here:
> 
> http://www.crashcourse.ca/wiki/index.php/BeagleBoard-xM#Booting_to_Barebox_on_your_xM_--_it_actually_works
> 
> now, the boot process produces:
> 
> barebox 2012.11.0-00305-g159109f #1 Sat Dec 1 15:51:00 EST 2012
> 
> 
> Board: Texas Instrument's Beagle
> NAND type unknown: ff,ff
> No NAND device found (-19)!
> gpmc_nand gpmc_nand0: probe failed: error 6
> omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0
> mci mci0: registered disk0
> malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
> stack space:  0x4020f000 -> 0x4020fc00 (size  3 kB)
> booting from MMC1
> 
> ... and hangs, suggesting that the MLO file is fine, but it's
> barebox.bin that simply fails.

I just rechecked, current master works fine for me on my beagle (no xM
though). Just a guess, have you used the barebox-flash-image link
instead of barebox.bin? Since the image is compressed now it becomes
important to use the link (which points to the compressed image).

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
