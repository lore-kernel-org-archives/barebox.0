Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONy8-00015h-Vf
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:32:13 +0000
Date: Mon, 1 Sep 2014 11:31:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901093144.GM5352@pengutronix.de>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 0/2] mvebu: Openblocks A6 board support
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Sat, Aug 23, 2014 at 05:19:21PM -0300, Ezequiel Garcia wrote:
> Hello everyone,
> 
> This two-piece patchset adds support for Plat'home's Openblocks A6 board [1].
> To make it a little more interesting, NAND support (ported from Linux) is
> included.
> 
> Let's hope we can see USB and SATA soon!
> 
> [1] http://openblocks.plathome.com/products/a6/
> 
> Ezequiel Garcia (2):
>   nand: Add Marvell Orion NAND driver
>   ARM: mvebu: Add Plathome Kirkwood Openblocks A6 board support

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile                          |   1 +
>  arch/arm/boards/plathome-openblocks-a6/Makefile   |   2 +
>  arch/arm/boards/plathome-openblocks-a6/board.c    |   1 +
>  arch/arm/boards/plathome-openblocks-a6/lowlevel.c |  32 +++++
>  arch/arm/dts/Makefile                             |   1 +
>  arch/arm/dts/kirkwood-openblocks_a6-bb.dts        |  13 ++
>  arch/arm/mach-mvebu/Kconfig                       |   3 +
>  drivers/mtd/nand/Kconfig                          |   7 +
>  drivers/mtd/nand/Makefile                         |   1 +
>  drivers/mtd/nand/nand_orion.c                     | 162 ++++++++++++++++++++++
>  images/Makefile.mvebu                             |  11 ++
>  11 files changed, 234 insertions(+)
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/Makefile
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/lowlevel.c
>  create mode 100644 arch/arm/dts/kirkwood-openblocks_a6-bb.dts
>  create mode 100644 drivers/mtd/nand/nand_orion.c
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
