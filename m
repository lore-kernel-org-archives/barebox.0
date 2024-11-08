Delivery-date: Fri, 08 Nov 2024 12:29:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NBQ-006IqO-2G
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:29:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NBR-0003aC-AD
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:29:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6QBV1fex7ZLJsIG9/SO9JixgyFcyNxOSPN65Ya5gZfY=; b=FLSSCuTqR+EAox7DboeEGX+Fqo
	nX7Ok8QZUWDS8M1majLgJ13w8JbmhnrQyYihgvhzytT73NNlqsMx6xrmvUP3Re6WrMqwXZxuELLSJ
	tRRaq2gSo7CLi+rlCMjuA9vPztUhMHn4xktQ/vIaD8qV1lki3kE4Gmx/hGiL8Bm6WdCy+ZDccLyxG
	/Fut9OeSRhW0sGlpNxESQ63DI/I37Jl+6AV9TEiCuumHuj2afJlvwq/VEnHMyHLcLBDhdA636RMAT
	Zg3rgzaaOPPj9DkzbwVi+5JfknTCvn0+++rekI+TUqIaCvsqkjoOXBkbN6TBo0taugdC3+FvlcMEI
	SUdD1DBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NAv-0000000ALZV-43O1;
	Fri, 08 Nov 2024 11:29:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MXf-0000000ABdE-2fkG
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:48:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MXd-0008G6-Un; Fri, 08 Nov 2024 11:48:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MXd-002beD-26;
	Fri, 08 Nov 2024 11:48:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MXd-0007HI-1o;
	Fri, 08 Nov 2024 11:48:37 +0100
Date: Fri, 8 Nov 2024 11:48:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <Zy3shbbzAHNtiESt@pengutronix.de>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-5-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241107145722.5145-5-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_024839_695325_09017DF7 
X-CRM114-Status: GOOD (  20.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] pinctrl: Add sun50i-a64 pinctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 07, 2024 at 03:57:20PM +0100, Jules Maselbas wrote:
> sunxi pinctrl driver, adapted from Linux, is split in two parts:
>  - pinctrl-sunxi.c that implements gpio, pinctrl and pinmux functions
>  - pinctrl-sun50i-a64.c that declare sun50i pins and their functions.
>    This file only require minor adaptations and be easily copied from Linux.
> 
> The pin functions are needed for uart, SD/MMC, and likely for other
> controllers too.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  drivers/pinctrl/Kconfig                    |   2 +
>  drivers/pinctrl/Makefile                   |   1 +
>  drivers/pinctrl/sunxi/Kconfig              |  13 +
>  drivers/pinctrl/sunxi/Makefile             |   3 +
>  drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c | 594 +++++++++++++++++++++
>  drivers/pinctrl/sunxi/pinctrl-sunxi.c      | 372 +++++++++++++
>  drivers/pinctrl/sunxi/pinctrl-sunxi.h      | 224 ++++++++
>  7 files changed, 1209 insertions(+)
>  create mode 100644 drivers/pinctrl/sunxi/Kconfig
>  create mode 100644 drivers/pinctrl/sunxi/Makefile
>  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
>  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
>  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
> 

...

> +
> +int sunxi_pinctrl_probe(struct device *dev)
> +{
> +	const struct sunxi_pinctrl_desc *desc;
> +	struct sunxi_pinctrl *pinctrl;
> +	struct resource *iores;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_PINCTRL))
> +		return 0;

You can drop this. A few drivers have it because they provide GPIO
support even with pinctrl support disabled, but you don't do this here.

Sascha

> +
> +	desc = device_get_match_data(dev);
> +	if (!desc)
> +                return -EINVAL;
> +


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


