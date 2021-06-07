Delivery-date: Mon, 07 Jun 2021 08:47:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq92p-0000Kb-Jc
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 08:47:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq92l-0006uw-KA
	for lore@pengutronix.de; Mon, 07 Jun 2021 08:47:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=azK3v/GfrYOHc5YniPHxZnupDem+9uJB56bFRTfmNFo=; b=zS7pXsBuCVYBFXFJLNP5q0AzI7
	x6y7nrvYWxb4VZx2Rox7MS1U090Gq6ml/tUdpdxQOqh31jEIAh/EsWHc34AZcwQIPqH1gfJJ4Id+b
	EdDGzZb4TQP8ynvYf1LX5EHs3o1AUGeh+YyZ5jxeXqPKBLZlQkSLhZVQTYF0agYghxSQV0wopZ++i
	cu0Vvvk81gh3tmgmr9CiTIFYFIPF+oBsIM8gI5XeN+aBXiMX6Y+7Bd9vUr/iW7APhMbLsKOLCB3Ow
	/r00MDXNp0dJOn7k7tDTKlTdpTE9D2x7gd8VhZB2YMOfTz/lZDDKr01+YL+ZGdyudomyEkAYSiPTC
	xoP0/DTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq90s-001mt0-3X; Mon, 07 Jun 2021 06:45:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq90M-001mkh-Nv
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 06:45:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq90I-0006LY-Eb; Mon, 07 Jun 2021 08:44:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq90I-00031m-4E; Mon, 07 Jun 2021 08:44:54 +0200
Date: Mon, 7 Jun 2021 08:44:54 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210607064454.GC26174@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531073821.15257-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:39:55 up 109 days, 10:03, 90 users,  load average: 0.05, 0.08,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_234458_813309_3A64CF3C 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/20] mfd: add TI TPS65086 PMIC restart driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, May 31, 2021 at 09:38:04AM +0200, Ahmad Fatoum wrote:
> +#include <common.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <linux/mfd/core.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <of.h>
> +#include <regmap.h>
> +#include <xfuncs.h>
> +
> +#include <linux/mfd/tps65086.h>
> +
> +static const struct mfd_cell tps65086_cells[] = {
> +	{ .name = "tps65086-regulator", },
> +	{ .name = "tps65086-gpio", },
> +};

Ok to have cells here which do not have a driver yet,

> +static struct driver_d tps65086_restart_driver = {
> +	.name = "tps65086-restart",
> +	.probe = tps65086_restart_probe,
> +};

but you should register the cells for the existing driver.

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

