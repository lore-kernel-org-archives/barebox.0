Delivery-date: Mon, 17 Jan 2022 12:48:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9QUb-004Wwy-KD
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 12:48:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9QUa-0000Xt-7o
	for lore@pengutronix.de; Mon, 17 Jan 2022 12:48:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e0jYjxwcbDHRdJT20kWbppiRVe23gufaslVUIUKafj8=; b=CIcFlUpeskIS/tcdpIyKpkhhBc
	hUklG5qTA/DlXcgVgZgFWhF29Ru6K3YcRdPy1uByG0wRBirA0FBz8iUSVFBgkqP69KltRN7TwwiJP
	FYfeuAdKi/GFxJNY+qW7YsBtSMDgmSAv8nBgVifVWCE28kZ8NmSeEUGopPn2ttozVatG8Nf6NPI40
	eiCUzBa05Gh/+rhArOQRtq0MM6lzdlrWa64XPOSPtdsvjDlmH/EjkYqMSkv+w9223UmeQiW4aZekg
	GRRWcsoMsx6eJppzFaV2AEGEBW6lbElM6tCd5YehT7OH/fnZOjhuE9P1Rg6cZT1m9nwzCU1OofVBj
	+3Ybvh2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QT6-00Egv6-Fg; Mon, 17 Jan 2022 11:46:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9QT0-00EguH-Sz
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 11:46:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9QSy-0008WG-6y; Mon, 17 Jan 2022 12:46:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9QSx-00067A-TH; Mon, 17 Jan 2022 12:46:27 +0100
Date: Mon, 17 Jan 2022 12:46:27 +0100
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220117114627.GJ1121@pengutronix.de>
References: <20220117085908.36460-1-jbe@pengutronix.de>
 <20220117085908.36460-3-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117085908.36460-3-jbe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:26:10 up 37 days, 19:11, 81 users,  load average: 0.26, 0.32, 0.43
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_034630_975365_617AD81B 
X-CRM114-Status: GOOD (  36.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] Add Ricoh RN5T568 PMIC based watchdog
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 09:59:08AM +0100, Juergen Borleis wrote:
> ---
>  drivers/watchdog/Kconfig       |   6 ++
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/rn5t568_wdt.c | 140 +++++++++++++++++++++++++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 drivers/watchdog/rn5t568_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index d605e62..61a096b 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -109,6 +109,12 @@ config STPMIC1_WATCHDOG
>  	help
>  	  Enable to support configuration of the stpmic1's built-in watchdog.
>  
> +config RN568_WATCHDOG
> +	bool "Ricoh RN5t568 PMIC based Watchdog"
> +	depends on MFD_RN568PMIC
> +	help
> +	  Enable to support system control via the PMIC based watchdog.
> +
>  config F71808E_WDT
>  	bool "Fintek F718xx, F818xx Super I/O Watchdog"
>  	depends on X86
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index dbb76a5..84fd2bf 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
>  obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
>  obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
>  obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
> +obj-$(CONFIG_RN568_WATCHDOG) += rn5t568_wdt.o
>  obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
>  obj-$(CONFIG_GPIO_WATCHDOG) += gpio_wdt.o
>  obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
> diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
> new file mode 100644
> index 0000000..f6e7234
> --- /dev/null
> +++ b/drivers/watchdog/rn5t568_wdt.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Watchdog driver for Ricoh RN5T618 PMIC
> + *
> + * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <watchdog.h>
> +#include <regmap.h>
> +#include <of.h>
> +
> +#define RN5T568_WATCHDOG 0x0b
> +# define RN5T568_WATCHDOG_WDPWROFFEN BIT(2)
> +# define RN5T568_WATCHDOG_WDOGTIM_M (BIT(0) | BIT(1))
> +#define RN5T568_PWRIREN 0x12
> +# define RN5T568_PWRIREN_EN_WDOG BIT(6)
> +#define RN5T568_PWRIRQ 0x13
> +# define RN5T568_PWRIRQ_IR_WDOG BIT(6)
> +
> +struct rn5t568_wdt {
> +	struct watchdog wdd;
> +	struct regmap *regmap;
> +	unsigned int timeout;
> +};
> +
> +struct rn5t568_wdt_tim {
> +	u8 reg_val;
> +	u8 time;
> +};
> +
> +static const struct rn5t568_wdt_tim rn5t568_wdt_timeout[] = {
> +	{ .reg_val = 0, .time = 1, },
> +	{ .reg_val = 1, .time = 8, },
> +	{ .reg_val = 2, .time = 32, },
> +	{ .reg_val = 3, .time = 128, },
> +};
> +
> +#define PMIC_WDT_MAX_TIMEOUT 128
> +
> +static int rn5t568_wdt_start(struct regmap *regmap, int idx)
> +{
> +	int ret;
> +
> +	ret = regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDOGTIM_M,
> +				 rn5t568_wdt_timeout[idx].reg_val);
> +	if (ret)
> +		return ret;
> +
> +	regmap_update_bits(regmap, RN5T568_PWRIRQ, RN5T568_PWRIRQ_IR_WDOG, 0x00);
> +	regmap_update_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG, RN5T568_PWRIREN_EN_WDOG);
> +
> +	pr_debug("RN5t: Starting the watchdog with %u seconds\n", rn5t568_wdt_timeout[idx].time);
> +
> +	return regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN,
> +				 RN5T568_WATCHDOG_WDPWROFFEN);
> +}
> +
> +static int rn5t568_wdt_stop(struct regmap *regmap)
> +{
> +	int ret;
> +
> +	ret  = regmap_update_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG, 0);

