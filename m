Delivery-date: Wed, 26 Nov 2025 15:17:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOGKk-0056Ex-1N
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 15:17:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOGKj-00044q-F8
	for lore@pengutronix.de; Wed, 26 Nov 2025 15:17:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=129fF/ZqOmsDgnZZnxiy+njgfvg6HWwA6vogbiPwpiQ=; b=nJtc8Of2pDNUJDwPds58fZH8Q0
	07VZoqe2SFgG+hGAyjQbfe0nInHuK/yfTub/68yqs/GgXEAbJsezL+qTlpln5EQLaGU2u9LmUm03f
	v0j09AQCl8PQ+C2fT8zz57wgCiFWn2ymjEyrkuqvMdrXvhrGDVE8VmfYRlkCi8IrMMNfWQsUCVCPe
	h+OA9g3Xc7ROFgIMvZF3+kIm1XPhKPtz/999nhGQx9g+/7q2xV7uIk0guF5caFCpEOV5e3FifnJPn
	YoIJtn/mfJJ4TTBFMoAVakFKMqoeiJOwUmplDgsweet7gEH1UZA8RSyqZHron5v/G85lakAnS6RnX
	M7Z7kq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOGKA-0000000F5dS-3gM2;
	Wed, 26 Nov 2025 14:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOGK8-0000000F5d1-2U02
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 14:16:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vOGK3-0003yN-TJ; Wed, 26 Nov 2025 15:16:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOGK3-002ch6-2K;
	Wed, 26 Nov 2025 15:16:43 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOGK3-007oDJ-22;
	Wed, 26 Nov 2025 15:16:43 +0100
Date: Wed, 26 Nov 2025 15:16:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aScLy2wqfn6o85sd@pengutronix.de>
References: <20251125114007.1198441-1-s.hauer@pengutronix.de>
 <7dea3133-5918-4424-a17d-17710d24e746@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7dea3133-5918-4424-a17d-17710d24e746@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_061648_787778_BD3FC5F3 
