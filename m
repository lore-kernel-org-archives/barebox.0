Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZefXx-0002yB-Pz
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 08:37:02 +0000
Date: Wed, 23 Sep 2015 10:36:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150923083639.GS7858@pengutronix.de>
References: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH 0/4] New denali nand driver (ported from kernel)
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 21, 2015 at 04:04:40PM +0200, Enrico Jorns wrote:
> This series adds the denali NAND driver that is used, for example,
> on socfpga platforms.
> 
> The driver is adapted from the mainline kernel driver with some bugfix patches
> from Altera.
> 
> Enrico Jorns (4):
>   mtd nand: added 'bits_per_cell' property
>   mtd nand_denali: Add denali nand driver
>   mtd denali: pass col argument to READID operation
>   socfpga dts: set have-hw-ecc-fixup for nand

Applied all but the last one which does not apply. We currently do not
have the nand node you add a property to.

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
