Delivery-date: Wed, 23 Jun 2021 10:24:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvyBf-0008Mn-MR
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 10:24:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvyBe-0004Kb-8Z
	for lore@pengutronix.de; Wed, 23 Jun 2021 10:24:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=572YQLR3wwAWndvNwKv7aasRuRu8Jlw98CAyiNfxElE=; b=Cyjp2fedu1cR8xDWvnXyH3/xaA
	IwaBrpMt+K1JVpi9lFbX8BSKHDvMGGJoG2hlvlA7ZDEoNNEyRjsH3plkkEORjvcXAyxCwc+Fen7/T
	nRgNulVBwxb+SSu0LvP6pIp//nmtTpOKUi7mP2ajH3DLBu6KtohwWYkdzqffrwpcHmV30rkFSkbix
	eonBgkdkfdMmnBpcVug2c/UUQXnkvBBaLSSCT0gjfnhIeexJj/Hy9x7MH41zZTgdFDlfKa8eHCqJC
	kvHvwkohZ5G6E2jlAGZPquaIgSCiloXs/aBUz1DctFW9u6h7Rhtsek+hSr8KJ/axSwGscinQLT26k
	K90nc9bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvyAC-009vMa-B3; Wed, 23 Jun 2021 08:23:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvyA6-009vMB-4g
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 08:23:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvyA2-0004GO-Fs; Wed, 23 Jun 2021 10:23:02 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
References: <20210623075201.5328-1-michael.riesch@wolfvision.net>
 <20210623075201.5328-2-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <90e58f3d-90fd-9fdb-4ed5-8195f72c4c6d@pengutronix.de>
