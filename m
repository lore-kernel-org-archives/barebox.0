Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6Hx5-0002yD-74
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 09:19:16 +0000
Date: Tue, 28 Aug 2012 11:19:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828091913.GF26594@pengutronix.de>
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
 <1345648133-31721-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345648133-31721-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/3] Freescale I2C driver
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 22, 2012 at 04:08:52PM +0100, Renaud Barbier wrote:
> This patch introduces the Freescale I2C driver along with its configuration
> and build files.
> The header file asm/fsl_i2c.h is updated with register offsets and the
> structure mapping the i2c registers is removed.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/include/asm/fsl_i2c.h |   80 ++++------
>  drivers/i2c/busses/Kconfig     |    4 +
>  drivers/i2c/busses/Makefile    |    1 +
>  drivers/i2c/busses/i2c-fsl.c   |  356 ++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 393 insertions(+), 48 deletions(-)
>  create mode 100644 drivers/i2c/busses/i2c-fsl.c
> 
> diff --git a/arch/ppc/include/asm/fsl_i2c.h b/arch/ppc/include/asm/fsl_i2c.h

Please remove this file completely. The i2c registers should be defined in the
driver.


> index 4f71341..62b077d 100644
> --- a/arch/ppc/include/asm/fsl_i2c.h
> +++ b/arch/ppc/include/asm/fsl_i2c.h
> @@ -1,6 +1,7 @@
>  /*
>   * Freescale I2C Controller
>   *
> + * Copyright 2012 GE Intelligent Platform, Inc.
>   * Copyright 2006 Freescale Semiconductor, Inc.
>   *
>   * Based on earlier versions by Gleb Natapov <gnatapov@mrv.com>,
> @@ -32,55 +33,38 @@
>  
>  #include <asm/types.h>
>  
> -typedef struct fsl_i2c {
> +#define I2C1_BASE_ADDR (CFG_IMMR + 0x3000)
> +#define I2C2_BASE_ADDR (CFG_IMMR + 0x3100)
>  
> -	u8 adr;		/* I2C slave address */
> -	u8 res0[3];
> -#define I2C_ADR		0xFE
> -#define I2C_ADR_SHIFT	1
> -#define I2C_ADR_RES	~(I2C_ADR)
> +#define FSL_I2C_ADR		0x00
> +#define FSL_I2C_FDR		0x04
> +#define FSL_I2C_CR		0x08
> +#define		I2C_CR_MEN	0x80
> +#define		I2C_CR_MIEN	0x40
> +#define		I2C_CR_MSTA	0x20
> +#define		I2C_CR_MTX	0x10
> +#define		I2C_CR_TXAK	0x08
> +#define		I2C_CR_RSTA	0x04
> +#define		I2C_CR_BCST	0x01
> +#define FSL_I2C_SR		0x0C
> +#define		I2C_SR_MCF	0x80
> +#define		I2C_SR_MAAS	0x40
> +#define		I2C_SR_MBB	0x20
> +#define		I2C_SR_MAL	0x10
> +#define		I2C_SR_BCSTM	0x08
> +#define		I2C_SR_SRW	0x04
> +#define		I2C_SR_MIF	0x02
> +#define		I2C_SR_RXAK	0x01
> +#define FSL_I2C_DR		0x10
> +#define FSL_I2C_DFSRR		0x14

These defines look awfully familiar. Can we use
drivers/i2c/busses/i2c-imx.c instead of adding a new driver?

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
