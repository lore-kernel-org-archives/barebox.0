Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKRoU-0004yO-4T
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 10:08:43 +0000
Date: Wed, 18 Apr 2012 12:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418100823.GR3852@pengutronix.de>
References: <20120414161509.GC30672@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414161509.GC30672@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] Omap xloader boot menu support and beagle env
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 06:15:09PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following patch seri add the support of a boot menu in the xloader
> 
> 	This will allow to choice where we boot from.
> 	As example if the nand boot is broken we can choose to boot from mmc.
> 	The autoboot is set to 1s as most of the time you expect to boot from the
> 	default boot.
> 
> 	As the xloader need to be really small to fit in the sram the boot menu allow
> 	to add user interaction.
> 
> 	This pull request also include 
> 	menu: enable the fancy color support only if HUSH is enabled

Doesn't the Beagle board have a button which lets you decide whether you
want to boot from NAND or SD card? Then I don't see a reason to make
the first stage loader interactive. Adding a delay in the first stage
is not acceptable aswell, at least not without letting us the choice
whether we want to have it or not.

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
