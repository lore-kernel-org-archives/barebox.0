Delivery-date: Mon, 24 Oct 2022 10:14:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsbE-000QuA-Jx
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 10:14:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsbC-0002dm-VJ
	for lore@pengutronix.de; Mon, 24 Oct 2022 10:14:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=up8W/9lK31tErrQ0WohofY9/guQWS7qrNYeTEvPGGB4=; b=OiwuOB5NLtaBfW/Xh6fnr0IiLG
	LUnbNd+gdqBTH8ZmOHodK9pIxs/cmnoo/KH1s5js4b8MGwVegHzAU1blD3JLy8o1D9qyuhbWBpBk+
	5fhl+obgaL2EqEoZJvomFexZQExBzhTjNISpVwttazFcDfXCr6VKPNNr5iQjFyBOR3EGklQsovpWJ
	DxuFfxi9b1T1opQhxIdm1GGzuTOShlMm5Xim8UpkL4vI/8XJf6e3aipV1SOkz7E6INd+HaIB08ldO
	B90Hyz8kjzfOZhL584r3MRiDFndxFk1HUT7Eto8s6Bc5rp4j37IV+USDzPh6guVHqwWxVRmmNhSH8
	9e1WRtMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsZm-0001Qt-5U; Mon, 24 Oct 2022 08:12:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsZg-0001Pn-8b
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:12:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omsZe-0002Nc-Q5; Mon, 24 Oct 2022 10:12:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omsZe-0004cD-JD; Mon, 24 Oct 2022 10:12:42 +0200
Date: Mon, 24 Oct 2022 10:12:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jzi@pengutronix.de
Message-ID: <20221024081242.GG6702@pengutronix.de>
References: <20221020152853.3021713-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020152853.3021713-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_011244_656832_7DB5504D 
X-CRM114-Status: GOOD (  43.78  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: port Linux imx7d-adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 20, 2022 at 05:28:53PM +0200, Ahmad Fatoum wrote:
> The i.MX7 has two ADCs of 16 channels each. Port the Linux v6.0 driver
> of the peripheral to make them usable in barebox. This can be useful
> for board type/revision detection that employs voltage dividers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/aiodev/Kconfig     |   8 +
>  drivers/aiodev/Makefile    |   1 +
>  drivers/aiodev/imx7d_adc.c | 466 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 475 insertions(+)
>  create mode 100644 drivers/aiodev/imx7d_adc.c
> 
> diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> index 6bd697702ecf..5c8706ffef4a 100644
> --- a/drivers/aiodev/Kconfig
> +++ b/drivers/aiodev/Kconfig
> @@ -65,4 +65,12 @@ config ROCKCHIP_SARADC
>  	help
>  	  Support for Successive Approximation Register (SAR) ADC in Rockchip
>  	  SoCs.
> +
> +config IMX7D_ADC
> +	tristate "Freescale IMX7D ADC driver"
> +	depends on ARCH_IMX7 || COMPILE_TEST
> +	depends on OFDEVICE
> +	help
> +	  Say yes here to build support for IMX7D ADC.
> +
>  endif
> diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
> index 06a63b0d2d78..9cb11605ed09 100644
> --- a/drivers/aiodev/Makefile
> +++ b/drivers/aiodev/Makefile
> @@ -9,3 +9,4 @@ obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
>  obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
>  obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
>  obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
> +obj-$(CONFIG_IMX7D_ADC) += imx7d_adc.o
> diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
> new file mode 100644
> index 000000000000..9820aaff1ac4
> --- /dev/null
> +++ b/drivers/aiodev/imx7d_adc.c
> @@ -0,0 +1,466 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Freescale i.MX7D ADC driver
> + *
> + * Copyright (C) 2015 Freescale Semiconductor, Inc.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <io.h>
> +#include <linux/printk.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <linux/kernel.h>
> +#include <linux/bitops.h>
> +#include <regulator.h>
> +#include <linux/barebox-wrapper.h>
> +
> +#include <linux/iopoll.h>
> +#include <aiodev.h>
> +
> +/* ADC register */
> +#define IMX7D_REG_ADC_CH_A_CFG1			0x00
> +#define IMX7D_REG_ADC_CH_A_CFG2			0x10
> +#define IMX7D_REG_ADC_CH_B_CFG1			0x20
> +#define IMX7D_REG_ADC_CH_B_CFG2			0x30
> +#define IMX7D_REG_ADC_CH_C_CFG1			0x40
> +#define IMX7D_REG_ADC_CH_C_CFG2			0x50
> +#define IMX7D_REG_ADC_CH_D_CFG1			0x60
> +#define IMX7D_REG_ADC_CH_D_CFG2			0x70

These defines are unused.

> +#define IMX7D_REG_ADC_CH_SW_CFG			0x80
> +#define IMX7D_REG_ADC_TIMER_UNIT		0x90
> +#define IMX7D_REG_ADC_DMA_FIFO			0xa0
> +#define IMX7D_REG_ADC_FIFO_STATUS		0xb0
> +#define IMX7D_REG_ADC_INT_SIG_EN		0xc0
> +#define IMX7D_REG_ADC_INT_EN			0xd0
> +#define IMX7D_REG_ADC_INT_STATUS		0xe0
> +#define IMX7D_REG_ADC_CHA_B_CNV_RSLT		0xf0
> +#define IMX7D_REG_ADC_CHC_D_CNV_RSLT		0x100
> +#define IMX7D_REG_ADC_CH_SW_CNV_RSLT		0x110
> +#define IMX7D_REG_ADC_DMA_FIFO_DAT		0x120
> +#define IMX7D_REG_ADC_ADC_CFG			0x130
> +
> +#define IMX7D_REG_ADC_CHANNEL_CFG2_BASE		0x10
> +#define IMX7D_EACH_CHANNEL_REG_OFFSET		0x20

Better something like:

#define IMX7D_REG_ADC_CFG1(ch)          ((ch) * 0x20)
#define IMX7D_REG_ADC_CFG2(ch)		((ch) * 0x20 + 0x10)

> +static void imx7d_adc_feature_config(struct imx7d_adc *info)
> +{
> +	info->adc_feature.clk_pre_div = IMX7D_ADC_ANALOG_CLK_PRE_DIV_4;
> +	info->adc_feature.avg_num = IMX7D_ADC_AVERAGE_NUM_32;
> +	info->adc_feature.core_time_unit = 1;
> +}
> +
> +static void imx7d_adc_sample_rate_set(struct imx7d_adc *info)
> +{
> +	struct imx7d_adc_feature *adc_feature = &info->adc_feature;
> +	struct imx7d_adc_analogue_core_clk adc_analogure_clk;

s/adc_analogure_clk/adc_analogue_clk/

> +	u32 i;

unsigned int?

> +	u32 tmp_cfg1;
> +	u32 sample_rate = 0;
> +
> +	/*
> +	 * Before sample set, disable channel A,B,C,D. Here we
> +	 * clear the bit 31 of register REG_ADC_CH_A\B\C\D_CFG1.
> +	 */
> +	for (i = 0; i < 4; i++) {
> +		tmp_cfg1 =
> +			readl(info->regs + i * IMX7D_EACH_CHANNEL_REG_OFFSET);
> +		tmp_cfg1 &= ~IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN;
> +		writel(tmp_cfg1,
> +		       info->regs + i * IMX7D_EACH_CHANNEL_REG_OFFSET);
> +	}
> +
> +	adc_analogure_clk = imx7d_adc_analogue_clk[adc_feature->clk_pre_div];
> +	sample_rate |= adc_analogure_clk.reg_config;
> +	info->pre_div_num = adc_analogure_clk.pre_div;
> +
> +	sample_rate |= adc_feature->core_time_unit;
> +	writel(sample_rate, info->regs + IMX7D_REG_ADC_TIMER_UNIT);
> +}
> +
> +static void imx7d_adc_hw_init(struct imx7d_adc *info)
> +{
> +	u32 cfg;
> +
> +	/* power up and enable adc analogue core */
> +	cfg = readl(info->regs + IMX7D_REG_ADC_ADC_CFG);
> +	cfg &= ~(IMX7D_REG_ADC_ADC_CFG_ADC_CLK_DOWN |
> +		 IMX7D_REG_ADC_ADC_CFG_ADC_POWER_DOWN);
> +	cfg |= IMX7D_REG_ADC_ADC_CFG_ADC_EN;
> +	writel(cfg, info->regs + IMX7D_REG_ADC_ADC_CFG);
> +
> +#if 0
> +	/* enable channel A,B,C,D interrupt */
> +	writel(IMX7D_REG_ADC_INT_CHANNEL_INT_EN,
> +	       info->regs + IMX7D_REG_ADC_INT_SIG_EN);
> +	writel(IMX7D_REG_ADC_INT_CHANNEL_INT_EN,
> +	       info->regs + IMX7D_REG_ADC_INT_EN);
> +#endif
> +
> +	imx7d_adc_sample_rate_set(info);
> +}
> +
> +static void imx7d_adc_channel_set(struct imx7d_adc *info, u32 channel)
> +{
> +	u32 cfg1 = 0;
> +	u32 cfg2;
> +
> +	/* the channel choose single conversion, and enable average mode */
> +	cfg1 |= (IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN |
> +		 IMX7D_REG_ADC_CH_CFG1_CHANNEL_SINGLE |
> +		 IMX7D_REG_ADC_CH_CFG1_CHANNEL_AVG_EN);
> +
> +	/*
> +	 * physical channel 0 chose logical channel A
> +	 * physical channel 1 chose logical channel B
> +	 * physical channel 2 chose logical channel C
> +	 * physical channel 3 chose logical channel D
> +	 */
> +	cfg1 |= IMX7D_REG_ADC_CH_CFG1_CHANNEL_SEL(channel);
> +
> +	/*
> +	 * read register REG_ADC_CH_A\B\C\D_CFG2, according to the
> +	 * channel chosen
> +	 */
> +	cfg2 = readl(info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel +
> +		     IMX7D_REG_ADC_CHANNEL_CFG2_BASE);
> +
> +	cfg2 |= imx7d_adc_average_num[info->adc_feature.avg_num];
> +
> +	/*
> +	 * write the register REG_ADC_CH_A\B\C\D_CFG2, according to
> +	 * the channel chosen
> +	 */
> +	writel(cfg2, info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel +
> +	       IMX7D_REG_ADC_CHANNEL_CFG2_BASE);
> +	writel(cfg1, info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel);
> +}
> +
> +static u16 imx7d_adc_read_data(struct imx7d_adc *info, u32 channel)
> +{
> +	u32 value;
> +
> +	/*
> +	 * channel A and B conversion result share one register,
> +	 * bit[27~16] is the channel B conversion result,
> +	 * bit[11~0] is the channel A conversion result.
> +	 * channel C and D is the same.
> +	 */
> +	if (channel < 2)
> +		value = readl(info->regs + IMX7D_REG_ADC_CHA_B_CNV_RSLT);
> +	else
> +		value = readl(info->regs + IMX7D_REG_ADC_CHC_D_CNV_RSLT);
> +	if (channel & 0x1)	/* channel B or D */
> +		value = (value >> 16) & 0xFFF;
> +	else			/* channel A or C */
> +		value &= 0xFFF;
> +
> +	return value;
> +}
> +
> +static int imx7d_adc_isr(struct imx7d_adc *info, u32 channel)
> +{
> +	int ret = -EAGAIN;
> +	int status;
> +
> +	status = readl(info->regs + IMX7D_REG_ADC_INT_STATUS);
> +	if (status & IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS) {
> +		ret = imx7d_adc_read_data(info, channel);

Returning the adc data from a function named _isr in conjunction with
using a variable named 'ret' for both error codes and adc data makes the
code unnecessarily hard to follow. Could you refactor a bit to make this
more readable?

> +
> +		/*
> +		 * The register IMX7D_REG_ADC_INT_STATUS can't clear
> +		 * itself after read operation, need software to write
> +		 * 0 to the related bit. Here we clear the channel A/B/C/D
> +		 * conversion finished flag.
> +		 */
> +		status &= ~IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS;
> +		writel(status, info->regs + IMX7D_REG_ADC_INT_STATUS);
> +	}
> +
> +	/*
> +	 * If the channel A/B/C/D conversion timeout, report it and clear these
> +	 * timeout flags.
> +	 */
> +	if (status & IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT) {
> +		dev_err(info->dev,
> +			"ADC got conversion time out interrupt: 0x%08x\n",
> +			status);
> +		status &= ~IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT;
> +		writel(status, info->regs + IMX7D_REG_ADC_INT_STATUS);
> +		ret = -ETIMEDOUT;
> +	}
> +
> +	return ret;
> +}
> +
> +
> +static int imx7d_adc_read_raw(struct aiochannel *chan, int *data)
> +{
> +	struct imx7d_adc *info = container_of(chan->aiodev, struct imx7d_adc, aiodev);
> +	u64 raw64, start;
> +	u32 channel;
> +	int ret;
> +
> +	channel = chan->index & 0x03;

You are registering 16 channels, but here you limit to a maximum of four
channels.

> +	imx7d_adc_channel_set(info, channel);
> +
> +	start = get_time_ns();
> +	do {
> +		if (is_timeout(start, IMX7D_ADC_TIMEOUT_NSEC)) {
> +			ret = -ETIMEDOUT;
> +			break;
> +		}
> +
> +		ret = imx7d_adc_isr(info, channel);
> +	} while (ret == -EAGAIN);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	raw64 = ret;
> +	raw64 *= info->vref_uv;
> +	raw64 = div_u64(raw64, 1000);
> +	*data = div_u64(raw64, (1 << 12));
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id imx7d_adc_match[] = {
> +	{ .compatible = "fsl,imx7d-adc", },
> +	{ /* sentinel */ }
> +};
> +
> +static void imx7d_adc_power_down(struct imx7d_adc *info)
> +{
> +	u32 adc_cfg;
> +
> +	adc_cfg = readl(info->regs + IMX7D_REG_ADC_ADC_CFG);
> +	adc_cfg |= IMX7D_REG_ADC_ADC_CFG_ADC_CLK_DOWN |
> +		   IMX7D_REG_ADC_ADC_CFG_ADC_POWER_DOWN;
> +	adc_cfg &= ~IMX7D_REG_ADC_ADC_CFG_ADC_EN;
> +	writel(adc_cfg, info->regs + IMX7D_REG_ADC_ADC_CFG);
> +}
> +
> +static int imx7d_adc_enable(struct imx7d_adc *info)
> +{
> +	struct device_d *dev = info->dev;
> +	int ret;
> +
> +	ret = regulator_enable(info->vref);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Can't enable adc reference top voltage\n");
> +
> +	ret = clk_enable(info->clk);
> +	if (ret) {
> +		regulator_disable(info->vref);
> +		return dev_err_probe(dev, ret, "Could not enable clock.\n");
> +	}
> +
> +	imx7d_adc_hw_init(info);
> +
> +	ret = regulator_get_voltage(info->vref);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "can't get vref-supply value\n");
> +
> +	info->vref_uv = ret;
> +	return 0;
> +}
> +
> +static u32 imx7d_adc_get_sample_rate(struct imx7d_adc *info)
> +{
> +	u32 analogue_core_clk;
> +	u32 core_time_unit = info->adc_feature.core_time_unit;
> +	u32 tmp;
> +
> +	analogue_core_clk = IMX7D_ADC_INPUT_CLK / info->pre_div_num;
> +	tmp = (core_time_unit + 1) * 6;
> +
> +	return analogue_core_clk / tmp;
> +}
> +
> +static void imx7d_adc_devinfo(struct device_d *dev)
> +{
> +	struct imx7d_adc *info = dev->priv;
> +
> +	if (info->aiodev_info)
> +		info->aiodev_info(dev);
> +
> +	printf("Sample Rate: %u\n", imx7d_adc_get_sample_rate(info));
> +}
> +
> +static int imx7d_adc_probe(struct device_d *dev)
> +{
> +	struct aiodevice *aiodev;
> +	struct imx7d_adc *info;
> +	int ret, i;
> +
> +	info = xzalloc(sizeof(*info));
> +
> +	info->dev = dev;
> +
> +	info->clk = clk_get(dev, "adc");
> +	if (IS_ERR(info->clk))
> +		return dev_err_probe(dev, PTR_ERR(info->clk), "Failed getting clock\n");
> +
> +	info->vref = regulator_get(dev, "vref");
> +	if (IS_ERR(info->vref))
> +		return dev_err_probe(dev, PTR_ERR(info->vref),
> +				     "Failed getting reference voltage\n");
> +
> +	info->regs = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(info->regs))
> +		return dev_err_probe(dev, PTR_ERR(info->regs),
> +				     "Failed to get memory region\n");
> +
> +	dev->priv = aiodev = &info->aiodev;
> +
> +	aiodev->num_channels = 16;
> +	aiodev->hwdev = dev;
> +	aiodev->read = imx7d_adc_read_raw;
> +	aiodev->channels = xmalloc(aiodev->num_channels * sizeof(aiodev->channels[0]));;

Use xzalloc to make sure all fields are initialized.

One semicolon too much at the end of this line.

> +
> +	for (i = 0; i < aiodev->num_channels; i++) {
> +		aiodev->channels[i] = &info->aiochan[i];
> +		info->aiochan[i].unit = "mV";
> +	}
> +
> +	imx7d_adc_feature_config(info);
> +
> +	ret = imx7d_adc_enable(info);
> +	if (ret)
> +		return ret;
> +
> +	ret = aiodevice_register(aiodev);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to register aiodev\n");
> +
> +	info->aiodev_info = aiodev->dev.info;
> +	aiodev->dev.info = imx7d_adc_devinfo;
> +
> +	return 0;
> +}
> +
> +static void imx7d_adc_disable(struct device_d *dev)
> +{
> +	struct imx7d_adc *info = dev->priv;

dev->priv is set to &info->aiodev above.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


