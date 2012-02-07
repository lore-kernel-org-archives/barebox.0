Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutIv-0002Il-N9
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:14:26 +0000
Date: Tue, 7 Feb 2012 23:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207221213.GG3852@pengutronix.de>
References: <alpine.DEB.2.02.1202071540550.29923@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202071540550.29923@oneiric>
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
Subject: Re: for which OMAP platform is MCI_OMAP_HSMMC appropriate?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Feb 07, 2012 at 03:42:14PM -0500, Robert P. J. Day wrote:
> 
>   from drivers/mci/Kconfig:
> 
> config MCI_OMAP_HSMMC
>         bool "OMAP HSMMC"
>         depends on ARCH_OMAP4 || ARCH_OMAP3
>         help
>           Enable this entry to add support to read and write SD cards on a
>           OMAP4 based system.
> 
> i assume you can see the confusion. :-)

I added this driver for the OMAP4 and forgot to adjust this when I
realized that it works on OMAP3 aswell. U-boot uses this driver for
omap5 also, so we better just drop the '4' in OMAP4.

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
