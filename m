Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yz3fF-0001ty-6g
 for barebox@lists.infradead.org; Sun, 31 May 2015 13:52:36 +0000
Received: by laat2 with SMTP id t2so84807858laa.1
 for <barebox@lists.infradead.org>; Sun, 31 May 2015 06:52:09 -0700 (PDT)
Date: Sun, 31 May 2015 16:58:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150531165801.1239a325f2bcba1c1bafc874@gmail.com>
In-Reply-To: <1432991051-20800-1-git-send-email-jluebbe@debian.org>
References: <1432991051-20800-1-git-send-email-jluebbe@debian.org>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] davinci_nand: add support for the NAND controller
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Sat, 30 May 2015 15:04:11 +0200
Jan Luebbe <jluebbe@debian.org> wrote:

> This driver is based on the Linux driver (v4.0).

checkpatch.pl output:

  total: 15 errors, 9 warnings, 884 lines checked

  NOTE: whitespace errors detected, you may wish to use scripts/cleanpatch =
or
        scripts/cleanfile

Please fix the patch!

> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
>  drivers/mtd/nand/Kconfig        |   7 +
>  drivers/mtd/nand/Makefile       |   1 +
>  drivers/mtd/nand/davinci_nand.c | 866 ++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 874 insertions(+)
>  create mode 100644 drivers/mtd/nand/davinci_nand.c
> =

> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index a75540b..41a3e31 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -140,4 +140,11 @@ config MTD_NAND_NOMADIK
>  	help
>  	  Driver for the NAND flash controller on the Nomadik, with ECC.
>  =

> +config MTD_NAND_DAVINCI
> +	tristate "Support NAND on DaVinci"
> +	depends on ARCH_DAVINCI
> +	help
> +	  Enable the driver for NAND flash chips on Texas Instruments
> +	  DaVinci processors.
> +
>  endif
> diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
> index a0b3198..b8644b2 100644
> --- a/drivers/mtd/nand/Makefile
> +++ b/drivers/mtd/nand/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_NAND)			+=3D nand_base.o nand-bb.o
>  obj-$(CONFIG_NAND_BBT)			+=3D nand_bbt.o
>  =

>  obj-$(CONFIG_MTD_NAND_NOMADIK)		+=3D nomadik_nand.o
> +obj-$(CONFIG_MTD_NAND_DAVINCI)		+=3D davinci_nand.o
>  obj-$(CONFIG_NAND_IMX)			+=3D nand_imx.o
>  obj-$(CONFIG_NAND_IMX_BBM)		+=3D nand_imx_bbm.o
>  obj-$(CONFIG_NAND_OMAP_GPMC)		+=3D nand_omap_gpmc.o nand_omap_bch_decode=
r.o
> diff --git a/drivers/mtd/nand/davinci_nand.c b/drivers/mtd/nand/davinci_n=
and.c
> new file mode 100644
> index 0000000..4b14b6c
> --- /dev/null
> +++ b/drivers/mtd/nand/davinci_nand.c
> @@ -0,0 +1,866 @@
> +/*
> + * davinci_nand.c - NAND Flash Driver for DaVinci family chips
> + *
> + * Copyright =A9 2006 Texas Instruments.
> + *
> + * Port to 2.6.23 Copyright =A9 2008 by:
> + *   Sander Huijsen <Shuijsen@optelecom-nkf.com>
> + *   Troy Kisky <troy.kisky@boundarydevices.com>
> + *   Dirk Behme <Dirk.Behme@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + */
> +
> +//#define DEBUG
> +
> +#include <common.h>
> +#include <io.h>
> +#include <malloc.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <clock.h>
> +
> +#include <of.h>
> +#include <of_mtd.h>
> +
> +#include <linux/kernel.h>
> +#include <linux/err.h>
> +#include <linux/clk.h>
> +#include <linux/mtd/nand.h>
> +
> +#define NANDFCR_OFFSET		0x60
> +#define NANDFSR_OFFSET		0x64
> +#define NANDF1ECC_OFFSET	0x70
> +
> +/* 4-bit ECC syndrome registers */
> +#define NAND_4BIT_ECC_LOAD_OFFSET	0xbc
> +#define NAND_4BIT_ECC1_OFFSET		0xc0
> +#define NAND_4BIT_ECC2_OFFSET		0xc4
> +#define NAND_4BIT_ECC3_OFFSET		0xc8
> +#define NAND_4BIT_ECC4_OFFSET		0xcc
> +#define NAND_ERR_ADD1_OFFSET		0xd0
> +#define NAND_ERR_ADD2_OFFSET		0xd4
> +#define NAND_ERR_ERRVAL1_OFFSET		0xd8
> +#define NAND_ERR_ERRVAL2_OFFSET		0xdc
> +
> +/* NOTE:  boards don't need to use these address bits
> + * for ALE/CLE unless they support booting from NAND.
> + * They're used unless platform data overrides them.
> + */
> +#define	MASK_ALE		0x08
> +#define	MASK_CLE		0x10
> +
> +struct davinci_nand_pdata {		/* platform_data */
> +	uint32_t		chipsel;
> +
> +	uint32_t		mask_ale;
> +	uint32_t		mask_cle;
> +
> +	/* for packages using two chipselects */
> +	uint32_t		mask_chipsel;
> +
> +	/* board's default static partition info */
> +	struct mtd_partition	*parts;
> +	unsigned		nr_parts;
> +
> +	/* none  =3D=3D NAND_ECC_NONE (strongly *not* advised!!)
> +	 * soft  =3D=3D NAND_ECC_SOFT
> +	 * else  =3D=3D NAND_ECC_HW, according to ecc_bits
> +	 *
> +	 * All DaVinci-family chips support 1-bit hardware ECC.
> +	 * Newer ones also support 4-bit ECC, but are awkward
> +	 * using it with large page chips.
> +	 */
> +	nand_ecc_modes_t	ecc_mode;
> +	u8			ecc_bits;
> +
> +	/* e.g. NAND_BUSWIDTH_16 */
> +	unsigned		options;
> +	/* e.g. NAND_BBT_USE_FLASH */
> +	unsigned		bbt_options;
> +
> +	/* Main and mirror bbt descriptor overrides */
> +	struct nand_bbt_descr	*bbt_td;
> +	struct nand_bbt_descr	*bbt_md;
> +
> +	/* Access timings */
> +	//struct davinci_aemif_timing	*timing;
> +};
> +
> +#define NRCSR_OFFSET            0x00                                    =
         =

