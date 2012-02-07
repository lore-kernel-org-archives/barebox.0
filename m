Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutBf-0001tA-4e
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:06:56 +0000
Date: Tue, 7 Feb 2012 23:06:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207220648.GF3852@pengutronix.de>
References: <alpine.DEB.2.02.1202071525420.28853@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202071525420.28853@oneiric>
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
Subject: Re: why would beagle and panda boards not have CONFIG_MCI_STARTUP set?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Feb 07, 2012 at 03:33:32PM -0500, Robert P. J. Day wrote:
> 
>   slowly working my way thru how to create an appropriate environment
> for my beagle xM and when i boot with the default beagle-configured
> MLO and barebox.bin, there are no disk devices defined as described
> here:
> 
> http://wiki.barebox.org/doku.php?id=user:mmc-sd
> 
>   that's obviously a problem since the xM and pandaboards have no
> NAND and must boot off of SD card.
> 
>   now, as i understand it, the MLO loader needs access to the MMC/SD
> card just to read barebox.bin, so i'm not at all surprised to see, in
> omap3530_beagle_xload_defconfig, the settings:
> 
> CONFIG_MCI=y
> CONFIG_MCI_STARTUP=y
> # CONFIG_MCI_WRITE is not set
> CONFIG_MCI_OMAP_HSMMC=y
> 
>   but in omap3530_beagle_defconfig, you have only:
> 
> CONFIG_MCI=y
> CONFIG_MCI_OMAP_HSMMC=y
> 
>   if i read it correctly, you can add the line:
> 
> mci0.probe=1
> 
> to your environment.  but with boards like beagles and pandas, why
> would you *not* configure with:
> 
> CONFIG_MCI_STARTUP=y
> 
> it would seem to make no sense to not have that.  wouldn't that config
> setting be a no-brainer on any board that boots *only* off of SD?
> 

Yes, this option should be set in the defconfig for such a case. Not
probing SD cards is only useful when the normal usecase is to boot from
nand where probing of SD cards would delay the boot time.

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
