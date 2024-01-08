Delivery-date: Mon, 08 Jan 2024 10:44:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmBH-008fOU-2D
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 10:44:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmBH-0006s4-36
	for lore@pengutronix.de; Mon, 08 Jan 2024 10:44:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NXUwIKaoGSzDu+Q9vgOlhyutcwGcZIU7Uh2PLlw3WVw=; b=QBy0a2QXpaueOicZ8FRmWpECSB
	1y6GiOYshsdBPnWS8sk8ccur9ZUPx/xHc5LOS6SheGxZCkdozWKQY631bce6IOyXa64bf8GQMyFwx
	511Bb4ciz0kFOLGuzeGQrRI+jsEvNxCzsVZBgjPyrWDPVNyEbeTJ5RxqrbvA3CLOe/OkvSfQyn3n+
	dtYlKAeKbahkXRXOsN5/q89Mmophl86f5Ah4twWfGcWUD6v/YpAtgixR07Mw75XxFjf1YbWpqhyP/
	CJyJ25n/LIpQftInPyVjPHWYNq4ISALzUbtYtyTMGtjhKjjmvYLYxce9uFescdq1E98yFYu+OPEGm
	NFUQrK8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMm9y-004WDx-2O;
	Mon, 08 Jan 2024 09:43:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMm9v-004WDS-1P
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 09:43:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMm9u-0006dH-1A; Mon, 08 Jan 2024 10:43:02 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMm9t-001DNW-KY; Mon, 08 Jan 2024 10:43:01 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMm9t-00Apko-IB; Mon, 08 Jan 2024 10:43:01 +0100
Date: Mon, 8 Jan 2024 10:43:01 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108094301.GD1318922@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_014303_497659_049BCB51 
X-CRM114-Status: GOOD (  19.00  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 0/7] regmap: fix size of regmap-backed cdev and
 nvmem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 02, 2024 at 06:00:53PM +0100, Ahmad Fatoum wrote:
> struct regmap::max_register is in units of struct regmap::reg_stride.
> To get the total number or registers, we need to divide by reg_stride
> before adding one, but we ended up adding one before division.
> 
> This is wrong at different places across the tree, leading to the last
> fuse to be inaccessible when not using the regmap API directly, i.e.
> when using a NVMEM registered by nvmem_register_regmap or the cdev
> instantiated in /dev.
> 
> Ahmad Fatoum (6):
>   regmap: fix calculation of regmap size when reg_stride != 1
>   nvmem: bsec: correct regmap's max_register
>   nvmem: startfive-otp: correct regmap's max_register
>   nvmem: imx-ocotp-ele: correct regmap's max_register
>   nvmem: ocotp: correct regmap's max_register
>   nvmem: ocotp: align OCOTP bank count with Linux
> 
> Robin van der Gracht (1):
>   nvmem: regmap: Fix nvmem size

Applied, thanks

Sascha

> 
>  drivers/base/regmap/regmap.c  | 28 ++++++++++++++++++++++++++--
>  drivers/nvmem/bsec.c          |  2 +-
>  drivers/nvmem/imx-ocotp-ele.c |  2 +-
>  drivers/nvmem/ocotp.c         | 24 ++++++++++++------------
>  drivers/nvmem/regmap.c        |  4 ++--
>  drivers/nvmem/starfive-otp.c  |  2 +-
>  6 files changed, 43 insertions(+), 19 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


