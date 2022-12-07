Delivery-date: Wed, 07 Dec 2022 08:01:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oQx-00DLSL-Lw
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 08:01:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oQx-0000KF-2u
	for lore@pengutronix.de; Wed, 07 Dec 2022 08:01:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=csnKSoqskcxmrSMlNWh1PpyRWDmCkTwOHAp2QYMDpsE=; b=Qy0F5O6ozhhLoMlVakxSF4qypC
	p0adTyrsx7DRQYKkzQNK7WoKhSsloeN4/BC9fvsWfkpYwXtyKTJevKhEiumC38sZg3/oXE8iNgmOo
	Qnmj3wXV7FuXJe6T+GRGSoJkct+dsDJQvUg4sKgDGNG4xPU4fZUVB3cDz/xvxdhVLRaO62NNXWUFl
	6C6mII+yMCXdklfHPxFrUUnaABxYPtYNq5al5kKBy5G8Fq/EceZ/jZJZR6hdvWuhGYPVuqotYsai7
	vxJnoiWqwouHQelhaTR00J1b44g1oRkIHEmYAgIZ49GOqu8E7Go/gGfDTrhBQP/+eOjYzBv4Z0au1
	Z/e30cGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oPm-00DdgX-PQ; Wed, 07 Dec 2022 07:00:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oPh-00DdX9-2G
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 07:00:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oPf-0008EC-RJ; Wed, 07 Dec 2022 08:00:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oPf-0000eu-K5; Wed, 07 Dec 2022 08:00:15 +0100
Date: Wed, 7 Dec 2022 08:00:15 +0100
To: Thorsten Scherer <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207070015.GC29728@pengutronix.de>
References: <20221205211149.olbstungmceamcsu@NB142.eckelmann.group>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205211149.olbstungmceamcsu@NB142.eckelmann.group>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_230017_121412_1E00B09E 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devicetree: Add folders to toctree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 10:11:49PM +0100, Thorsten Scherer wrote:
> Fixes: 594d5d58af ("Documentations: devicetree: bindings: document watchdog-priority")
> Fixes: 21dda946e7 ("restart: do restart-priority OF parsing in restart_handler_register")
> Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
> ---
>  Documentation/devicetree/index.rst | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
> index d03db3cf82..61ac0433fb 100644
> --- a/Documentation/devicetree/index.rst
> +++ b/Documentation/devicetree/index.rst
> @@ -114,5 +114,7 @@ Contents:
>     bindings/leds/*
>     bindings/misc/*
>     bindings/mtd/*
> +   bindings/power/*
>     bindings/regulator/*
>     bindings/rtc/*
> +   bindings/watchdog/*
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