> +#define AWCCR_OFFSET            0x04                                    =
         =

> +#define A1CR_OFFSET             0x10                                    =
         =

> +                                                                        =
         =

> +#define ACR_ASIZE_MASK          0x3                                     =
         =

> +#define ACR_EW_MASK             BIT(30)                                 =
         =

> +#define ACR_SS_MASK             BIT(31)                                 =
         =

> +
> +/*
> + * This is a device driver for the NAND flash controller found on the
> + * various DaVinci family chips.  It handles up to four SoC chipselects,
> + * and some flavors of secondary chipselect (e.g. based on A12) as used
> + * with multichip packages.
> + *
> + * The 1-bit ECC hardware is supported, as well as the newer 4-bit ECC
> + * available on chips like the DM355 and OMAP-L137 and needed with the
> + * more error-prone MLC NAND chips.
> + *
> + * This driver assumes EM_WAIT connects all the NAND devices' RDY/nBUSY
> + * outputs in a "wire-AND" configuration, with no per-chip signals.
> + */
> +struct davinci_nand_info {
> +	struct mtd_info		mtd;
> +	struct nand_chip	chip;
> +	struct nand_ecclayout	ecclayout;
> +
> +	struct device_d		*dev;
> +	struct clk		*clk;
> +
> +	bool			is_readmode;
> +
> +	void __iomem		*base;
> +	void __iomem		*vaddr;
> +
> +	uint32_t		ioaddr;
> +	uint32_t		current_cs;
> +
> +	uint32_t		mask_chipsel;
> +	uint32_t		mask_ale;
> +	uint32_t		mask_cle;
> +
> +	uint32_t		core_chipsel;
> +
> +	//struct davinci_aemif_timing	*timing;
> +};
> +
> +static bool ecc4_busy;
> +
> +#define to_davinci_nand(m) container_of(m, struct davinci_nand_info, mtd)
> +
> +
> +static inline unsigned int davinci_nand_readl(struct davinci_nand_info *=
info,
> +		int offset)
> +{
> +	return __raw_readl(info->base + offset);
> +}
> +
> +static inline void davinci_nand_writel(struct davinci_nand_info *info,
> +		int offset, unsigned long value)
> +{
> +	__raw_writel(value, info->base + offset);
> +}
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +/*
> + * Access to hardware control lines:  ALE, CLE, secondary chipselect.
> + */
> +
> +static void nand_davinci_hwcontrol(struct mtd_info *mtd, int cmd,
> +				   unsigned int ctrl)
> +{
> +	struct davinci_nand_info	*info =3D to_davinci_nand(mtd);
> +	uint32_t			addr =3D info->current_cs;
> +	struct nand_chip		*nand =3D mtd->priv;
> +
> +	/* Did the control lines change? */
> +	if (ctrl & NAND_CTRL_CHANGE) {
> +		if ((ctrl & NAND_CTRL_CLE) =3D=3D NAND_CTRL_CLE)
> +			addr |=3D info->mask_cle;
> +		else if ((ctrl & NAND_CTRL_ALE) =3D=3D NAND_CTRL_ALE)
> +			addr |=3D info->mask_ale;
> +
> +		nand->IO_ADDR_W =3D (void __iomem __force *)addr;
> +	}
> +
> +	if (cmd !=3D NAND_CMD_NONE)
> +		iowrite8(cmd, nand->IO_ADDR_W);
> +}
> +
> +static void nand_davinci_select_chip(struct mtd_info *mtd, int chip)
> +{
> +	struct davinci_nand_info	*info =3D to_davinci_nand(mtd);
> +	uint32_t			addr =3D info->ioaddr;
> +
> +	/* maybe kick in a second chipselect */
> +	if (chip > 0)
> +		addr |=3D info->mask_chipsel;
> +	info->current_cs =3D addr;
> +
> +	info->chip.IO_ADDR_W =3D (void __iomem __force *)addr;
> +	info->chip.IO_ADDR_R =3D info->chip.IO_ADDR_W;
> +}
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +/*
> + * 1-bit hardware ECC ... context maintained for each core chipselect
> + */
> +
> +static inline uint32_t nand_davinci_readecc_1bit(struct mtd_info *mtd)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +
> +	dev_dbg(info->dev, "%s\n", __func__);
> +
> +	return davinci_nand_readl(info, NANDF1ECC_OFFSET
> +			+ 4 * info->core_chipsel);
> +}
> +
> +static void nand_davinci_hwctl_1bit(struct mtd_info *mtd, int mode)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	uint32_t nandcfr;
> +
> +	dev_dbg(info->dev, "%s\n", __func__);
> +
> +	/* Reset ECC hardware */
> +	nand_davinci_readecc_1bit(mtd);
> +
> +	/* Restart ECC hardware */
> +	nandcfr =3D davinci_nand_readl(info, NANDFCR_OFFSET);
> +	nandcfr |=3D BIT(8 + info->core_chipsel);
> +	davinci_nand_writel(info, NANDFCR_OFFSET, nandcfr);
> +}
> +
> +/*
> + * Read hardware ECC value and pack into three bytes
> + */
> +static int nand_davinci_calculate_1bit(struct mtd_info *mtd,
> +				      const u_char *dat, u_char *ecc_code)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	unsigned int ecc_val =3D nand_davinci_readecc_1bit(mtd);
> +	unsigned int ecc24 =3D (ecc_val & 0x0fff) | ((ecc_val & 0x0fff0000) >> =
4);
> +
> +	dev_dbg(info->dev, "%s\n", __func__);
> +
> +	/* invert so that erased block ecc is correct */
> +	ecc24 =3D ~ecc24;
> +	ecc_code[0] =3D (u_char)(ecc24);
> +	ecc_code[1] =3D (u_char)(ecc24 >> 8);
> +	ecc_code[2] =3D (u_char)(ecc24 >> 16);
> +
> +	return 0;
> +}
> +
> +static int nand_davinci_correct_1bit(struct mtd_info *mtd, u_char *dat,
> +				     u_char *read_ecc, u_char *calc_ecc)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	struct nand_chip *chip =3D mtd->priv;
> +	uint32_t eccNand =3D read_ecc[0] | (read_ecc[1] << 8) |
> +					  (read_ecc[2] << 16);
> +	uint32_t eccCalc =3D calc_ecc[0] | (calc_ecc[1] << 8) |
> +					  (calc_ecc[2] << 16);
> +	uint32_t diff =3D eccCalc ^ eccNand;
> +
> +	dev_dbg(info->dev, "%s nand=3D0x%x calc=3D0x%x\n", __func__, eccNand, e=
ccCalc);
> +
> +	if (diff) {
> +		if ((((diff >> 12) ^ diff) & 0xfff) =3D=3D 0xfff) {
> +			/* Correctable error */
> +			if ((diff >> (12 + 3)) < chip->ecc.size) {
> +				dat[diff >> (12 + 3)] ^=3D BIT((diff >> 12) & 7);
> +				return 1;
> +			} else {
> +				return -1;
> +			}
> +		} else if (!(diff & (diff - 1))) {
> +			/* Single bit ECC error in the ECC itself,
> +			 * nothing to fix */
> +			return 1;
> +		} else {
> +			/* Uncorrectable error */
> +			return -1;
> +		}
> +
> +	}
> +	return 0;
> +}
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +/*
> + * 4-bit hardware ECC ... context maintained over entire AEMIF
> + *
> + * This is a syndrome engine, but we avoid NAND_ECC_HW_SYNDROME
> + * since that forces use of a problematic "infix OOB" layout.
> + * Among other things, it trashes manufacturer bad block markers.
> + * Also, and specific to this hardware, it ECC-protects the "prepad"
> + * in the OOB ... while having ECC protection for parts of OOB would
> + * seem useful, the current MTD stack sometimes wants to update the
> + * OOB without recomputing ECC.
> + */
> +
> +static void nand_davinci_hwctl_4bit(struct mtd_info *mtd, int mode)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	u32 val;
> +
> +	/* Start 4-bit ECC calculation for read/write */
> +	val =3D davinci_nand_readl(info, NANDFCR_OFFSET);
> +	val &=3D ~(0x03 << 4);
> +	val |=3D (info->core_chipsel << 4) | BIT(12);
> +	davinci_nand_writel(info, NANDFCR_OFFSET, val);
> +
> +	info->is_readmode =3D (mode =3D=3D NAND_ECC_READ);
> +}
> +
> +/* Read raw ECC code after writing to NAND. */
> +static void
> +nand_davinci_readecc_4bit(struct davinci_nand_info *info, u32 code[4])
> +{
> +	const u32 mask =3D 0x03ff03ff;
> +
> +	code[0] =3D davinci_nand_readl(info, NAND_4BIT_ECC1_OFFSET) & mask;
> +	code[1] =3D davinci_nand_readl(info, NAND_4BIT_ECC2_OFFSET) & mask;
> +	code[2] =3D davinci_nand_readl(info, NAND_4BIT_ECC3_OFFSET) & mask;
> +	code[3] =3D davinci_nand_readl(info, NAND_4BIT_ECC4_OFFSET) & mask;
> +}
> +
> +/* Terminate read ECC; or return ECC (as bytes) of data written to NAND.=
 */
