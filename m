Delivery-date: Fri, 17 Jun 2022 09:02:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25zu-004vY9-Ld
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 09:02:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25zu-0001RC-QA
	for lore@pengutronix.de; Fri, 17 Jun 2022 09:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B4HRX3zTVQBQXYP7hCJTes+1LqAmVk+60ibkhrE90XA=; b=MPuEtBBrYFkHjZViWFKV3L4HyQ
	0lBYKTafZmHBy6tgJ+2gKYY/32sopsz6SnVzLwgInoMuZF+gLqFtmJv+LuhikSWesnPNsHlr1KGdT
	y1k7y90yUQ8kblsfxLmiipxaRO9aoMw66F4XCh66mSyoTrw4kOgh66+M9z9gAxOvR1Y7fzJCr8zTi
	g384ssP6zi7FoRX/GxA93AS2z1yRcgf5/dAN0nQWQcTHTp06qr1R7ZuiflwzsCNKOApJlMK2L/pCa
	j5Iw+wpvvQOpyuQheOd3m7DeG7FOZzjIBmrfppGPWtsGY65IjwyPfBGnZO/Os5ogE9aAGWfYJ39mQ
	0E6YWt/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25yP-005ooE-Um; Fri, 17 Jun 2022 07:00:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25yJ-005ond-KX
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 07:00:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25yI-00015z-CS; Fri, 17 Jun 2022 09:00:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25yI-00046D-3Z; Fri, 17 Jun 2022 09:00:46 +0200
Date: Fri, 17 Jun 2022 09:00:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, david@protonic.nl,
	Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20220617070046.GD1615@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-3-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616131114.214628-3-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_000047_711778_BE50BAF4 
X-CRM114-Status: GOOD (  20.50  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/9] ARM: boards: protonic-imx6: Update comment to match
 a recent code update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 03:11:07PM +0200, Robin van der Gracht wrote:
> Fixes: 1e817b64bc45968320597344e6b05463edd9c5e5

We don't have this commit in mainline, could you reference the
corresponding upstream commit instead? Please write as
aabbccddeeff ("subject")

Sascha

> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index 8f8a0c745e..3116f3ac42 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -392,7 +392,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
>  		else
>  			priv->usb_delay = 1;
>  
> -		/* the usb_delay value is used for poller_call_async() */
> +		/* the usb_delay value is used for wq_queue_delayed_work() */
>  		delay = basprintf("%d", priv->usb_delay);
>  		ret = setenv("global.autoboot_timeout", delay);
>  		if (ret)
> -- 
> 2.34.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


