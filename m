Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtAVZ-0006MT-VL
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 08:30:30 +0000
Date: Mon, 2 Nov 2015 09:30:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102083007.GC17132@pengutronix.de>
References: <1446352242-8053-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446352242-8053-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i2c: Add support for DesignWare controllers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 31, 2015 at 09:30:41PM -0700, Andrey Smirnov wrote:
> Add a driver for DesignWare I2C controller IP block found on several
> SoCs including Altera SoC products
> 
> Tested using Terrasic SoCKit board and GPIO expander board with I2C
> EEPROM on it
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Looks mostly fine. Two small nitpicks inside.


> +static int i2c_dw_probe(struct device_d *pdev)
> +{
> +	struct dw_i2c_dev *dw;
> +	struct i2c_platform_data *pdata;
> +	int ret, bitrate;
> +	uint32_t ic_con, ic_comp_type_value;
> +
> +	pdata = pdev->platform_data;
> +
> +	dw = kzalloc(sizeof(*dw), GFP_KERNEL);

kzalloc can fail. You should use xzalloc here which cannot fail.

> +
> +	if (IS_ENABLED(CONFIG_COMMON_CLK)) {
> +		dw->clk = clk_get(pdev, NULL);
> +		if (IS_ERR(dw->clk)) {
> +			ret = PTR_ERR(dw->clk);
> +			goto fail;
> +		}
> +	}
> +
> +	dw->adapter.master_xfer = i2c_dw_xfer;
> +	dw->adapter.nr = pdev->id;
> +	dw->adapter.dev.parent = pdev;
> +	dw->adapter.dev.device_node = pdev->device_node;
> +
> +	dw->base = dev_request_mem_region(pdev, 0);
> +	if (IS_ERR(dw->base)) {
> +		ret = PTR_ERR(dw->base);
> +		goto fail;
> +	}
> +
> +	ic_comp_type_value = readl(dw->base + DW_IC_COMP_TYPE);
> +	if (ic_comp_type_value != DW_IC_COMP_TYPE_VALUE) {
> +		dev_err(pdev,
> +			"unknown DesignWare IP block 0x%08x",
> +			ic_comp_type_value);
> +		ret = -ENODEV;
> +		goto fail;
> +	}
> +
> +	i2c_dw_enable(dw, false);
> +
> +	if (IS_ENABLED(CONFIG_COMMON_CLK))
> +		i2c_dw_setup_timings(dw);
> +
> +	bitrate = (pdata && pdata->bitrate) ? pdata->bitrate : DW_I2C_BIT_RATE;
> +
> +	/*
> +	 * We have to clear 'ic_10bitaddr_master' in 'ic_tar'
> +	 * register, otherwise 'ic_10bitaddr_master' in 'ic_con'
> +	 * wouldn't clear. We don't care about preserving the contents
> +	 * of that register so we set it to zero.
> +	 */
> +	writel(0, dw->base + DW_IC_TAR);
> +
> +	switch (bitrate) {
> +	case 400000:
> +		ic_con = DW_IC_CON_SPEED_FAST;
> +		break;
> +	default:
> +		dev_warn(pdev, "requested bitrate (%d) is not supported."
> +			 " Falling back to 100kHz", bitrate);
> +	case 100000:		/* FALLTHROUGH */
> +		ic_con = DW_IC_CON_SPEED_STD;
> +		break;
> +	}
> +
> +	ic_con |= DW_IC_CON_MASTER | DW_IC_CON_SLAVE_DISABLE;
> +
> +	writel(ic_con, dw->base + DW_IC_CON);
> +
> +	/*
> +	 * Since we will be working in polling mode set both
> +	 * thresholds to their minimum
> +	 */
> +	writel(0, dw->base + DW_IC_RX_TL);
> +	writel(0, dw->base + DW_IC_TX_TL);
> +
> +	/* Disable and clear all interrrupts */
> +	writel(0, dw->base + DW_IC_INTR_MASK);
> +	readl(dw->base + DW_IC_CLR_INTR);
> +
> +	i2c_dw_enable(dw, true);
> +
> +	ret = i2c_add_numbered_adapter(&dw->adapter);
> +fail:
> +	if (ret < 0) {
> +		dev_err(pdev, "registration failed\n");

This message is unnecessary. The driver core will warn you when probe
fails anyway.

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
