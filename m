Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lPX-0007Tf-89
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:19:42 +0000
Date: Mon, 23 Nov 2015 08:19:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123071917.GQ11966@pengutronix.de>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 00/19] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Fri, Nov 20, 2015 at 08:35:53PM +0100, Sebastian Hesselbarth wrote:
> This is v2 of the patch set that adds support for the NAND flash
> controller found on Marvell Armada 370/XP SoCs. The IP is the same
> as for PXA3xx SoCs, so we can also reuse the driver. However, this
> needs some rework of the existing driver.
> 
> Patch 1 imports some mtd OF helpers from Linux for ECC propery
> parsing.
> 
> Patch 2 clarifies Marvell Orion NAND Kconfig entry to distinguish
> it from Armada 370/XP NAND support in PXA3xx NAND.
> 
> Patches 3-6 free nand_mrvl_nfc from mach-pxa dependency by
> adding common clock support to mach-pxa and rework the driver
> to get rid of pxa_get_nandclk().
> 
> Patches 7-13 comprise cleanup and preparation for the
> addition of Armada 370/XP version of the NAND controller IP.
> 
> Patches 14-18 add features found on Armada XP NAND controller
> only.
> 
> Finally, Patch 19 adds optimized timings for the NAND flash
> found on Lenovo ix4-300d.
> 
> The series is based on today's next with Robert's patiently
> confirmed Tested-by on mach-pxa. I have tested this on IX4.

Applied, thanks, and thanks for testing Robert.

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
