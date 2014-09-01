Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONOk-0000Lv-6K
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 08:55:38 +0000
Date: Mon, 1 Sep 2014 10:55:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901085509.GH5352@pengutronix.de>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 0/5] mvebu: Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Ezequiel,

I'm fine with this series, so with the comments from Sebastian fixed I
could apply it.

Sascha

On Sat, Aug 23, 2014 at 07:53:35PM -0300, Ezequiel Garcia wrote:
> Here goes a new round of the support for the network controller present
> on Marvell Armada 370/XP SoC.
> 
> The first patch enables the peripherals in a PUP register, which is required
> on RGMII ports.
> 
> The second and third patches add support for Marvell's 88E1543 and 88E1545 PHY
> chips.
> 
> The fourth patch adds the mvneta driver. Most of the configuration part is
> based on Linux's mvneta driver, while some of code organization is based
> on Barebox's orion-gbe driver.
> 
> The last patch adds network support in the defconfigs.
> 
> This has been tested on Armada XP GP, Armada XP Openblocks AX3 and
> Armada 370 Mirabox boards. Linux zImage loads and boots fine, and the
> network interfaces work from the kernel.
> 
> Ezequiel Garcia (5):
>   ARM: mvebu: Enable PUP register
>   net: phy: Support Marvell 88EE1545 PHY
>   net: phy: Support Marvell 88EE1543 PHY
>   net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller
>   configs: Add network options to Armada 370/XP boards
> 
>  arch/arm/configs/globalscale_mirabox_defconfig     |   4 +
>  arch/arm/configs/marvell_armada_xp_gp_defconfig    |   4 +
>  arch/arm/configs/plathome_openblocks_ax3_defconfig |   4 +
>  arch/arm/mach-mvebu/armada-370-xp.c                |   5 +
>  .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   7 +
>  drivers/net/Kconfig                                |   6 +
>  drivers/net/Makefile                               |   1 +
>  drivers/net/mvneta.c                               | 758 +++++++++++++++++++++
>  drivers/net/phy/marvell.c                          |  69 ++
>  9 files changed, 858 insertions(+)
>  create mode 100644 drivers/net/mvneta.c
> 
> -- 
> 2.0.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
