Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOel-0005Nq-Sb
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:11:28 +0000
Date: Wed, 28 Jan 2015 10:11:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150128091105.GE12209@pengutronix.de>
References: <1422364459-31395-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422364459-31395-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX6: use generic calculation in nand bbu handler
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 27, 2015 at 02:14:19PM +0100, Stefan Christ wrote:
> The parameters ECC Strength, BadBlockMarkerByte and BadBlockMarkerStartBit in
> the FCB structure depends on the nand chip's pagesize and oobsize. Instead of
> hardcoding these values into the imx6 bbu handler calculate these values on the
> fly. Therefore we export the necessary functions from the nand_mxs driver to
> use them in the bbu handler.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/mach-imx/Kconfig                 |  1 +
>  arch/arm/mach-imx/imx6-bbu-nand.c         | 28 +++++------------------
>  arch/arm/mach-imx/include/mach/nand_mxs.h | 37 +++++++++++++++++++++++++++++++
>  drivers/mtd/nand/nand_mxs.c               |  7 +++---
>  4 files changed, 48 insertions(+), 25 deletions(-)
>  create mode 100644 arch/arm/mach-imx/include/mach/nand_mxs.h
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 9ac36e1..42074a2 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -119,6 +119,7 @@ config BAREBOX_UPDATE_IMX6_NAND
>  	depends on BAREBOX_UPDATE
>  	depends on MTD
>  	depends on MTD_WRITE
> +	select NAND_MXS

Please use depends here instead of select. Selecting stuff which has
other dependencies often leads to trouble.

> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 94101a3..4c5bdfa 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -34,6 +34,7 @@
>  #include <stmp-device.h>
>  #include <asm/mmu.h>
>  #include <mach/generic.h>
> +#include <mach/nand_mxs.h>

This breaks compilation on MXS which does not have this file. Choose a
location under include/

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