You could use regmap_[clear|set]_bits() here and elsewhere in the
driver.


> +	if (ret)
> +		return ret;
> +	return regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN, 0);
> +}
> +
> +static int rn5t568_wdt_ping(struct regmap *regmap)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(regmap, RN5T568_WATCHDOG, &val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_write(regmap, RN5T568_WATCHDOG, val);
> +}
> +
> +static int rn5t568_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
> +{
> +	struct rn5t568_wdt *wdt = container_of(wdd, struct rn5t568_wdt, wdd);
> +	int ret, i;
> +
> +	if (!timeout)
> +		return rn5t568_wdt_stop(wdt->regmap);
> +
> +	for (i = 0; i < ARRAY_SIZE(rn5t568_wdt_timeout); i++) {
> +		if (rn5t568_wdt_timeout[i].time + 1 >= timeout)

I don't understand the + 1 here. When I want to have a timeout of 9s the
driver uses 8s instead which doesn't seem to be correct.

> +			break;
> +	}
> +
> +	if (i == ARRAY_SIZE(rn5t568_wdt_timeout))
> +		return -EINVAL;
> +
> +	if (wdt->timeout == timeout)
> +		return rn5t568_wdt_ping(wdt->regmap);
> +
> +	ret = rn5t568_wdt_start(wdt->regmap, i);
> +	if (ret)
> +		return ret;
> +
> +	wdt->timeout = rn5t568_wdt_timeout[i].time;
> +
> +	return ret;
> +}
> +
> +static int rn5t568_wdt_probe(struct device_d *dev)
> +{
> +	struct rn5t568_wdt *wdt;
> +	struct watchdog *wdd;
> +
> +	wdt = xzalloc(sizeof(*wdt));
> +
> +	wdt->regmap = dev_get_regmap(dev->parent, NULL);
> +	if (IS_ERR(wdt->regmap))
> +		return PTR_ERR(wdt->regmap);
> +
> +	wdd = &wdt->wdd;
> +	wdd->hwdev = dev;
> +	wdd->set_timeout = rn5t568_wdt_set_timeout;
> +	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
> +
> +	regmap_write(wdt->regmap, RN5T568_WATCHDOG, 0x03);

Why is anything written here to the register?

It seems this clears BIT(2) which disables the watchdog, right? If so,
that's not a good idea as it might be disabled on purpose by earlier
boot stages.

You could read the hardware status to provide the
WDOG_HW_RUNNING/WDOG_HW_NOT_RUNNING flag.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

