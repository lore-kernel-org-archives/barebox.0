Delivery-date: Wed, 26 Jul 2023 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOb1d-00AcJ6-Tr
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 11:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOb1b-0005fc-Hz
	for lore@pengutronix.de; Wed, 26 Jul 2023 11:41:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0TDnCzZwjnHjv2/xWRJn3oOY52AzJsYtUvjBrvzhNd8=; b=a2NNhuSxCjWudE2Tc2j8AvSyv3
	c1wVytRrRaMSKWUdqIDVUEQCq6W9psRZpRNLIUspnr/WtRsKMo12ljXV+cqEWehxg8WZglFA9xjHW
	e9Fc0zn8VooEZEcC/mxvxqlQDieHrLyMqs9fHA1hn1NVaojqyo9PEfKPmDT0kSvRgNSdM2aIYKSW2
	mwmrmcw4kLrVfTE5XSsLIxwwA/54HCKWLMN9x+UUhmCDEZbqzgvX5c2kF4jg4XtmaRLFZy2dibbtb
	Y9bYaLMgbi8daCh8Gu3fJVDdimM33emJYmy7SfmyLfC8UX65ffIVLhJ5QHmoeaww27Pm9ookbbVpR
	O00sgxyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOb0M-009lbH-2t;
	Wed, 26 Jul 2023 09:40:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOb0J-009laO-0x
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 09:40:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOb0H-0005Sd-Py; Wed, 26 Jul 2023 11:40:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOb0H-0005do-JA; Wed, 26 Jul 2023 11:40:21 +0200
Date: Wed, 26 Jul 2023 11:40:21 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726094021.GG18491@pengutronix.de>
References: <20230724075258.1840671-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724075258.1840671-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_024023_331085_7FC4B8AD 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mfd: regulator: initial support for pca9450
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Holger,

On Mon, Jul 24, 2023 at 09:52:58AM +0200, Holger Assmann wrote:
> +++ b/drivers/mfd/pca9450.c
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2023 Holger Assmann, Pengutronix
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <init.h>
> +#include <mfd/pca9450.h>
> +#include <of.h>
> +#include <regmap.h>
> +#include <reset_source.h>
> +
> +#define REASON_PMIC_RST		0x10
> +#define REASON_PWON		0x80
> +#define REASON_SW_RST		0x20
> +#define REASON_WDOG		0x40

Please sort these defines by register bit.

> +
> +static const struct regmap_config pca9450_regmap_i2c_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = 0x2E,
> +};
> +
> +static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
> +{
> +	enum reset_src_type type;
> +	int reg;
> +	int ret;
> +
> +	ret = regmap_read(map, PCA9450_PWRON_STAT, &reg);
> +	if (ret)
> +		return ret;
> +	
> +	switch (reg) {
> +		case REASON_PWON:
> +			dev_dbg(dev, "Power ON triggered by PMIC_ON_REQ.\n");
> +			type = RESET_POR;
> +			break;
> +		case REASON_WDOG:
> +			dev_dbg(dev, "Detected cold reset by WDOGB pin\n");
> +			type = RESET_WDG;
> +			break;
> +		case REASON_SW_RST:
> +			dev_dbg(dev, "Detected cold reset by SW_RST\n");
> +			type = RESET_RST;
> +			break;
> +		case REASON_PMIC_RST:
> +			dev_dbg(dev, "Detected cold reset by PMIC_RST_B\n");
> +			type = RESET_EXT;
> +			break;
> +		default:
> +			dev_warn(dev, "Could not determine reset reason.\n");
> +			type = RESET_UKWN;
> +	}

Coding style is to align the 'case' directly under 'switch'.

> +
> +	reset_source_set_device(dev, type);
> +
> +	return 0;
> +};
> +	

There are some trailing whitespaces here and elsewhere.

Otherwise looks good.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


