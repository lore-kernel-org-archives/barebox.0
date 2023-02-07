Delivery-date: Tue, 07 Feb 2023 21:29:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUb7-00HNGq-E6
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 21:29:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUb4-00082L-RC
	for lore@pengutronix.de; Tue, 07 Feb 2023 21:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/GczeIR8GoUtKzuP+tKijnJThZyY9zzCTHtMyEvFRAQ=; b=xysxYEDnNHRGpn0E9DaWcfpzUi
	WPJAR0q9feYMvX4EFO0xupLuxy5LjWaJ/BdkjZ55qY4sMM+crSZNXla0lTHF5LVOH1kgjatvCTvXo
	SIcZhXmUf596ANxr9xw28adeBp12fgIsxdgalMATUTXg0ZQBKrT/fAzeKevcd/7MPYKiusorG4N7A
	wuMWdEfqG4XZeeqH9roHzbXgydDdMV69VP6VnIqrAMawP6ylVny3kZIIjDOhPQsVtLVfeuz7zKLz9
	TmgfV5dXRATvaL9wSVdRrAHzB/uqRxDpRUUV+3R+YefgvpY9mfgk/7XbnD3DSOlZ+CsO0JlHCzcDc
	gPUmro8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUZo-00DKGy-Bw; Tue, 07 Feb 2023 20:28:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUZj-00DKEY-Lm
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 20:28:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pPUZf-0007w2-TZ; Tue, 07 Feb 2023 21:28:19 +0100
Message-ID: <ddfb2440-5d39-274a-9cf9-5fd1e6902a10@pengutronix.de>
Date: Tue, 7 Feb 2023 21:28:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org
References: <20230207201125.1092406-1-l.stach@pengutronix.de>
 <20230207201125.1092406-2-l.stach@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230207201125.1092406-2-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_122823_747858_7D96589C 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8MP: add initial Polyhex DEBIX Model A
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.02.23 21:11, Lucas Stach wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The Polyhex DEBIX Model A is an i.MX8MP based Rpi form factor board.
> This commit imports the v4 of the Linux device tree[1], and the timings
> from the vendor U-Boot[2] and combines it with existing barebox i.MX8MP
> support.

Is it still based on v4?

> 
> [1]: https://lore.kernel.org/all/20221017151050.2321919-1-dan.scally@ideasonboard.com/
> [2]: https://github.com/debix-tech/uboot/blob/lf_v2021.04/board/freescale/imx8mp_evk/lpddr4_timing.c

[snip]

> diff --git a/arch/arm/boards/polyhex-debix/Makefile b/arch/arm/boards/polyhex-debix/Makefile
> new file mode 100644
> index 000000000000..35d8640087b1
> --- /dev/null
> +++ b/arch/arm/boards/polyhex-debix/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> diff --git a/arch/arm/boards/polyhex-debix/board.c b/arch/arm/boards/polyhex-debix/board.c
> new file mode 100644
> index 000000000000..849dc0f6c1d1
> --- /dev/null
> +++ b/arch/arm/boards/polyhex-debix/board.c
> @@ -0,0 +1,49 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <io.h>
> +#include <mach/bbu.h>
> +#include <mach/iomux-mx8mp.h>
> +
> +static int polyhex_debix_probe(struct device_d *dev)

Nitpick: device_d is device now and driver_d is driver, but we keep
the old names for a transition period.

[snip]

> +static void power_init_board(void)
> +{
> +	struct pbl_i2c *i2c;
> +
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> +
> +	imx8mm_early_clock_init();

imx8mp_early_clock_init() here. It's currently the same function, but looks
less out of place. While you're at it, you may want to check if 8mm and 8mp
being the same function is ok :-)

> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> +
> +	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> +
> +	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +}

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



