Delivery-date: Mon, 04 Sep 2023 12:52:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd7Bp-003cFd-QO
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 12:52:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd7Bn-0003OB-5L
	for lore@pengutronix.de; Mon, 04 Sep 2023 12:52:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hRiPX5J9tkUvVmaRSXtQQfoz54bDLmJ9M3I/vmqP2M=; b=HYziipfc8ypw50VI2+pD6+0gp0
	3JPo9A3qe3buP8g3XejsmlEb9971LuSRyUP7FBgKvDB/Xvwg9rSHyyxXadKx9eC+ons5FF0+/zOyC
	aOprFAmnjKZ+qQXxw8usS5yH1IBGganpdnUgxX3kVaSZzQ6Ft/3nOOsqoy9icRHbHLfSeshAUhZ2I
	4ZUgF2FZVXqwyRP+0EBoDzUEuD2V6U22PnI3IqSK4Z+cBCxQNGOyh6sBiYcX/OjMLcUw6pxBGVCtZ
	ZBcEhxwXyqkz1pgR+cic8uB8H7P6ShjRxHmyJ6gsPP352Pfi6zOC7ETSmiHB9Db0GTaQK/uQzANG+
	HrZmR4tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd7Aa-003x9t-29;
	Mon, 04 Sep 2023 10:51:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd7AW-003x9H-0g
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 10:50:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd7AU-0001B5-T3; Mon, 04 Sep 2023 12:50:54 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd7AU-003rIP-Dq; Mon, 04 Sep 2023 12:50:54 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd7AT-000zq2-Sy; Mon, 04 Sep 2023 12:50:53 +0200
Date: Mon, 4 Sep 2023 12:50:53 +0200
To: Christian Eggers <ceggers@arri.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230904105053.GH189379@pengutronix.de>
References: <20230825100031.11647-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825100031.11647-1-ceggers@arri.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_035056_555023_2972DF0A 
X-CRM114-Status: GOOD (  38.01  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: port Linux vf610-adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Aug 25, 2023 at 12:00:31PM +0200, Christian Eggers wrote:
> This driver works with the ADC on i.MX6SLX, i.MX6UL and i.MX6ULL.
> Port the Linux v6.4 driver of the peripheral to make them usable in
> barebox.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
> This port has been heavily inspired by the imx7d_adc driver,
> ported by Ahmad Fatoum.
> 
>  drivers/aiodev/Kconfig     |   7 +
>  drivers/aiodev/Makefile    |   1 +
>  drivers/aiodev/vf610_adc.c | 620 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 628 insertions(+)
>  create mode 100644 drivers/aiodev/vf610_adc.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> index 5c8706ffef4a..e1edc25320f3 100644
> --- a/drivers/aiodev/Kconfig
> +++ b/drivers/aiodev/Kconfig
> @@ -73,4 +73,11 @@ config IMX7D_ADC
>  	help
>  	  Say yes here to build support for IMX7D ADC.
>  
> +config VF610_ADC
> +	tristate "Freescale vf610 ADC driver"
> +	depends on ARCH_IMX6 || COMPILE_TEST
> +	help
> +	  Say yes here to support for Vybrid board analog-to-digital converter.
> +	  Since the IP is used for i.MX6SLX, the driver also support i.MX6SLX.
> +
>  endif
> diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
> index 9cb11605ed09..ce95d5be2fb6 100644
> --- a/drivers/aiodev/Makefile
> +++ b/drivers/aiodev/Makefile
> @@ -10,3 +10,4 @@ obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
>  obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
>  obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
>  obj-$(CONFIG_IMX7D_ADC) += imx7d_adc.o
> +obj-$(CONFIG_VF610_ADC) += vf610_adc.o
> diff --git a/drivers/aiodev/vf610_adc.c b/drivers/aiodev/vf610_adc.c
> new file mode 100644
> index 000000000000..cb062e08460e
> --- /dev/null
> +++ b/drivers/aiodev/vf610_adc.c
> @@ -0,0 +1,620 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Freescale Vybrid vf610 ADC driver
> + *
> + * Copyright 2013 Freescale Semiconductor, Inc.
> + */
> +
> +#include <clock.h>
> +#include <io.h>
> +#include <linux/printk.h>
> +#include <driver.h>
> +#include <init.h>
> +
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +#include <linux/clk.h>
> +#include <regulator.h>
> +#include <linux/err.h>
> +
> +#include <aiodev.h>
> +
> +/* This will be the driver name the kernel reports */
> +#define DRIVER_NAME "vf610-adc"
> +
> +/* Vybrid/IMX ADC registers */
> +#define VF610_REG_ADC_HC0		0x00
> +#define VF610_REG_ADC_HS		0x08
> +#define VF610_REG_ADC_R0		0x0c
> +#define VF610_REG_ADC_CFG		0x14
> +#define VF610_REG_ADC_GC		0x18
> +#define VF610_REG_ADC_GS		0x1c
> +
> +/* Configuration register field define */
> +#define VF610_ADC_MODE_BIT8		0x00
> +#define VF610_ADC_MODE_BIT10		0x04
> +#define VF610_ADC_MODE_BIT12		0x08
> +#define VF610_ADC_MODE_MASK		0x0c
> +#define VF610_ADC_BUSCLK2_SEL		0x01
> +#define VF610_ADC_ALTCLK_SEL		0x02
> +#define VF610_ADC_ADACK_SEL		0x03
> +#define VF610_ADC_ADCCLK_MASK		0x03
> +#define VF610_ADC_CLK_DIV2		0x20
> +#define VF610_ADC_CLK_DIV4		0x40
> +#define VF610_ADC_CLK_DIV8		0x60
> +#define VF610_ADC_CLK_MASK		0x60
> +#define VF610_ADC_ADLSMP_LONG		0x10
> +#define VF610_ADC_ADSTS_SHORT   0x100
> +#define VF610_ADC_ADSTS_NORMAL  0x200
> +#define VF610_ADC_ADSTS_LONG    0x300
> +#define VF610_ADC_ADSTS_MASK		0x300
> +#define VF610_ADC_ADLPC_EN		0x80
> +#define VF610_ADC_ADHSC_EN		0x400
> +#define VF610_ADC_REFSEL_VALT		0x800
> +#define VF610_ADC_REFSEL_VBG		0x1000
> +#define VF610_ADC_AVGS_8		0x4000
> +#define VF610_ADC_AVGS_16		0x8000
> +#define VF610_ADC_AVGS_32		0xC000
> +#define VF610_ADC_AVGS_MASK		0xC000
> +#define VF610_ADC_OVWREN		0x10000
> +
> +/* General control register field define */
> +#define VF610_ADC_AVGEN			0x20
> +#define VF610_ADC_CAL			0x80
> +
> +/* Other field define */
> +#define VF610_ADC_ADCHC(x)		((x) & 0x1F)
> +#define VF610_ADC_CONV_DISABLE		0x1F
> +#define VF610_ADC_HS_COCO0		0x1
> +#define VF610_ADC_CALF			0x2
> +#define VF610_ADC_TIMEOUT_NSEC	(100 * NSEC_PER_MSEC)
> +
> +#define DEFAULT_SAMPLE_TIME		1000
> +
> +enum clk_sel {
> +	VF610_ADCIOC_BUSCLK_SET,
> +	VF610_ADCIOC_ALTCLK_SET,
> +	VF610_ADCIOC_ADACK_SET,
> +};
> +
> +enum vol_ref {
> +	VF610_ADCIOC_VR_VREF_SET,
> +	VF610_ADCIOC_VR_VALT_SET,
> +	VF610_ADCIOC_VR_VBG_SET,
> +};
> +
> +enum average_sel {
> +	VF610_ADC_SAMPLE_1,
> +	VF610_ADC_SAMPLE_4,
> +	VF610_ADC_SAMPLE_8,
> +	VF610_ADC_SAMPLE_16,
> +	VF610_ADC_SAMPLE_32,
> +};
> +
> +enum conversion_mode_sel {
> +	VF610_ADC_CONV_NORMAL,
> +	VF610_ADC_CONV_HIGH_SPEED,
> +	VF610_ADC_CONV_LOW_POWER,
> +};
> +
> +enum lst_adder_sel {
> +	VF610_ADCK_CYCLES_3,
> +	VF610_ADCK_CYCLES_5,
> +	VF610_ADCK_CYCLES_7,
> +	VF610_ADCK_CYCLES_9,
> +	VF610_ADCK_CYCLES_13,
> +	VF610_ADCK_CYCLES_17,
> +	VF610_ADCK_CYCLES_21,
> +	VF610_ADCK_CYCLES_25,
> +};
> +
> +struct vf610_adc_feature {
> +	enum clk_sel	clk_sel;
> +	enum vol_ref	vol_ref;
> +	enum conversion_mode_sel conv_mode;
> +
> +	int	clk_div;
> +	int     sample_rate;
> +	int	res_mode;
> +	u32 lst_adder_index;
> +	u32 default_sample_time;
> +
> +	bool	calibration;
> +	bool	ovwren;
> +};
> +
> +struct vf610_adc {
> +	struct device *dev;
> +	void __iomem *regs;
> +	struct clk *clk;
> +	struct aiodevice aiodev;
> +	void (*aiodev_info)(struct device *);
> +
> +	u32 vref_uv;
> +	u32 value;
> +	struct regulator *vref;
> +
> +	u32 max_adck_rate[3];
> +	struct vf610_adc_feature adc_feature;
> +
> +	u32 sample_freq_avail[5];
> +
> +	struct aiochannel aiochan[16];
> +};
> +
> +static const u32 vf610_hw_avgs[] = { 1, 4, 8, 16, 32 };
> +static const u32 vf610_lst_adder[] = { 3, 5, 7, 9, 13, 17, 21, 25 };
> +
> +static inline void vf610_adc_calculate_rates(struct vf610_adc *info)
> +{
> +	struct vf610_adc_feature *adc_feature = &info->adc_feature;
> +	unsigned long adck_rate, ipg_rate = clk_get_rate(info->clk);
> +	u32 adck_period, lst_addr_min;
> +	int divisor, i;
> +
> +	adck_rate = info->max_adck_rate[adc_feature->conv_mode];
> +
> +	if (adck_rate) {
> +		/* calculate clk divider which is within specification */
> +		divisor = ipg_rate / adck_rate;
> +		adc_feature->clk_div = 1 << fls(divisor + 1);
> +	} else {
> +		/* fall-back value using a safe divisor */
> +		adc_feature->clk_div = 8;
> +	}
> +
> +	adck_rate = ipg_rate / adc_feature->clk_div;
> +
> +	/*
> +	 * Determine the long sample time adder value to be used based
> +	 * on the default minimum sample time provided.
> +	 */
> +	adck_period = NSEC_PER_SEC / adck_rate;
> +	lst_addr_min = adc_feature->default_sample_time / adck_period;
> +	for (i = 0; i < ARRAY_SIZE(vf610_lst_adder); i++) {
> +		if (vf610_lst_adder[i] > lst_addr_min) {
> +			adc_feature->lst_adder_index = i;
> +			break;
> +		}
> +	}
> +
> +	/*
> +	 * Calculate ADC sample frequencies
> +	 * Sample time unit is ADCK cycles. ADCK clk source is ipg clock,
> +	 * which is the same as bus clock.
> +	 *
> +	 * ADC conversion time = SFCAdder + AverageNum x (BCT + LSTAdder)
> +	 * SFCAdder: fixed to 6 ADCK cycles
> +	 * AverageNum: 1, 4, 8, 16, 32 samples for hardware average.
> +	 * BCT (Base Conversion Time): fixed to 25 ADCK cycles for 12 bit mode
> +	 * LSTAdder(Long Sample Time): 3, 5, 7, 9, 13, 17, 21, 25 ADCK cycles
> +	 */
> +	for (i = 0; i < ARRAY_SIZE(vf610_hw_avgs); i++)
> +		info->sample_freq_avail[i] =
> +			adck_rate / (6 + vf610_hw_avgs[i] *
> +			 (25 + vf610_lst_adder[adc_feature->lst_adder_index]));
> +}
> +
> +static inline void vf610_adc_cfg_init(struct vf610_adc *info)
> +{
> +	struct vf610_adc_feature *adc_feature = &info->adc_feature;
> +
> +	/* set default Configuration for ADC controller */
> +	adc_feature->clk_sel = VF610_ADCIOC_BUSCLK_SET;
> +	adc_feature->vol_ref = VF610_ADCIOC_VR_VREF_SET;
> +
> +	adc_feature->calibration = true;
> +	adc_feature->ovwren = true;
> +
> +	adc_feature->res_mode = 12;
> +	adc_feature->sample_rate = 1;
> +
> +	adc_feature->conv_mode = VF610_ADC_CONV_LOW_POWER;
> +
> +	vf610_adc_calculate_rates(info);
> +}
> +
> +static void vf610_adc_cfg_post_set(struct vf610_adc *info)
> +{
> +	struct vf610_adc_feature *adc_feature = &info->adc_feature;
> +	int cfg_data = 0;
> +	int gc_data = 0;
> +
> +	switch (adc_feature->clk_sel) {
> +	case VF610_ADCIOC_ALTCLK_SET:
> +		cfg_data |= VF610_ADC_ALTCLK_SEL;
> +		break;
> +	case VF610_ADCIOC_ADACK_SET:
> +		cfg_data |= VF610_ADC_ADACK_SEL;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	/* low power set for calibration */
> +	cfg_data |= VF610_ADC_ADLPC_EN;
> +
> +	/* enable high speed for calibration */
> +	cfg_data |= VF610_ADC_ADHSC_EN;
> +
> +	/* voltage reference */
> +	switch (adc_feature->vol_ref) {
> +	case VF610_ADCIOC_VR_VREF_SET:
> +		break;
> +	case VF610_ADCIOC_VR_VALT_SET:
> +		cfg_data |= VF610_ADC_REFSEL_VALT;
> +		break;
> +	case VF610_ADCIOC_VR_VBG_SET:
> +		cfg_data |= VF610_ADC_REFSEL_VBG;
> +		break;
> +	default:
> +		dev_err(info->dev, "error voltage reference\n");
> +	}
> +
> +	/* data overwrite enable */
> +	if (adc_feature->ovwren)
> +		cfg_data |= VF610_ADC_OVWREN;
> +
> +	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
> +	writel(gc_data, info->regs + VF610_REG_ADC_GC);
> +}
> +
> +static void vf610_adc_calibration(struct vf610_adc *info)
> +{
> +	int adc_gc, hc_cfg;
> +	u64 start;
> +	int coco;
> +
> +	if (!info->adc_feature.calibration)
> +		return;
> +
> +	hc_cfg = VF610_ADC_CONV_DISABLE;
> +	writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);
> +
> +	adc_gc = readl(info->regs + VF610_REG_ADC_GC);
> +	writel(adc_gc | VF610_ADC_CAL, info->regs + VF610_REG_ADC_GC);
> +
> +	start = get_time_ns();
> +	do {
> +		if (is_timeout(start, VF610_ADC_TIMEOUT_NSEC)) {
> +			dev_err(info->dev, "Timeout for adc calibration\n");
> +			break;
> +		}
> +
> +		coco = readl(info->regs + VF610_REG_ADC_HS);
> +	} while (!(coco & VF610_ADC_HS_COCO0));
> +
> +	adc_gc = readl(info->regs + VF610_REG_ADC_GS);
> +	if (adc_gc & VF610_ADC_CALF)
> +		dev_err(info->dev, "ADC calibration failed\n");
> +
> +	info->adc_feature.calibration = false;
> +}
> +
> +static void vf610_adc_cfg_set(struct vf610_adc *info)
> +{
> +	struct vf610_adc_feature *adc_feature = &(info->adc_feature);
> +	int cfg_data;
> +
> +	cfg_data = readl(info->regs + VF610_REG_ADC_CFG);
> +
> +	cfg_data &= ~VF610_ADC_ADLPC_EN;
> +	if (adc_feature->conv_mode == VF610_ADC_CONV_LOW_POWER)
> +		cfg_data |= VF610_ADC_ADLPC_EN;
> +
> +	cfg_data &= ~VF610_ADC_ADHSC_EN;
> +	if (adc_feature->conv_mode == VF610_ADC_CONV_HIGH_SPEED)
> +		cfg_data |= VF610_ADC_ADHSC_EN;
> +
> +	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
> +}
> +
> +static void vf610_adc_sample_set(struct vf610_adc *info)
> +{
> +	struct vf610_adc_feature *adc_feature = &(info->adc_feature);
> +	int cfg_data, gc_data;
> +
> +	cfg_data = readl(info->regs + VF610_REG_ADC_CFG);
> +	gc_data = readl(info->regs + VF610_REG_ADC_GC);
> +
> +	/* resolution mode */
> +	cfg_data &= ~VF610_ADC_MODE_MASK;
> +	switch (adc_feature->res_mode) {
> +	case 8:
> +		cfg_data |= VF610_ADC_MODE_BIT8;
> +		break;
> +	case 10:
> +		cfg_data |= VF610_ADC_MODE_BIT10;
> +		break;
> +	case 12:
> +		cfg_data |= VF610_ADC_MODE_BIT12;
> +		break;
> +	default:
> +		dev_err(info->dev, "error resolution mode\n");
> +		break;
> +	}
> +
> +	/* clock select and clock divider */
> +	cfg_data &= ~(VF610_ADC_CLK_MASK | VF610_ADC_ADCCLK_MASK);
> +	switch (adc_feature->clk_div) {
> +	case 1:
> +		break;
> +	case 2:
> +		cfg_data |= VF610_ADC_CLK_DIV2;
> +		break;
> +	case 4:
> +		cfg_data |= VF610_ADC_CLK_DIV4;
> +		break;
> +	case 8:
> +		cfg_data |= VF610_ADC_CLK_DIV8;
> +		break;
> +	case 16:
> +		switch (adc_feature->clk_sel) {
> +		case VF610_ADCIOC_BUSCLK_SET:
> +			cfg_data |= VF610_ADC_BUSCLK2_SEL | VF610_ADC_CLK_DIV8;
> +			break;
> +		default:
> +			dev_err(info->dev, "error clk divider\n");
> +			break;
> +		}
> +		break;
> +	}
> +
> +	/*
> +	 * Set ADLSMP and ADSTS based on the Long Sample Time Adder value
> +	 * determined.
> +	 */
> +	switch (adc_feature->lst_adder_index) {
> +	case VF610_ADCK_CYCLES_3:
> +		break;
> +	case VF610_ADCK_CYCLES_5:
> +		cfg_data |= VF610_ADC_ADSTS_SHORT;
> +		break;
> +	case VF610_ADCK_CYCLES_7:
> +		cfg_data |= VF610_ADC_ADSTS_NORMAL;
> +		break;
> +	case VF610_ADCK_CYCLES_9:
> +		cfg_data |= VF610_ADC_ADSTS_LONG;
> +		break;
> +	case VF610_ADCK_CYCLES_13:
> +		cfg_data |= VF610_ADC_ADLSMP_LONG;
> +		break;
> +	case VF610_ADCK_CYCLES_17:
> +		cfg_data |= VF610_ADC_ADLSMP_LONG;
> +		cfg_data |= VF610_ADC_ADSTS_SHORT;
> +		break;
> +	case VF610_ADCK_CYCLES_21:
> +		cfg_data |= VF610_ADC_ADLSMP_LONG;
> +		cfg_data |= VF610_ADC_ADSTS_NORMAL;
> +		break;
> +	case VF610_ADCK_CYCLES_25:
> +		cfg_data |= VF610_ADC_ADLSMP_LONG;
> +		cfg_data |= VF610_ADC_ADSTS_NORMAL;
> +		break;
> +	default:
> +		dev_err(info->dev, "error in sample time select\n");
> +	}
> +
> +	/* update hardware average selection */
> +	cfg_data &= ~VF610_ADC_AVGS_MASK;
> +	gc_data &= ~VF610_ADC_AVGEN;
> +	switch (adc_feature->sample_rate) {
> +	case VF610_ADC_SAMPLE_1:
> +		break;
> +	case VF610_ADC_SAMPLE_4:
> +		gc_data |= VF610_ADC_AVGEN;
> +		break;
> +	case VF610_ADC_SAMPLE_8:
> +		gc_data |= VF610_ADC_AVGEN;
> +		cfg_data |= VF610_ADC_AVGS_8;
> +		break;
> +	case VF610_ADC_SAMPLE_16:
> +		gc_data |= VF610_ADC_AVGEN;
> +		cfg_data |= VF610_ADC_AVGS_16;
> +		break;
> +	case VF610_ADC_SAMPLE_32:
> +		gc_data |= VF610_ADC_AVGEN;
> +		cfg_data |= VF610_ADC_AVGS_32;
> +		break;
> +	default:
> +		dev_err(info->dev,
> +			"error hardware sample average select\n");
> +	}
> +
> +	writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
> +	writel(gc_data, info->regs + VF610_REG_ADC_GC);
> +}
> +
> +static void vf610_adc_hw_init(struct vf610_adc *info)
> +{
> +	/* CFG: Feature set */
> +	vf610_adc_cfg_post_set(info);
> +	vf610_adc_sample_set(info);
> +
> +	/* adc calibration */
> +	vf610_adc_calibration(info);
> +
> +	/* CFG: power and speed set */
> +	vf610_adc_cfg_set(info);
> +}
> +
> +static int __vf610_adc_read_data(struct vf610_adc *info)
> +{
> +	int result;
> +
> +	result = readl(info->regs + VF610_REG_ADC_R0);
> +
> +	switch (info->adc_feature.res_mode) {
> +	case 8:
> +		result &= 0xFF;
> +		break;
> +	case 10:
> +		result &= 0x3FF;
> +		break;
> +	case 12:
> +		result &= 0xFFF;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return result;
> +}
> +
> +static int vf610_adc_read_data(struct vf610_adc *info)
> +{
> +	int coco;
> +	int ret = -EAGAIN;
> +
> +	coco = readl(info->regs + VF610_REG_ADC_HS);
> +	if (coco & VF610_ADC_HS_COCO0) {
> +		ret = __vf610_adc_read_data(info);
> +	}
> +
> +	return ret;
> +}
> +
> +static int vf610_read_sample(struct aiochannel *chan, int *val)
> +{
> +	struct vf610_adc *info = container_of(chan->aiodev, struct vf610_adc, aiodev);
> +	unsigned int hc_cfg;
> +	u64 raw64, start;
> +	int ret;
> +
> +	hc_cfg = VF610_ADC_ADCHC(chan->index & 0x0f);
> +	writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);
> +
> +	start = get_time_ns();
> +	do {
> +		if (is_timeout(start, VF610_ADC_TIMEOUT_NSEC)) {
> +			ret = -ETIMEDOUT;
> +			break;
> +		}
> +
> +		ret = vf610_adc_read_data(info);
> +	} while (ret == -EAGAIN);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	raw64 = ret;
> +	raw64 *= info->vref_uv;
> +	raw64 = div_u64(raw64, 1000);
> +	*val = div_u64(raw64, (1 << 12));
> +
> +	return 0;
> +}
> +
> +
> +static const struct of_device_id vf610_adc_match[] = {
> +	{ .compatible = "fsl,vf610-adc", },
> +	{ /* sentinel */ }
> +};
> +
> +static void vf610_adc_devinfo(struct device *dev)
> +{
> +	struct vf610_adc *info = dev->parent->priv;
> +
> +	if (info->aiodev_info)
> +		info->aiodev_info(dev);
> +
> +	pr_info("Sample Rate: %u\n", info->sample_freq_avail[info->adc_feature.sample_rate]);
> +}
> +
> +static int vf610_adc_probe(struct device *dev)
> +{
> +	struct aiodevice *aiodev;
> +	struct vf610_adc *info;
> +	int ret, i;
> +
> +	info = xzalloc(sizeof(*info));
> +	info->dev = dev;
> +
> +	info->regs = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(info->regs))
> +		return PTR_ERR(info->regs);
> +
> +	info->clk = clk_get(dev, "adc");
> +	if (IS_ERR(info->clk)) {
> +		dev_err(dev, "failed getting clock, err = %ld\n",
> +						PTR_ERR(info->clk));
> +		return PTR_ERR(info->clk);
> +	}
> +
> +	info->vref = regulator_get(dev, "vref");
> +	if (IS_ERR(info->vref))
> +		return PTR_ERR(info->vref);
> +
> +	of_property_read_u32_array(dev->device_node, "fsl,adck-max-frequency", info->max_adck_rate, 3);
> +
> +	info->adc_feature.default_sample_time = DEFAULT_SAMPLE_TIME;
> +	of_property_read_u32(dev->device_node, "min-sample-time", &info->adc_feature.default_sample_time);
> +
> +	dev->priv = info;
> +	aiodev = &info->aiodev;
> +
> +	aiodev->num_channels = 16;
> +	aiodev->hwdev = dev;
> +	aiodev->read = vf610_read_sample;
> +	aiodev->channels = xzalloc(aiodev->num_channels * sizeof(aiodev->channels[0]));
> +
> +	for (i = 0; i < aiodev->num_channels; i++) {
> +		aiodev->channels[i] = &info->aiochan[i];
> +		info->aiochan[i].unit = "mV";
> +	}
> +
> +	ret = regulator_enable(info->vref);
> +	if (ret)
> +		return ret;
> +
> +	info->vref_uv = regulator_get_voltage(info->vref);
> +
> +	ret = clk_enable(info->clk);
> +	if (ret) {
> +		dev_err(dev,
> +			"Could not prepare or enable the clock.\n");
> +		goto error_adc_clk_enable;
> +	}
> +
> +	vf610_adc_cfg_init(info);
> +	vf610_adc_hw_init(info);
> +
> +	ret = aiodevice_register(aiodev);
> +	if (ret < 0) {
> +		dev_err(dev, "Couldn't register the device.\n");
> +		goto error_adc_buffer_init;
> +	}
> +
> +	info->aiodev_info = aiodev->dev.info;
> +	aiodev->dev.info = vf610_adc_devinfo;
> +
> +	return 0;
> +
> +error_adc_buffer_init:
> +	clk_disable(info->clk);
> +error_adc_clk_enable:
> +	regulator_disable(info->vref);
> +
> +	return ret;
> +}
> +
> +static void vf610_adc_remove(struct device *dev)
> +{
> +	struct vf610_adc *info = dev->priv;
> +
> +	regulator_disable(info->vref);
> +	clk_disable(info->clk);
> +}
> +
> +static struct driver vf610_adc_driver = {
> +	.probe          = vf610_adc_probe,
> +	.remove         = vf610_adc_remove,
> +	.name           = DRIVER_NAME,
> +	.of_compatible  = vf610_adc_match,
> +};
> +
> +device_platform_driver(vf610_adc_driver);
> +
> +MODULE_AUTHOR("Fugang Duan <B38611@freescale.com>");
> +MODULE_DESCRIPTION("Freescale VF610 ADC driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.35.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