Date: Wed, 23 Jun 2021 10:22:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210623075201.5328-2-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_012306_408035_B6F0ADB5 
X-CRM114-Status: GOOD (  45.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 23.06.21 09:52, Michael Riesch wrote:
> This commit adds support for the Successive Approximation Register (SAR)
> ADCs that can be found in Rockchip SoCs, such as the RK3568.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
> - fix timeout loop
> - remove spurious debug output
> - revise reference voltage handling
> - add handling of clocks
> 
>  drivers/aiodev/Kconfig           |   7 ++
>  drivers/aiodev/Makefile          |   1 +
>  drivers/aiodev/rockchip_saradc.c | 206 +++++++++++++++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 drivers/aiodev/rockchip_saradc.c
> 
> diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> index 88d013aad..98223a8f9 100644
> --- a/drivers/aiodev/Kconfig
> +++ b/drivers/aiodev/Kconfig
> @@ -50,4 +50,11 @@ config STM32_ADC
>  	  Support for ADC on STM32.  Supports simple one-shot readings
>  	  rather than continuous sampling with DMA, etc.  ADC channels should be
>  	  configured via device tree, using the kernel bindings.
> +
> +config ROCKCHIP_SARADC
> +	tristate "Rockchip SARADC driver"
> +	depends on ARCH_RK3568

Please change to depends on ARCH_RK3568 || COMPILE_TEST
depends on OFDEVICE

That way, this driver can be built with static analyzers for other architectures as well.

> +	help
> +	  Support for Successive Approximation Register (SAR) ADC in Rockchip
> +	  SoCs.
>  endif
> diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
> index 52652f67b..1b480f6fa 100644
> --- a/drivers/aiodev/Makefile
> +++ b/drivers/aiodev/Makefile
> @@ -6,3 +6,4 @@ obj-$(CONFIG_MC13XXX_ADC) += mc13xxx_adc.o
>  obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
>  obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
>  obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
> +obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
> diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
> new file mode 100644
> index 000000000..ae842eb1f
> --- /dev/null
> +++ b/drivers/aiodev/rockchip_saradc.c
> @@ -0,0 +1,206 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021, WolfVision GmbH
> + * Author: Michael Riesch <michael.riesch@wolfvision.net>
> + *
> + * Originally based on the Linux kernel v5.12 drivers/iio/adc/rockchip-saradc.c.
> + */
> +
> +#include <common.h>
> +#include <aiodev.h>
> +#include <linux/clk.h>
> +#include <regulator.h>
> +
> +#define SARADC_DATA	       0x00
> +
> +#define SARADC_CTRL	       0x08
> +#define SARADC_CTRL_IRQ_STATUS (1 << 6)
> +#define SARADC_CTRL_IRQ_ENABLE (1 << 5)
> +#define SARADC_CTRL_POWER_CTRL (1 << 3)
> +#define SARADC_CTRL_CHN_MASK   0x07
> +
> +#define SARADC_DLY_PU_SOC      0x0c
> +
> +#define SARADC_TIMEOUT	       100 /* ms */

Nitpick: SARADC_TIMEOUT_NS (100 * MSECOND)

Makes it harder to misuse.

> +
> +struct rockchip_saradc_cfg {
> +	unsigned int num_bits;
> +	unsigned int num_channels;
> +};
> +
> +struct rockchip_saradc_data {
> +	const struct rockchip_saradc_cfg *config;
> +	void __iomem *base;
> +	struct regulator *vref;
> +	unsigned int ref_voltage_mv;
> +	struct clk *cclk;
> +	struct clk *pclk;
> +	struct aiodevice aiodev;
> +	struct aiochannel *channels;
> +};
> +
> +static inline void rockchip_saradc_reg_wr(struct rockchip_saradc_data *data,
> +					  u32 value, u32 reg)
> +{
> +	writel(value, data->base + reg);
> +}
> +
> +static inline u32 rockchip_saradc_reg_rd(struct rockchip_saradc_data *data,
> +					 u32 reg)
> +{
> +	return readl(data->base + reg);
> +}
> +
> +static int rockchip_saradc_read(struct aiochannel *chan, int *val)
> +{
> +	struct rockchip_saradc_data *data;
> +	u32 value = 0;
> +	u32 control = 0;
> +	u32 mask;
> +	u64 start;
> +
> +	if (!chan || !val)
> +		return -EINVAL;

You don't ever see chan == NULL here, so the check isn't needed.
A buggy aiodev user can indeed pass val == NULL, but they could pass
(void *)1 as well and you would be none the wiser. It's expected, you are passed
valid pointers here, so the checks can be dropped.

> +
> +	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
> +	if (!data)
> +		return -EINVAL;

container_of can't fail. It's just pointer arithmetic.

> +
> +	rockchip_saradc_reg_wr(data, 8, SARADC_DLY_PU_SOC);
> +	rockchip_saradc_reg_wr(data,
> +			       (chan->index & SARADC_CTRL_CHN_MASK) |
> +				       SARADC_CTRL_IRQ_ENABLE |
> +				       SARADC_CTRL_POWER_CTRL,
> +			       SARADC_CTRL);
> +
> +	start = get_time_ns();
> +	do {
> +		control = rockchip_saradc_reg_rd(data, SARADC_CTRL);
> +
> +		if (is_timeout(start, SARADC_TIMEOUT * MSECOND))
> +			return -ETIMEDOUT;
> +	} while (!(control & SARADC_CTRL_IRQ_STATUS));
> +
> +	mask = (1 << data->config->num_bits) - 1;
> +	value = rockchip_saradc_reg_rd(data, SARADC_DATA) & mask;
> +	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
> +
> +	*val = (value * data->ref_voltage_mv) / mask;
> +
> +	return 0;
> +}
> +
> +static int rockchip_saradc_probe(struct device_d *dev)
> +{
> +	struct rockchip_saradc_data *data;
> +	int i, ret;
> +
> +	data = xzalloc(sizeof(struct rockchip_saradc_data));
> +	if (!data)
> +		return -ENOMEM;

Allocator functions starting with x panic barebox, so data is always != NULL
if they succeed. For big, frequent allocations calloc can be used instead, which
also zeroes, but fails with return NULL. For small one-time allocations xzalloc
is ok, but there is no point in checking its return value.

> +
> +	data->config = device_get_match_data(dev);
> +	if (!data->config) {

Nitpick: This can't ever happen.

> +		ret = -EINVAL;
> +		goto fail_data;
> +	}
> +	data->aiodev.hwdev = dev;
> +	data->aiodev.read = rockchip_saradc_read;
> +
> +	data->base = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(data->base)) {
> +		ret = PTR_ERR(data->base);
> +		goto fail_data;
> +	}
> +
> +	data->vref = regulator_get(dev, "vref");
> +	if (IS_ERR(data->vref)) {
> +		dev_err(dev, "can't get vref-supply: %pe\n", data->vref);
> +		ret = PTR_ERR(data->vref);
> +		goto fail_data;

Nitpick: You don't release the memory region you requested above.
So if you fail to get the regulator here and the probe is deferred,
you won't be able to reach this point here again as the second request
for memory would fail without releasing the first. Quite a few drivers
don't care about this failure mode, but given that you take care to free
your allocations, you may want to revert the others operations you do as well.

> +	}
> +
> +	ret = regulator_enable(data->vref);
> +	if (ret < 0) {
> +		dev_err(dev, "can't enable vref-supply value: %d\n", ret);
> +		goto fail_data;
> +	}
> +
> +	ret = regulator_get_voltage(data->vref);
> +	if (ret < 0) {
> +		dev_warn(dev, "can't get vref-supply value: %d\n", ret);
> +		/* use default value as fallback */
> +		ret = 1800000;
> +	}
> +	data->ref_voltage_mv = ret / 1000;
> +
> +	data->cclk = clk_get(dev, "saradc");
> +	if (IS_ERR(data->cclk)) {
> +		dev_err(dev, "can't get converter clock: %pe\n", data->cclk);
> +		ret = PTR_ERR(data->cclk);
> +		goto fail_data;
> +	}
> +
> +	ret = clk_enable(data->cclk);
> +	if (ret < 0) {
> +		dev_err(dev, "can't enable converter clock: %d\n", ret);
> +		goto fail_data;
> +	}
> +
> +	data->pclk = clk_get(dev, "apb_pclk");
> +	if (IS_ERR(data->pclk)) {
> +		dev_err(dev, "can't get peripheral clock: %pe\n", data->pclk);
> +		ret = PTR_ERR(data->pclk);
> +		goto fail_data;
> +	}
> +
> +	ret = clk_enable(data->pclk);
> +	if (ret < 0) {
> +		dev_err(dev, "can't enable peripheral clk: %d\n", ret);

FYI, you can have ERR_PTR(ret) here with %pe, to get an error string.

> +		goto fail_data;
> +	}

Nitpick: There is also clk_bulk_get and clk_bulk_enable to handle multiple clocks
at once, but for only two clocks, it's ok to do it separately.

> +
> +	data->aiodev.num_channels = data->config->num_channels;
> +	data->channels =
> +		xzalloc(sizeof(*data->channels) * data->aiodev.num_channels);
> +	data->aiodev.channels = xmalloc(sizeof(*data->aiodev.channels) *
> +					data->aiodev.num_channels);
> +	for (i = 0; i < data->aiodev.num_channels; i++) {
> +		data->aiodev.channels[i] = &data->channels[i];
> +		data->channels[i].unit = "mV";
> +	}
> +
> +	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
> +
> +	ret = aiodevice_register(&data->aiodev);
> +	if (ret)
> +		goto fail_channels;
> +
> +	dev_info(dev, "registered as %s\n", dev_name(&data->aiodev.dev));
> +	return 0;
> +
> +fail_channels:
> +	kfree(data->channels);
> +	kfree(data->aiodev.channels);
> +
> +fail_data:
> +	kfree(data);
> +	return ret;
> +}
> +
> +static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
> +	.num_bits = 10,
> +	.num_channels = 8,
> +};
> +
> +static const struct of_device_id of_rockchip_saradc_match[] = {
> +	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
> +	{ /* end */ }
> +};
> +
> +static struct driver_d rockchip_saradc_driver = {
> +	.name = "rockchip_saradc",
> +	.probe = rockchip_saradc_probe,
> +	.of_compatible = DRV_OF_COMPAT(of_rockchip_saradc_match),
> +};
> +device_platform_driver(rockchip_saradc_driver);
> --
> 2.20.1
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

