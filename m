Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjbIU-0005hg-BJ
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:19:36 +0000
Date: Tue, 26 Jun 2012 21:19:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626191932.GR14321@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <1340704314-12593-9-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340704314-12593-9-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 08/12] drivers/mtd/nand: add driver for the davinci NAND
 flash controller
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 26, 2012 at 11:51:50AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> +	dv_reg		NANDERRVAL1;
> +	dv_reg		NANDERRVAL2;
> +} emif_registers;
> +
> +typedef emif_registers	*emifregs;

Do not typedef structs please.

> diff --git a/drivers/mtd/nand/davinci_nand.c b/drivers/mtd/nand/davinci_nand.c
> +static void nand_davinci_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
> +{
> +	struct		nand_chip *this = mtd->priv;
> +	u_int32_t	IO_ADDR_W = (u_int32_t)this->IO_ADDR_W;
> +
> +	if (ctrl & NAND_CTRL_CHANGE) {
> +		IO_ADDR_W &= ~(MASK_ALE|MASK_CLE);
> +
> +		if ( ctrl & NAND_CLE )
> +			IO_ADDR_W |= MASK_CLE;
> +		if ( ctrl & NAND_ALE )
> +			IO_ADDR_W |= MASK_ALE;
> +		this->IO_ADDR_W = (void __iomem *) IO_ADDR_W;
> +	}
> +
> +	//printf("nand_davinci_hwcontrol cmd 0x%02x -> addr 0x%08x\n", cmd, IO_ADDR_W);

No C++ comments please. Can either be removed or use debug()

> +	(void)readl(&(emif_regs->NANDFECC[CONFIG_SYS_NAND_CS - 2]));
> +
> +	val = readl(&emif_regs->NANDFCR);
> +	val |= DAVINCI_NANDFCR_NAND_ENABLE(CONFIG_SYS_NAND_CS);
> +	val |= DAVINCI_NANDFCR_1BIT_ECC_START(CONFIG_SYS_NAND_CS);
> +	writel(val, &emif_regs->NANDFCR);
> +}
> +
> +static u_int32_t nand_davinci_readecc(struct mtd_info *mtd, u_int32_t region)
> +{
> +	u_int32_t	ecc = 0;

No need to initialize this variable.

> +
> +	ecc = readl(&(emif_regs->NANDFECC[region - 1]));
> +
> +	return(ecc);

return is not a function.

> +				 "ECC.\n");
> +			return 1;
> +		} else {
> +			/* Uncorrectable error */
> +			MTDDEBUG(MTD_DEBUG_LEVEL0, "ECC UNCORRECTED_ERROR 1\n");
> +			return -1;
> +		}
> +	}
> +	return(0);

return is not a function

> +static void nand_davinci_4bit_enable_hwecc(struct mtd_info *mtd, int mode)
> +{
> +	u32 val;
> +
> +	//printf("nand_davinci_4bit_enable_hwecc\n");

debug() or remove

> +static int nand_davinci_dev_ready(struct mtd_info *mtd)
> +{
> +	return emif_regs->NANDFSR & 0x1;

readl?

> +}
> +
> +static int davinci_nand_probe(struct device_d *dev)
> +{
> +	struct nand_chip *chip;
> +	struct davinci_nand_pdata *pdata = dev->platform_data;
> +	struct mtd_info *mtd;
> +	struct davinci_nand_host *host;
> +	u32 val;
> +	int ret;
> +
> +	/* Allocate memory for MTD device structure and private data */
> +	host = kzalloc(sizeof(struct davinci_nand_host), GFP_KERNEL);
> +	if (!host)
> +		return -ENOMEM;
> +
> +	host->dev = dev;
> +	host->base = dev_request_mem_region(dev, 0);
> +
> +	/* structures must be linked */
> +	chip = &host->nand;
> +	chip->priv = host;
> +	mtd = &host->mtd;
> +	mtd->priv = chip;
> +
> +	chip->chip_delay  = 0;
> +	chip->IO_ADDR_R = (void *)DAVINCI_ASYNC_EMIF_DATA_CE3_BASE;
> +	chip->IO_ADDR_W = (void *)DAVINCI_ASYNC_EMIF_DATA_CE3_BASE;
> +
> +#ifdef CONFIG_SYS_NAND_USE_FLASH_BBT

move to platform data

> +	chip->options	  |= NAND_USE_FLASH_BBT;
> +#endif
> +#ifdef CONFIG_SYS_NAND_HW_ECC

ditto

> +	chip->ecc.mode = NAND_ECC_HW;
> +	chip->ecc.size = 512;
> +	chip->ecc.bytes = 3;
> +	chip->ecc.calculate = nand_davinci_calculate_ecc;
> +	chip->ecc.correct  = nand_davinci_correct_data;
> +	chip->ecc.hwctl  = nand_davinci_enable_hwecc;
> +#else
> +	chip->ecc.mode = NAND_ECC_SOFT;
> +#endif /* CONFIG_SYS_NAND_HW_ECC */
> +#ifdef CONFIG_SYS_NAND_4BIT_HW_ECC_OOBFIRST

ditto

> +	dev_dbg(dev, "using obbfirst\n");
> +	chip->ecc.mode = NAND_ECC_HW_OOB_FIRST;
> +	chip->ecc.size = 512;
> +	chip->ecc.bytes = 10;
> +	chip->ecc.calculate = nand_davinci_4bit_calculate_ecc;
> +	chip->ecc.correct = nand_davinci_4bit_correct_data;
> +	chip->ecc.hwctl = nand_davinci_4bit_enable_hwecc;
> +	chip->ecc.layout = &nand_davinci_4bit_layout_oobfirst;
> +#endif
> +	/* Set address of hardware control function */
> +	chip->cmd_ctrl = nand_davinci_hwcontrol;
> +
> +	chip->read_buf = nand_davinci_read_buf;
> +	chip->write_buf = nand_davinci_write_buf;
> +
> +	chip->dev_ready = nand_davinci_dev_ready;
> +
> +	davinci_aemif_setup_timing(pdata->timing, (void *) DAVINCI_ASYNC_EMIF_CNTRL_BASE, 3-2);
> +
> +	///* put CSxNAND into NAND mode */

C++ comment

> +	val = readl(&emif_regs->NANDFCR);
> +	val |= BIT(3-2);
> +	writel(val, &emif_regs->NANDFCR);
> +
> +	/* Scan to find existence of the device */
> +	ret = nand_scan(mtd, 1);
> +	if (ret != 0) {
> +		ret = -ENXIO;
> +		goto on_error;
> +	}
> +
> +	return add_mtd_device(mtd, "nand");
> +
> +on_error:
> +	free(host);
> +	return ret;
> +}
> +
> +static struct driver_d davinci_nand_driver = {
> +	.name  = "davinci_nand",
> +	.probe = davinci_nand_probe,
> +};
> +
> +static int __init davinci_nand_init(void)
> +{
> +	return register_driver(&davinci_nand_driver);
> +}
> +
> +device_initcall(davinci_nand_init);
> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index c4eca0d..65ba1e6 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -1344,6 +1344,10 @@ int nand_scan_tail(struct mtd_info *mtd)
>  		chip->ecc.bytes = 0;
>  		break;
>  #endif
> +	case NAND_ECC_HW_OOB_FIRST:
> +		nand_check_hwecc(mtd, chip);
> +		nand_init_ecc_hw_syndrome(chip);
> +		break;

This deserves a separate patch with a description what it does.

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
