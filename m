Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pcqvk-0003JT-GQ
	for barebox@lists.infradead.org; Wed, 12 Jan 2011 02:59:25 +0000
Date: Wed, 12 Jan 2011 03:58:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110112025858.GD20706@game.jcrosoft.org>
References: <1294799275-18113-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1294799275-18113-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH] imx(25,35): save boot location into $barebox_loc env.
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

> + */
> +
> +#include <common.h>
> +#include <environment.h>
> +#include <init.h>
> +
> +#include <asm/io.h>
> +#include <mach/imx-regs.h>
> +
> +#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
please move this to the Makefile
> +/*
> + * Saves the boot source media into the $barebox_loc enviroment variable
> + *
> + * This information is useful for barebox init scripts as we can then easily
> + * use a kernel image stored on the same media that we launch barebox with
> + * (for example).
> + *
> + * imx25 and imx35 can boot into barebox from several media such as
> + * nand, nor, mmc/sd cards, serial roms. "mmc" is used to represent several
> + * sources as its impossible to distinguish between them.
> + *
> + * Some sources such as serial roms can themselves have 3 different boot
> + * possibilities (i2c1, i2c2 etc). It is assumed that any board will
> + * only be using one of these at any one time.
> + *
> + * Note also that I suspect that the boot source pins are only sampled at
> + * power up.
> + */
> +static int imx_boot_save_loc(void)
> +{
> +	const char *bareboxloc = NULL;
> +	uint32_t reg;
> +	unsigned int ctrl, type;
> +
> +	/* [CTRL][TYPE] */
> +	const char *const locations[4][4] = {
	a struct could be better not sure
> +		{ /* CTRL = WEIM */
> +			"nor",
> +			0,
			NULL no?
> +			"onenand",
> +			0
> +		}, { /* CTRL == NAND */
> +			"nand",
> +			"nand",
> +			"nand",
> +			"nand",
> +		}, { /* CTRL == ATA, (imx35 only) */
> +			0,
> +			0, /* might be p-ata */
> +			0,
> +			0,
> +		}, { /* CTRL == expansion */
> +			"mmc", /* note imx25 could also be: movinand, ce-ata */
> +			0,
> +			"i2c",
> +			"spi",
> +		}
> +	};
otherwise look good

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