X-CRM114-Status: GOOD (  53.96  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: k3: add fuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 25, 2025 at 01:47:56PM +0100, Ahmad Fatoum wrote:
> 
> 
> On 11/25/25 12:40 PM, Sascha Hauer wrote:
> > This driver reads/writes to the extended OTP area using TF-A calls.
> > 
> > The driver has been tested on AM625 and AM62L, but should work on other
> > SoCs as well. The driver needs the SIP calls K3_SIP_OTP_READ and
> > K3_SIP_OTP_WRITE. These are currently only implemented in the TI
> > downstream TF-A for AM62L. For AM625 these calls need to be enabled with
> > additional TF-A patches. The driver is activated in the AM62L/AM625
> > device trees, but due to the limited availability of the SIP calls
> > the driver remains silent when the TF-A doesn't have support for
> > manipulating fuses.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/k3-am625.dtsi         |   4 +
> >  arch/arm/dts/k3-am62l-barebox.dtsi |   4 +
> >  drivers/nvmem/Kconfig              |   7 +
> >  drivers/nvmem/Makefile             |   1 +
> >  drivers/nvmem/k3-fuse.c            | 229 +++++++++++++++++++++++++++++
> >  5 files changed, 245 insertions(+)
> >  create mode 100644 drivers/nvmem/k3-fuse.c
> > 
> > diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
> > index a67b9f5d9a..bb0f046fd6 100644
> > --- a/arch/arm/dts/k3-am625.dtsi
> > +++ b/arch/arm/dts/k3-am625.dtsi
> > @@ -7,6 +7,10 @@ chosen {
> >  		barebox,bootsource-mmc1 = &sdhci1;
> >  		barebox,bootsource-mmc2 = &sdhci2;
> >  	};
> > +
> > +	otp: otp {
> > +		compatible = "ti,am62x-otp";
> > +	};
> >  };
> >  
> >  &wkup_conf {
> > diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
> > index 2c1cbb3871..949e2746d5 100644
> > --- a/arch/arm/dts/k3-am62l-barebox.dtsi
> > +++ b/arch/arm/dts/k3-am62l-barebox.dtsi
> > @@ -64,4 +64,8 @@ secure_ddr: optee@80200000 {
> >  			no-map;
> >  		};
> >  	};
> > +
> > +	otp: otp {
> > +		compatible = "ti,am62l-otp";
> > +	};
> >  };
> > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > index 49f90452df..d66c4a88fe 100644
> > --- a/drivers/nvmem/Kconfig
> > +++ b/drivers/nvmem/Kconfig
> > @@ -136,4 +136,11 @@ config NVMEM_ATMEL_I2C
> >  	bool
> >  	select BITREVERSE
> >  
> > +config TI_K3_OTP
> > +	bool "TI K3 OTP"
> > +	depends on ARCH_K3
> > +	select ARM_SMCCC
> > +	help
> > +	  This adds support for the TI K3 SMC call based OTP found on AM62L SoCs.
> > +
> >  endif
> > diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> > index 9cdc669a96..cb5e6d6330 100644
> > --- a/drivers/nvmem/Makefile
> > +++ b/drivers/nvmem/Makefile
> > @@ -36,3 +36,4 @@ obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
> >  obj-$(CONFIG_IMX_OCOTP_ELE)	+= imx-ocotp-ele.o
> >  obj-$(CONFIG_NVMEM_ATMEL_I2C)	+= atmel-i2c.o
> >  obj-$(CONFIG_NVMEM_ATMEL_SHA204A) += atmel-sha204a.o
> > +obj-$(CONFIG_TI_K3_OTP)		+= k3-fuse.o
> > diff --git a/drivers/nvmem/k3-fuse.c b/drivers/nvmem/k3-fuse.c
> > new file mode 100644
> > index 0000000000..c14dbf7cda
> > --- /dev/null
> > +++ b/drivers/nvmem/k3-fuse.c
> > @@ -0,0 +1,229 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <driver.h>
> > +#include <malloc.h>
> > +#include <xfuncs.h>
> > +#include <errno.h>
> > +#include <init.h>
> > +#include <io.h>
> > +#include <of.h>
> > +#include <linux/regmap.h>
> > +#include <linux/nvmem-provider.h>
> > +#include <linux/arm-smccc.h>
> > +#include <linux/bitmap.h>
> > +
> > +/*
> > + * These SIP calls are currently only supported in the TI downstream
> > + * TF-A
> > + */
> > +#define K3_SIP_OTP_READ		0xC2000002
> > +#define K3_SIP_OTP_WRITE	0xC2000001
> > +
> > +struct ti_k3_otp_driver_data {
> > +	unsigned int skip_init;
> > +	unsigned int bits_per_row;
> > +	unsigned int nrows;
> > +};
> > +
> > +struct ti_k3_otp {
> > +	struct device *dev;
> > +	uint32_t *map;
> > +	const struct ti_k3_otp_driver_data *data;
> > +};
> > +
> > +static int ti_k3_otp_read_raw(unsigned int word, unsigned int *val)
> > +{
> > +	struct arm_smccc_res res;
> > +	unsigned int bank = 0;
> > +
> > +	/* TF-A ignores bank argument */
> > +	arm_smccc_smc(K3_SIP_OTP_READ, bank, word,
> > +		      0, 0, 0, 0, 0, &res);
> > +
> > +	if ((long)res.a0 == -1) /* SMC_UNK */
> > +		return -EOPNOTSUPP;
> > +
> > +	if (res.a0 != 0)
> > +		return -EIO;
> > +
> > +	*val = res.a1;
> > +
> > +	return 0;
> > +}
> > +
> > +/*
> > + * Fuses are organized in rows where each row has a SoC specific number
> > + * of fuses (25 on most K3 devices). When writing a fuse we always write
> > + * to a single row of fuses. This means the upper 7 bits of each 32 bit word
> > + * are unused. When reading from fuses these gaps are skipped, meaning the first
> > + * word we read has 25 bits from row0 in the lower bits and 7 bits from row1
> > + * in the upper bits.
> > + * Additionally on some SoCs the very first n fuses are reserved. These bits
> > + * cannot be written and are skipped while reading.
> > + * These effects are reversed here which means that we actually provide a
> > + * consistent register map between writing and reading.
> > + *
> > + * Rather than adjusting the write map we adjust the read map, because this
> > + * way we provide one fuse row in each 32bit word and a fuse row is the granularity
> > + * for write protection.
> > + *
> > + * The TI-SCI firmware updates the registers we read from only after a reset,
> > + * so it doesn't hurt us when we read all registers upfront, you can't read
> > + * back the values you've just written anyway.
> > + */
> > +static int ti_k3_otp_read_map(struct ti_k3_otp *priv)
> > +{
> > +	uint32_t *map_raw;
> > +	int i, ret;
> > +	unsigned int bits_per_row = priv->data->bits_per_row;
> > +	unsigned int mask = (1 << bits_per_row) - 1;
> > +	unsigned long *bitmap = NULL;
> > +	int nbits = 32 * 32;
> > +	int nrows = priv->data->nrows;
> > +
> > +	map_raw = xzalloc(sizeof(uint32_t) * nrows);
> > +
> > +	for (i = 0; i < 32; i++) {
> > +		unsigned int val;
> > +
> > +		ret = ti_k3_otp_read_raw(i, &val);
> > +		if (ret)
> > +			goto out;
> > +
> > +		map_raw[i] = val;
> > +	}
> > +
> > +	bitmap = bitmap_xzalloc(nbits);
> > +	bitmap_from_arr32(bitmap, map_raw, nbits);
> > +
> > +	if (priv->data->skip_init)
> > +		bitmap_shift_left(bitmap, bitmap, priv->data->skip_init, nbits);
> 
> Why bother reading them in the first place?

FTR: We talked about it. Ahmad misread the left shift as a right shift.
I am indeed not shifting away what I previously read.

> > +	config.name = "k3-otp";
> > +	config.reg_bits = 32;
> > +	config.val_bits = 32;
> > +	config.reg_stride = 4;
> > +	config.max_register = sizeof(uint32_t) * priv->data->nrows - 1;
> 
> Shouldn't this be sizeof(uint32_t) * (priv->data->nrows - 1) ?

Yes.

> 
> > +
> > +	ret = ti_k3_otp_read_map(priv);
> > +	if (ret) {
> > +		/*
> > +		 * Reading fuses is only supported by TI downstream TF-A and
> > +		 * only on AM62L. Do not bother the user with error messages
> > +		 * when it's not supported.
> > +		 */
> > +		if (ret == -EOPNOTSUPP)
> > +			return -ENODEV;
> 
> I think this is still worth a message, even if not at error level.
> It would be confusing otherwise.

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


