Delivery-date: Mon, 17 Jan 2022 09:26:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9NL1-004PIt-QJ
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 09:26:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9NL0-0007Ce-Ek
	for lore@pengutronix.de; Mon, 17 Jan 2022 09:26:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RANa7D6FZEuYWLLfUxPVfbxxFBVtDl5DkgwUTYXkTtM=; b=vnmQluC0SITk8mw/nb0d6DKQ7e
	46oTwYcpN0kCTm+sRvOf5kZXRdpJ4ByN1uATLWHm4MzeYe8VdIRhSbQTP47Xo10ycdh/Mo6nZwDHV
	rhwZBT4W5b96wdxbOojvppqXqs/+lIi7QAZIEUKbubEtddcjCxGUJ59OuSbNtIHmrmiij+jDN1NiF
	GosXshKkEhCnIqjn0R34YCF3/mHH5N+wa3Lfp2MOBct+xi2ZIPusKMnCVuR2MGMasVsfmpSkDEZuO
	WD5YSVVo851gVBaXQMPc+CirKoI5jcyF7wMjMfj8hwqJ52CUUfNqa7K+LWffEj+1/8vcDJ3TbtJhg
	slIll1eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9NJU-00E3Z8-Sl; Mon, 17 Jan 2022 08:24:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9NJP-00E3Xv-59
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 08:24:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9NJL-0006ut-Si; Mon, 17 Jan 2022 09:24:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9NJL-0006Sw-7R; Mon, 17 Jan 2022 09:24:19 +0100
Date: Mon, 17 Jan 2022 09:24:19 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>
Message-ID: <20220117082419.GA1121@pengutronix.de>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165208.9980-9-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114165208.9980-9-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:09:43 up 37 days, 16:55, 72 users,  load average: 0.36, 0.38, 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_002423_227765_B94075F1 
X-CRM114-Status: GOOD (  30.27  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/13] nvmem: add kvx otp non volatile regbank support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 05:52:07PM +0100, Jules Maselbas wrote:
> From: Clement Leger <cleger@kalray.eu>
> =

> Backport Linux driver to barebox to access nvmem.
> =

> Signed-off-by: Clement Leger <cleger@kalray.eu>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/nvmem/Kconfig      |  7 +++
>  drivers/nvmem/Makefile     |  3 ++
>  drivers/nvmem/kvx-otp-nv.c | 99 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 109 insertions(+)
>  create mode 100644 drivers/nvmem/kvx-otp-nv.c
> =

> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 07320101b8..3624cc64b6 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -66,6 +66,13 @@ config STM32_BSEC
>  	  This adds support for the STM32 OTP controller. Reads and writes
>  	  to will go to the shadow RAM, not the OTP fuses themselvers.
>  =

> +config KVX_OTP_NV
> +	tristate "kalray KVX OTP Non volatile regs Support"
> +	depends on KVX
> +	help
> +	  This is a simple driver to dump specified values of KVX OTP non
> +	  volatile regs.
> +
>  config STARFIVE_OTP
>  	tristate "Starfive OTP Supprot"
>  	depends on SOC_STARFIVE
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index cd970aaea1..81629ddb27 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -24,4 +24,7 @@ nvmem_eeprom_93xx46-y		:=3D eeprom_93xx46.o
>  obj-$(CONFIG_STM32_BSEC)	+=3D nvmem_bsec.o
>  nvmem_bsec-y			:=3D bsec.o
>  =

> +obj-$(CONFIG_KVX_OTP_NV)	+=3D nvmem-kvx-otp-nv.o
> +nvmem-kvx-otp-nv-y		:=3D kvx-otp-nv.o
> +
>  obj-$(CONFIG_STARFIVE_OTP)	+=3D starfive-otp.o
> diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
> new file mode 100644
> index 0000000000..f997f8a63b
> --- /dev/null
> +++ b/drivers/nvmem/kvx-otp-nv.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2020 Kalray Inc., Cl=E9ment L=E9ger
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +#include <init.h>
> +#include <net.h>
> +#include <io.h>
> +
> +#include <linux/nvmem-provider.h>
> +
> +#define OTP_NV_ALIGN		4
> +#define OTP_NV_ALIGN_MASK	(OTP_NV_ALIGN - 1)
> +
> +struct kvx_otp_nv_priv {
> +	void __iomem *base;
> +};
> +
> +static int kvx_otp_nv_read(void *context, unsigned int offset,
> +			  void *_val, size_t bytes)
> +{
> +	struct kvx_otp_nv_priv *priv =3D context;
> +	u8 *val =3D _val;
> +	u32 tmp, copy_size;
> +	u8 skip =3D offset & OTP_NV_ALIGN_MASK;
> +
> +	offset &=3D ~OTP_NV_ALIGN_MASK;
> +
> +	while (bytes) {
> +		tmp =3D readl(priv->base + offset);
> +		if (skip !=3D 0)
> +			copy_size =3D min(OTP_NV_ALIGN - skip, (int) bytes);
> +		else
> +			copy_size =3D min(bytes, sizeof(tmp));
> +
> +		memcpy(val, ((u8 *) &tmp) + skip, copy_size);
> +		if (skip !=3D 0)
> +			skip =3D 0;

The if() here is unnecessary.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

