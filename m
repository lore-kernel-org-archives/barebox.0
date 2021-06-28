Delivery-date: Mon, 28 Jun 2021 22:22:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxlw-0006fN-PF
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 22:22:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxlv-0004lJ-Ue
	for lore@pengutronix.de; Mon, 28 Jun 2021 22:22:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6kRGMjCjUWx6IUfgtICbuGYYjo5q8Z+LKZiWy9KDezY=; b=v04VjFIOiE24quy6EUMydk1qgz
	WMfa8MYtivJ02+LMt0EmqnL9TPBOAdvVqNCcHl+hagXX1JK0e3M1S1iLFmaWZd0cd3gdeqdW7zCCU
	yj/mWBP/onBuyS90nm6euNw84OjLZRQXJuzKyJqLcyhKfX0+mm2zSmFKYjt+elsquTw7OmDrJ8Nih
	aHJXUhEjphZIna/PWNeWAeISwz/KEaVTPmYMjbkr5Rk9bMmTpn+iMx73D+FPQiX3Ue7SXUpEKAYU8
	78/0zJHI5YkhyKGKGsieDF+snOPYlHihm2f3UMYqWkGLrefb+7m6MB6F9dhen8dJEzlUrXRl0pP4u
	Cm/PB8Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxxkg-00976S-Is; Mon, 28 Jun 2021 20:21:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxxkc-009763-0h
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 20:21:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxka-0004SX-1Z; Mon, 28 Jun 2021 22:21:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxkZ-0004yS-Ot; Mon, 28 Jun 2021 22:20:59 +0200
Date: Mon, 28 Jun 2021 22:20:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>,
 Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <ukl@pengutronix.de>
Message-ID: <20210628202059.GQ9782@pengutronix.de>
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628064036.25991-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:20:03 up 130 days, 23:43, 108 users,  load average: 0.03, 0.07,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_132102_108001_17F8276D 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] common: machine_id: support /chosen/barebox,
 machine-id-path override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Jun 28, 2021 at 08:40:32AM +0200, Ahmad Fatoum wrote:
> The Kconfig option already warns that the current behavior of
> machine_id_set_hashable() overriding previous calls can lead to the
> machine-id changing over updates. We don't yet have this problem in
> practice, because the only two upstream users are for bsec and ocotp,
> which are efuse drivers for different SoCs. On the other hand, users
> may want to get the unique ID from an EEPROM and with deep probe
> support, the initcall ordering will be independent of the actual probe
> order.
> =

> Work around this issue by introducing a way for each board to explicitly
> reference a nvmem cell that should be hashed to produce the machine-id.
> =

> If no such device tree property is supplied, the last call to
> machine_id_set_hashable() will be used as before.
> =

> Cc: Bastian Krause <bst@pengutronix.de>
> Cc: Uwe Kleine-K=F6nig <ukl@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig                 | 13 ++++++----
>  common/machine_id.c            | 41 ++++++++++++++++++++++++++++---
>  drivers/nvmem/core.c           | 44 ++++++++++++++++++++++++----------
>  drivers/of/base.c              | 11 +++++++++
>  include/linux/nvmem-consumer.h |  5 ++++
>  include/of.h                   |  6 +++++

This lacks a change in Documentation/devicetree/bindings/ :)

Regards,
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

