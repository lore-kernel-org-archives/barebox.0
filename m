Delivery-date: Tue, 25 Nov 2025 13:48:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNsTO-004jc9-2q
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 13:48:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNsTN-0008C2-Qx
	for lore@pengutronix.de; Tue, 25 Nov 2025 13:48:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DeEyu4Dw0eT4re9oghe/tGHBzzQH+Vo5uxHWRDWUeuI=; b=Me69KM+0vF8aaGagGyRNquoB9d
	t3cAm1BvUzHSMnHUsDq8VpMkUmlTIMu6l+cmNsEXxQGuushfI4qO2BPtw0II42tUumNf6G5JcrMIB
	4AWzFswybXavl63qBCwzVkMD9GJolu75IicuFrbjcvDA4esrjMax76O8B7pvOvO0VcW59S+rc3z2f
	pZrYXr6KNWkdWeGIzjCx1yoYWJUoyKdrDYkSATemu74H03KpDYKGVpZ8xWcfMOTVDVAZW7NZ9e4zl
	MfNcuZREtZZ2YbBizpktAgkzAMdBWI9RWKJyjJ9NxZDXWrDv2w+WtJSouwWEVp0e/PSD2bBDhlR49
	aWK9NKSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNsSg-0000000DIZQ-21Zz;
	Tue, 25 Nov 2025 12:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNsSd-0000000DIYq-2H34
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 12:48:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNsSa-00085e-Le; Tue, 25 Nov 2025 13:47:56 +0100
Message-ID: <7dea3133-5918-4424-a17d-17710d24e746@pengutronix.de>
Date: Tue, 25 Nov 2025 13:47:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251125114007.1198441-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251125114007.1198441-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_044759_741867_99327A4B 
X-CRM114-Status: GOOD (  52.25  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: k3: add fuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/25/25 12:40 PM, Sascha Hauer wrote:
> This driver reads/writes to the extended OTP area using TF-A calls.
> 
> The driver has been tested on AM625 and AM62L, but should work on other
> SoCs as well. The driver needs the SIP calls K3_SIP_OTP_READ and
> K3_SIP_OTP_WRITE. These are currently only implemented in the TI
> downstream TF-A for AM62L. For AM625 these calls need to be enabled with
> additional TF-A patches. The driver is activated in the AM62L/AM625
> device trees, but due to the limited availability of the SIP calls
> the driver remains silent when the TF-A doesn't have support for
> manipulating fuses.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/k3-am625.dtsi         |   4 +
>  arch/arm/dts/k3-am62l-barebox.dtsi |   4 +
>  drivers/nvmem/Kconfig              |   7 +
>  drivers/nvmem/Makefile             |   1 +
>  drivers/nvmem/k3-fuse.c            | 229 +++++++++++++++++++++++++++++
>  5 files changed, 245 insertions(+)
>  create mode 100644 drivers/nvmem/k3-fuse.c
> 
> diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
> index a67b9f5d9a..bb0f046fd6 100644
> --- a/arch/arm/dts/k3-am625.dtsi
> +++ b/arch/arm/dts/k3-am625.dtsi
> @@ -7,6 +7,10 @@ chosen {
>  		barebox,bootsource-mmc1 = &sdhci1;
>  		barebox,bootsource-mmc2 = &sdhci2;
>  	};
> +
> +	otp: otp {
> +		compatible = "ti,am62x-otp";
> +	};
>  };
>  
>  &wkup_conf {
> diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
> index 2c1cbb3871..949e2746d5 100644
> --- a/arch/arm/dts/k3-am62l-barebox.dtsi
> +++ b/arch/arm/dts/k3-am62l-barebox.dtsi
> @@ -64,4 +64,8 @@ secure_ddr: optee@80200000 {
>  			no-map;
>  		};
>  	};
> +
> +	otp: otp {
> +		compatible = "ti,am62l-otp";
> +	};
>  };
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 49f90452df..d66c4a88fe 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -136,4 +136,11 @@ config NVMEM_ATMEL_I2C
>  	bool
>  	select BITREVERSE
>  
> +config TI_K3_OTP
> +	bool "TI K3 OTP"
> +	depends on ARCH_K3
> +	select ARM_SMCCC
> +	help
> +	  This adds support for the TI K3 SMC call based OTP found on AM62L SoCs.
> +
>  endif
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 9cdc669a96..cb5e6d6330 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -36,3 +36,4 @@ obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
>  obj-$(CONFIG_IMX_OCOTP_ELE)	+= imx-ocotp-ele.o
>  obj-$(CONFIG_NVMEM_ATMEL_I2C)	+= atmel-i2c.o
>  obj-$(CONFIG_NVMEM_ATMEL_SHA204A) += atmel-sha204a.o
> +obj-$(CONFIG_TI_K3_OTP)		+= k3-fuse.o
> diff --git a/drivers/nvmem/k3-fuse.c b/drivers/nvmem/k3-fuse.c
> new file mode 100644
> index 0000000000..c14dbf7cda
> --- /dev/null
> +++ b/drivers/nvmem/k3-fuse.c
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <driver.h>
> +#include <malloc.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +#include <linux/regmap.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/arm-smccc.h>
> +#include <linux/bitmap.h>
> +
> +/*
> + * These SIP calls are currently only supported in the TI downstream
> + * TF-A
> + */
> +#define K3_SIP_OTP_READ		0xC2000002
> +#define K3_SIP_OTP_WRITE	0xC2000001
> +
> +struct ti_k3_otp_driver_data {
> +	unsigned int skip_init;
> +	unsigned int bits_per_row;
> +	unsigned int nrows;
> +};
> +
> +struct ti_k3_otp {
> +	struct device *dev;
> +	uint32_t *map;
> +	const struct ti_k3_otp_driver_data *data;
> +};
> +
> +static int ti_k3_otp_read_raw(unsigned int word, unsigned int *val)
> +{
> +	struct arm_smccc_res res;
> +	unsigned int bank = 0;
> +
> +	/* TF-A ignores bank argument */
> +	arm_smccc_smc(K3_SIP_OTP_READ, bank, word,
> +		      0, 0, 0, 0, 0, &res);
> +
> +	if ((long)res.a0 == -1) /* SMC_UNK */
> +		return -EOPNOTSUPP;
> +
> +	if (res.a0 != 0)
> +		return -EIO;
> +
> +	*val = res.a1;
> +
> +	return 0;
> +}
> +
> +/*
> + * Fuses are organized in rows where each row has a SoC specific number
> + * of fuses (25 on most K3 devices). When writing a fuse we always write
> + * to a single row of fuses. This means the upper 7 bits of each 32 bit word
> + * are unused. When reading from fuses these gaps are skipped, meaning the first
> + * word we read has 25 bits from row0 in the lower bits and 7 bits from row1
> + * in the upper bits.
> + * Additionally on some SoCs the very first n fuses are reserved. These bits
> + * cannot be written and are skipped while reading.
> + * These effects are reversed here which means that we actually provide a
> + * consistent register map between writing and reading.
> + *
> + * Rather than adjusting the write map we adjust the read map, because this
> + * way we provide one fuse row in each 32bit word and a fuse row is the granularity
> + * for write protection.
> + *
> + * The TI-SCI firmware updates the registers we read from only after a reset,
> + * so it doesn't hurt us when we read all registers upfront, you can't read
> + * back the values you've just written anyway.
> + */
> +static int ti_k3_otp_read_map(struct ti_k3_otp *priv)
> +{
> +	uint32_t *map_raw;
> +	int i, ret;
> +	unsigned int bits_per_row = priv->data->bits_per_row;
> +	unsigned int mask = (1 << bits_per_row) - 1;
> +	unsigned long *bitmap = NULL;
> +	int nbits = 32 * 32;
> +	int nrows = priv->data->nrows;
> +
> +	map_raw = xzalloc(sizeof(uint32_t) * nrows);
> +
> +	for (i = 0; i < 32; i++) {
> +		unsigned int val;
> +
> +		ret = ti_k3_otp_read_raw(i, &val);
> +		if (ret)
> +			goto out;
> +
> +		map_raw[i] = val;
> +	}
> +
> +	bitmap = bitmap_xzalloc(nbits);
> +	bitmap_from_arr32(bitmap, map_raw, nbits);
> +
> +	if (priv->data->skip_init)
> +		bitmap_shift_left(bitmap, bitmap, priv->data->skip_init, nbits);

Why bother reading them in the first place?

> +
> +	for (i = 0; i < priv->data->nrows; i++) {
> +		priv->map[i] = bitmap[0] & mask;
> +		bitmap_shift_right(bitmap, bitmap, bits_per_row, nbits);

I find the logic a bit confusing to be honest, but if you tried the
nested loop variant and found it more confusing, then we can go with this..

> +	}
> +
> +	ret = 0;
> +
> +out:
> +	free(bitmap);
> +	free(map_raw);
> +	return ret;
> +}
> +
> +/*
> + * offset and size are assumed aligned to the size of the fuses (32-bit).
> + */
> +static int ti_k3_otp_read(void *ctx, unsigned int offset, unsigned int *val)
> +{
> +	struct ti_k3_otp *priv = ctx;
> +	unsigned int word = offset >> 2;
> +
> +	*val = priv->map[word];
> +
> +	return 0;
> +}
> +
> +static int ti_k3_otp_write(void *ctx, unsigned int offset, unsigned int val)
> +{
> +	struct ti_k3_otp *priv = ctx;
> +	struct arm_smccc_res res;
> +	unsigned int bank = 0;
> +	unsigned int word = offset >> 2;
> +	unsigned int mask = val;
> +
> +	if (word == 0 && priv->data->skip_init) {
> +		unsigned int skip_mask = GENMASK(priv->data->skip_init, 0);
> +		if (val & skip_mask) {
> +			dev_err(priv->dev, "Lower %d bits of word 0 cannot be written\n",
> +				priv->data->skip_init);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (val & GENMASK(31, priv->data->bits_per_row)) {
> +		dev_err(priv->dev, "Each row only has %d bits",
> +			priv->data->bits_per_row);
> +		return -EINVAL;
> +	}
> +
> +	arm_smccc_smc(K3_SIP_OTP_WRITE, bank, word,
> +		      val, mask, 0, 0, 0, &res);
> +
> +	if (res.a0 != 0) {
> +		dev_err(priv->dev, "Writing fuse 0x%08x failed with: %lu\n",
> +			offset, res.a0);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct regmap_bus ti_k3_otp_regmap_bus = {
> +	.reg_read = ti_k3_otp_read,
> +	.reg_write = ti_k3_otp_write,
> +};
> +
> +static int ti_k3_otp_probe(struct device *dev)
> +{
> +	struct ti_k3_otp *priv;
> +	struct regmap_config config = {};
> +	struct regmap *map;
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->data = device_get_match_data(dev);
> +	priv->dev = dev;
> +	priv->map = xzalloc(sizeof(uint32_t) * priv->data->nrows);
> +
> +	config.name = "k3-otp";
> +	config.reg_bits = 32;
> +	config.val_bits = 32;
> +	config.reg_stride = 4;
> +	config.max_register = sizeof(uint32_t) * priv->data->nrows - 1;

Shouldn't this be sizeof(uint32_t) * (priv->data->nrows - 1) ?

> +
> +	ret = ti_k3_otp_read_map(priv);
> +	if (ret) {
> +		/*
> +		 * Reading fuses is only supported by TI downstream TF-A and
> +		 * only on AM62L. Do not bother the user with error messages
> +		 * when it's not supported.
> +		 */
> +		if (ret == -EOPNOTSUPP)
> +			return -ENODEV;

I think this is still worth a message, even if not at error level.
It would be confusing otherwise.

> +		return ret;
> +	}
> +
> +	map = regmap_init(dev, &ti_k3_otp_regmap_bus, priv, &config);
> +	if (IS_ERR(map))
> +		return PTR_ERR(map);
> +
> +	return PTR_ERR_OR_ZERO(nvmem_regmap_register(map, "ti-k3-otp"));
> +}
> +
> +struct ti_k3_otp_driver_data am62x_data = {
> +	.skip_init = 2,
> +	.bits_per_row = 25,
> +	.nrows = 42,
> +};
> +
> +struct ti_k3_otp_driver_data am62l_data = {
> +	.skip_init = 0,
> +	.bits_per_row = 25,
> +	.nrows = 42,
> +};
> +
> +static struct of_device_id ti_k3_otp_dt_ids[] = {
> +	{ .compatible = "ti,am62x-otp", .data = &am62x_data },
> +	{ .compatible = "ti,am62l-otp", .data = &am62l_data },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, ti_k3_otp_dt_ids);
> +
> +static struct driver ti_k3_otp_driver = {
> +	.name	= "ti-k3-otp",
> +	.probe	= ti_k3_otp_probe,
> +	.of_compatible = ti_k3_otp_dt_ids,
> +};
> +device_platform_driver(ti_k3_otp_driver);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