> +static int nand_davinci_calculate_4bit(struct mtd_info *mtd,
> +		const u_char *dat, u_char *ecc_code)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	u32 raw_ecc[4], *p;
> +	unsigned i;
> +
> +	/* After a read, terminate ECC calculation by a dummy read
> +	 * of some 4-bit ECC register.  ECC covers everything that
> +	 * was read; correct() just uses the hardware state, so
> +	 * ecc_code is not needed.
> +	 */
> +	if (info->is_readmode) {
> +		davinci_nand_readl(info, NAND_4BIT_ECC1_OFFSET);
> +		return 0;
> +	}
> +
> +	/* Pack eight raw 10-bit ecc values into ten bytes, making
> +	 * two passes which each convert four values (in upper and
> +	 * lower halves of two 32-bit words) into five bytes.  The
> +	 * ROM boot loader uses this same packing scheme.
> +	 */
> +	nand_davinci_readecc_4bit(info, raw_ecc);
> +	for (i =3D 0, p =3D raw_ecc; i < 2; i++, p +=3D 2) {
> +		*ecc_code++ =3D   p[0]        & 0xff;
> +		*ecc_code++ =3D ((p[0] >>  8) & 0x03) | ((p[0] >> 14) & 0xfc);
> +		*ecc_code++ =3D ((p[0] >> 22) & 0x0f) | ((p[1] <<  4) & 0xf0);
> +		*ecc_code++ =3D ((p[1] >>  4) & 0x3f) | ((p[1] >> 10) & 0xc0);
> +		*ecc_code++ =3D  (p[1] >> 18) & 0xff;
> +	}
> +
> +	return 0;
> +}
> +
> +/* Correct up to 4 bits in data we just read, using state left in the
> + * hardware plus the ecc_code computed when it was first written.
> + */
> +static int nand_davinci_correct_4bit(struct mtd_info *mtd,
> +		u_char *data, u_char *ecc_code, u_char *null)
> +{
> +	int i;
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +	unsigned short ecc10[8];
> +	unsigned short *ecc16;
> +	u32 syndrome[4];
> +	unsigned num_errors, corrected;
> +
> +	/* All bytes 0xff?  It's an erased page; ignore its ECC. */
> +	for (i =3D 0; i < 10; i++) {
> +		if (ecc_code[i] !=3D 0xff)
> +			goto compare;
> +	}
> +	return 0;
> +
> +compare:
> +	/* Unpack ten bytes into eight 10 bit values.  We know we're
> +	 * little-endian, and use type punning for less shifting/masking.
> +	 */
> +	if (WARN_ON(0x01 & (unsigned) ecc_code))
> +		return -EINVAL;
> +	ecc16 =3D (unsigned short *)ecc_code;
> +
> +	ecc10[0] =3D  (ecc16[0] >>  0) & 0x3ff;
> +	ecc10[1] =3D ((ecc16[0] >> 10) & 0x3f) | ((ecc16[1] << 6) & 0x3c0);
> +	ecc10[2] =3D  (ecc16[1] >>  4) & 0x3ff;
> +	ecc10[3] =3D ((ecc16[1] >> 14) & 0x3)  | ((ecc16[2] << 2) & 0x3fc);
> +	ecc10[4] =3D  (ecc16[2] >>  8)         | ((ecc16[3] << 8) & 0x300);
> +	ecc10[5] =3D  (ecc16[3] >>  2) & 0x3ff;
> +	ecc10[6] =3D ((ecc16[3] >> 12) & 0xf)  | ((ecc16[4] << 4) & 0x3f0);
> +	ecc10[7] =3D  (ecc16[4] >>  6) & 0x3ff;
> +
> +	/* Tell ECC controller about the expected ECC codes. */
> +	for (i =3D 7; i >=3D 0; i--)
> +		davinci_nand_writel(info, NAND_4BIT_ECC_LOAD_OFFSET, ecc10[i]);
> +
> +	/* Allow time for syndrome calculation ... then read it.
> +	 * A syndrome of all zeroes 0 means no detected errors.
> +	 */
> +	davinci_nand_readl(info, NANDFSR_OFFSET);
> +	nand_davinci_readecc_4bit(info, syndrome);
> +	if (!(syndrome[0] | syndrome[1] | syndrome[2] | syndrome[3]))
> +		return 0;
> +
> +	/*
> +	 * Clear any previous address calculation by doing a dummy read of an
> +	 * error address register.
> +	 */
> +	davinci_nand_readl(info, NAND_ERR_ADD1_OFFSET);
> +
> +	/* Start address calculation, and wait for it to complete.
> +	 * We _could_ start reading more data while this is working,
> +	 * to speed up the overall page read.
> +	 */
> +	davinci_nand_writel(info, NANDFCR_OFFSET,
> +			davinci_nand_readl(info, NANDFCR_OFFSET) | BIT(13));
> +
> +	/*
> +	 * ECC_STATE field reads 0x3 (Error correction complete) immediately
> +	 * after setting the 4BITECC_ADD_CALC_START bit. So if you immediately
> +	 * begin trying to poll for the state, you may fall right out of your
> +	 * loop without any of the correction calculations having taken place.
> +	 * The recommendation from the hardware team is to initially delay as
> +	 * long as ECC_STATE reads less than 4. After that, ECC HW has entered
> +	 * correction state.
> +	 */
> +	wait_on_timeout(100 * USECOND,
> +			((davinci_nand_readl(info, NANDFSR_OFFSET) >> 8) & 0x0f)
> +			< 4);
> +
> +	for (;;) {
> +		u32	fsr =3D davinci_nand_readl(info, NANDFSR_OFFSET);
> +
> +		switch ((fsr >> 8) & 0x0f) {
> +		case 0:		/* no error, should not happen */
> +			davinci_nand_readl(info, NAND_ERR_ERRVAL1_OFFSET);
> +			return 0;
> +		case 1:		/* five or more errors detected */
> +			davinci_nand_readl(info, NAND_ERR_ERRVAL1_OFFSET);
> +			return -EIO;
> +		case 2:		/* error addresses computed */
> +		case 3:
> +			num_errors =3D 1 + ((fsr >> 16) & 0x03);
> +			goto correct;
> +		default:	/* still working on it */
> +			//cpu_relax();
> +			continue;
> +		}
> +	}
> +
> +correct:
> +	/* correct each error */
> +	for (i =3D 0, corrected =3D 0; i < num_errors; i++) {
> +		int error_address, error_value;
> +
> +		if (i > 1) {
> +			error_address =3D davinci_nand_readl(info,
> +						NAND_ERR_ADD2_OFFSET);
> +			error_value =3D davinci_nand_readl(info,
> +						NAND_ERR_ERRVAL2_OFFSET);
> +		} else {
> +			error_address =3D davinci_nand_readl(info,
> +						NAND_ERR_ADD1_OFFSET);
> +			error_value =3D davinci_nand_readl(info,
> +						NAND_ERR_ERRVAL1_OFFSET);
> +		}
> +
> +		if (i & 1) {
> +			error_address >>=3D 16;
> +			error_value >>=3D 16;
> +		}
> +		error_address &=3D 0x3ff;
> +		error_address =3D (512 + 7) - error_address;
> +
> +		if (error_address < 512) {
> +			data[error_address] ^=3D error_value;
> +			corrected++;
> +		}
> +	}
> +
> +	return corrected;
> +}
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +/*
> + * NOTE:  NAND boot requires ALE =3D=3D EM_A[1], CLE =3D=3D EM_A[2], so =
that's
> + * how these chips are normally wired.  This translates to both 8 and 16
> + * bit busses using ALE =3D=3D BIT(3) in byte addresses, and CLE =3D=3D =
BIT(4).
> + *
> + * For now we assume that configuration, or any other one which ignores
> + * the two LSBs for NAND access ... so we can issue 32-bit reads/writes
> + * and have that transparently morphed into multiple NAND operations.
> + */
> +static void nand_davinci_read_buf(struct mtd_info *mtd, uint8_t *buf, in=
t len)
> +{
> +	struct nand_chip *chip =3D mtd->priv;
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +
> +	dev_dbg(info->dev, "%s\n", __func__);
> +
> +
> +	if ((0x03 & ((unsigned)buf)) =3D=3D 0 && (0x03 & len) =3D=3D 0)
> +		readsl(chip->IO_ADDR_R, buf, len >> 2);
> +	else if ((0x01 & ((unsigned)buf)) =3D=3D 0 && (0x01 & len) =3D=3D 0)
> +		readsw(chip->IO_ADDR_R, buf, len >> 1);
> +	else
> +		readsb(chip->IO_ADDR_R, buf, len);
> +}
> +
> +static void nand_davinci_write_buf(struct mtd_info *mtd,
> +		const uint8_t *buf, int len)
> +{
> +	struct nand_chip *chip =3D mtd->priv;
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +
> +	dev_dbg(info->dev, "%s\n", __func__);
> +
> +
> +	if ((0x03 & ((unsigned)buf)) =3D=3D 0 && (0x03 & len) =3D=3D 0)
> +		writesl(chip->IO_ADDR_R, buf, len >> 2);
> +	else if ((0x01 & ((unsigned)buf)) =3D=3D 0 && (0x01 & len) =3D=3D 0)
> +		writesw(chip->IO_ADDR_R, buf, len >> 1);
> +	else
> +		writesb(chip->IO_ADDR_R, buf, len);
> +}
> +
> +/*
> + * Check hardware register for wait status. Returns 1 if device is ready,
> + * 0 if it is still busy.
> + */
> +static int nand_davinci_dev_ready(struct mtd_info *mtd)
> +{
> +	struct davinci_nand_info *info =3D to_davinci_nand(mtd);
> +
> +	return davinci_nand_readl(info, NANDFSR_OFFSET) & BIT(0);
> +}
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +/* An ECC layout for using 4-bit ECC with small-page flash, storing
> + * ten ECC bytes plus the manufacturer's bad block marker byte, and
> + * and not overlapping the default BBT markers.
> + */
> +static struct nand_ecclayout hwecc4_small =3D {
> +	.eccbytes =3D 10,
> +	.eccpos =3D { 0, 1, 2, 3, 4,
> +		/* offset 5 holds the badblock marker */
> +		6, 7,
> +		13, 14, 15, },
> +	.oobfree =3D {
> +		{.offset =3D 8, .length =3D 5, },
> +		{.offset =3D 16, },
> +	},
> +};
> +
> +/* An ECC layout for using 4-bit ECC with large-page (2048bytes) flash,
> + * storing ten ECC bytes plus the manufacturer's bad block marker byte,
> + * and not overlapping the default BBT markers.
> + */
> +static struct nand_ecclayout hwecc4_2048 =3D {
> +	.eccbytes =3D 40,
> +	.eccpos =3D {
> +		/* at the end of spare sector */
> +		24, 25, 26, 27, 28, 29,	30, 31, 32, 33,
> +		34, 35, 36, 37, 38, 39,	40, 41, 42, 43,
> +		44, 45, 46, 47, 48, 49, 50, 51, 52, 53,
> +		54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
> +		},
> +	.oobfree =3D {
> +		/* 2 bytes at offset 0 hold manufacturer badblock markers */
> +		{.offset =3D 2, .length =3D 22, },
> +		/* 5 bytes at offset 8 hold BBT markers */
> +		/* 8 bytes at offset 16 hold JFFS2 clean markers */
> +	},
> +};
> +
> +static struct of_device_id davinci_nand_of_match[] =3D {
> +	{.compatible =3D "ti,davinci-nand", },
> +	{.compatible =3D "ti,keystone-nand", },
> +	{},
> +};
> +
> +static struct davinci_nand_pdata
> +	*nand_davinci_get_pdata(struct device_d *dev)
> +{
> +	struct davinci_nand_pdata *pdata;
> +	const char *mode;
> +	u32 prop;
> +
> +	pdata =3D kzalloc(sizeof(struct davinci_nand_pdata),
> +			GFP_KERNEL);
> +	if (!pdata)
> +		return ERR_PTR(-ENOMEM);
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-chipselect", &prop))
> +		pdata->chipsel =3D prop;
> +	else
> +		return ERR_PTR(-EINVAL);
> +
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-ale", &prop))
> +		pdata->mask_ale =3D prop;
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-cle", &prop))
> +		pdata->mask_cle =3D prop;
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-mask-chipsel", &prop))
> +		pdata->mask_chipsel =3D prop;
> +	if (!of_property_read_string(dev->device_node,
> +		"nand-ecc-mode", &mode) ||
> +	    !of_property_read_string(dev->device_node,
> +		"ti,davinci-ecc-mode", &mode)) {
> +		if (!strncmp("none", mode, 4))
> +			pdata->ecc_mode =3D NAND_ECC_NONE;
> +		if (!strncmp("soft", mode, 4))
> +			pdata->ecc_mode =3D NAND_ECC_SOFT;
> +		if (!strncmp("hw", mode, 2))
> +			pdata->ecc_mode =3D NAND_ECC_HW;
> +	}
> +	if (!of_property_read_u32(dev->device_node,
> +		"ti,davinci-ecc-bits", &prop))
> +		pdata->ecc_bits =3D prop;
> +
> +	prop =3D of_get_nand_bus_width(dev->device_node);
> +	if (0 < prop || !of_property_read_u32(dev->device_node,
> +		"ti,davinci-nand-buswidth", &prop))
> +		if (prop =3D=3D 16)
> +			pdata->options |=3D NAND_BUSWIDTH_16;
> +	if (of_property_read_bool(dev->device_node,
> +		"nand-on-flash-bbt") ||
> +	    of_property_read_bool(dev->device_node,
> +		"ti,davinci-nand-use-bbt"))
> +		pdata->bbt_options =3D NAND_BBT_USE_FLASH;
> +
> +	if (of_device_is_compatible(dev->device_node,
> +				    "ti,keystone-nand")) {
> +		pdata->options |=3D NAND_NO_SUBPAGE_WRITE;
> +	}
> +	return pdata;
> +}
> +
> +static int nand_davinci_probe(struct device_d *dev)
> +{
> +	struct davinci_nand_pdata	*pdata;
> +	struct davinci_nand_info	*info;
> +	int				ret;
> +	uint32_t			val;
> +	nand_ecc_modes_t		ecc_mode;
> +
> +	pdata =3D nand_davinci_get_pdata(dev);
> +
> +	/* insist on board-specific configuration */
> +	if (!pdata)
> +		return -ENODEV;
> +
> +	/* which external chipselect will we be managing? */
> +	if (pdata->chipsel < 0 || pdata->chipsel > 3)
> +		return -ENODEV;
> +
> +	info =3D kzalloc(sizeof(*info), GFP_KERNEL);
> +	if (!info)
> +		return -ENOMEM;
> +
> +	//platform_set_drvdata(pdev, info);
> +
> +	info->dev		=3D dev;
> +	info->base		=3D dev_request_mem_region(dev, 1);
> +	info->vaddr		=3D dev_request_mem_region(dev, 0);
> +
> +	val =3D davinci_nand_readl(info, NRCSR_OFFSET);
> +	dev_info(dev, "controller rev. %d.%d\n",
> +	       (val >> 8) & 0xff, val & 0xff);
> +
> +	info->mtd.priv		=3D &info->chip;
> +	info->mtd.name		=3D dev_name(dev);
> +	info->mtd.parent	=3D dev;
> +
> +	info->chip.IO_ADDR_R	=3D info->vaddr;
> +	info->chip.IO_ADDR_W	=3D info->vaddr;
> +	info->chip.chip_delay	=3D 0;
> +	info->chip.select_chip	=3D nand_davinci_select_chip;
> +
> +	/* options such as NAND_BBT_USE_FLASH */
> +	info->chip.bbt_options	=3D pdata->bbt_options;
> +	/* options such as 16-bit widths */
> +	info->chip.options	=3D pdata->options;
> +	info->chip.bbt_td	=3D pdata->bbt_td;
> +	info->chip.bbt_md	=3D pdata->bbt_md;
> +	//info->timing		=3D pdata->timing;
> +
> +	info->ioaddr		=3D (uint32_t __force) info->vaddr;
> +
> +	info->current_cs	=3D info->ioaddr;
> +	info->core_chipsel	=3D pdata->chipsel;
> +	info->mask_chipsel	=3D pdata->mask_chipsel;
> +
> +	/* use nandboot-capable ALE/CLE masks by default */
> +	info->mask_ale		=3D pdata->mask_ale ? : MASK_ALE;
> +	info->mask_cle		=3D pdata->mask_cle ? : MASK_CLE;
> +
> +	/* Set address of hardware control function */
> +	info->chip.cmd_ctrl	=3D nand_davinci_hwcontrol;
> +	info->chip.dev_ready	=3D nand_davinci_dev_ready;
> +
> +	/* Speed up buffer I/O */
> +	info->chip.read_buf     =3D nand_davinci_read_buf;
> +	info->chip.write_buf    =3D nand_davinci_write_buf;
> +
> +	/* Use board-specific ECC config */
> +	ecc_mode		=3D pdata->ecc_mode;
> +
> +	ret =3D -EINVAL;
> +	switch (ecc_mode) {
> +	case NAND_ECC_NONE:
> +	case NAND_ECC_SOFT:
> +		pdata->ecc_bits =3D 0;
> +		break;
> +	case NAND_ECC_HW:
> +		if (pdata->ecc_bits =3D=3D 4) {
> +			/* No sanity checks:  CPUs must support this,
> +			 * and the chips may not use NAND_BUSWIDTH_16.
> +			 */
> +
> +			/* No sharing 4-bit hardware between chipselects yet */
> +			if (ecc4_busy)
> +				ret =3D -EBUSY;
> +			else
> +				ecc4_busy =3D true;
> +
> +			if (ret =3D=3D -EBUSY)
> +				return ret;
> +
> +			info->chip.ecc.calculate =3D nand_davinci_calculate_4bit;
> +			info->chip.ecc.correct =3D nand_davinci_correct_4bit;
> +			info->chip.ecc.hwctl =3D nand_davinci_hwctl_4bit;
> +			info->chip.ecc.bytes =3D 10;
> +		} else {
> +			info->chip.ecc.calculate =3D nand_davinci_calculate_1bit;
> +			info->chip.ecc.correct =3D nand_davinci_correct_1bit;
> +			info->chip.ecc.hwctl =3D nand_davinci_hwctl_1bit;
> +			info->chip.ecc.bytes =3D 3;
> +		}
> +		info->chip.ecc.size =3D 512;
> +		info->chip.ecc.strength =3D pdata->ecc_bits;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	info->chip.ecc.mode =3D ecc_mode;
> +
> +	info->clk =3D clk_get(dev, "aemif");
> +	if (IS_ERR(info->clk)) {
> +		ret =3D PTR_ERR(info->clk);
> +		dev_dbg(dev, "unable to get AEMIF clock, err %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D clk_enable(info->clk);
> +	if (ret < 0) {
> +		dev_dbg(dev, "unable to enable AEMIF clock, err %d\n",
> +			ret);
> +		goto err_clk_enable;
> +	}
> +
> +	/* put CSxNAND into NAND mode */
> +	val =3D davinci_nand_readl(info, NANDFCR_OFFSET);
> +	val |=3D BIT(info->core_chipsel);
> +	davinci_nand_writel(info, NANDFCR_OFFSET, val);
> +
> +	/* Scan to find existence of the device(s) */
> +	ret =3D nand_scan_ident(&info->mtd, pdata->mask_chipsel ? 2 : 1, NULL);
> +	if (ret < 0) {
> +		dev_dbg(dev, "no NAND chip(s) found\n");
> +		goto err;
> +	}
> +
> +	/* Update ECC layout if needed ... for 1-bit HW ECC, the default
> +	 * is OK, but it allocates 6 bytes when only 3 are needed (for
> +	 * each 512 bytes).  For the 4-bit HW ECC, that default is not
> +	 * usable:  10 bytes are needed, not 6.
> +	 */
> +	if (pdata->ecc_bits =3D=3D 4) {
> +		int	chunks =3D info->mtd.writesize / 512;
> +
> +		if (!chunks || info->mtd.oobsize < 16) {
> +			dev_dbg(dev, "too small\n");
> +			ret =3D -EINVAL;
> +			goto err;
> +		}
> +
> +		/* For small page chips, preserve the manufacturer's
> +		 * badblock marking data ... and make sure a flash BBT
> +		 * table marker fits in the free bytes.
> +		 */
> +		if (chunks =3D=3D 1) {
> +			info->ecclayout =3D hwecc4_small;
> +			info->ecclayout.oobfree[1].length =3D
> +				info->mtd.oobsize - 16;
> +			goto syndrome_done;
> +		}
> +		if (chunks =3D=3D 4) {
> +			info->ecclayout =3D hwecc4_2048;
> +			info->chip.ecc.mode =3D NAND_ECC_HW_OOB_FIRST;
> +			goto syndrome_done;
> +		}
> +
> +		/* 4KiB page chips are not yet supported. The eccpos from
> +		 * nand_ecclayout cannot hold 80 bytes and change to eccpos[]
> +		 * breaks userspace ioctl interface with mtd-utils. Once we
> +		 * resolve this issue, NAND_ECC_HW_OOB_FIRST mode can be used
> +		 * for the 4KiB page chips.
> +		 *
> +		 * TODO: Note that nand_ecclayout has now been expanded and can
> +		 *  hold plenty of OOB entries.
> +		 */
> +		dev_warn(dev, "no 4-bit ECC support yet "
> +				"for 4KiB-page NAND\n");
> +		ret =3D -EIO;
> +		goto err;
> +
> +syndrome_done:
> +		info->chip.ecc.layout =3D &info->ecclayout;
> +	}
> +
> +	ret =3D nand_scan_tail(&info->mtd);
> +	if (ret < 0)
> +		goto err;
> +
> +	add_mtd_nand_device(&info->mtd, "nand");
> +
> +	return 0;
> +
> +err:
> +	clk_disable(info->clk);
> +
> +err_clk_enable:
> +	if (ecc_mode =3D=3D NAND_ECC_HW_SYNDROME)
> +		ecc4_busy =3D false;
> +	return ret;
> +}
> +
> +static struct driver_d nand_davinci_driver =3D {
> +	.name	=3D "davinci_nand",
> +	.probe	=3D nand_davinci_probe,
> +	.of_compatible =3D DRV_OF_COMPAT(davinci_nand_of_match),
> +};
> +device_platform_driver(nand_davinci_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Texas Instruments");
> +MODULE_DESCRIPTION("Davinci NAND flash driver");
> +
> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
