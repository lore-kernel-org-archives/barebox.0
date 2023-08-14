Delivery-date: Mon, 14 Aug 2023 07:55:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQY6-003OcE-Jt
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:55:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQY5-0000Yh-0l
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:55:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AjQJxcF/2kJHFZV2AzGDwoYLpUDpTaVcS4VpDzFMXdQ=; b=Z0bPem/nBfpmwr4NKHqZ+4NK2f
	uEiVrYFditmDpbDDJQqWbjwcXFiKgFSBys7jGn4lJ0hcJZJFs9ChE0/MpbgEFM9sW82m2fjwX8PWR
	Ts6xCequDIh8JC5gxpnm1aMS0mf3JXz/gCXjdcsoz4vo204XlbYz94SKMBIRGMMAeToK0xJ9b3aXa
	DgEacvetWov6L9uKRpCdtOr5Ab5ft5zHJtmIRy9GusER7aEjuyanKwThONMjdjMfCj7l87LyDFVlq
	cDbsrMg7TnTxcVhkP5IHP3Yf+ujkugl5O5ePL88MvxMpSO1QrEVF2vO/9ZCDPgMl9R4xTwSTvqUQf
	h5z4b4Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQX0-00GDtQ-1S;
	Mon, 14 Aug 2023 05:54:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQWx-00GDrU-12
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:54:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVQWu-0000CG-GS; Mon, 14 Aug 2023 07:54:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVQWu-0002Re-7y; Mon, 14 Aug 2023 07:54:16 +0200
Date: Mon, 14 Aug 2023 07:54:16 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814055416.GA26314@pengutronix.de>
References: <20230811115325.2646286-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811115325.2646286-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_225419_354774_D20BD0C8 
X-CRM114-Status: GOOD (  19.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/2] net: ksz9477: add support for ksz9893 switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 11, 2023 at 01:53:24PM +0200, Oleksij Rempel wrote:
> Add support for Microchip KSZ9893 switch. No additional changes seems to
> be needed.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/ksz9477.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 61142aa97b..a6a8144479 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -476,6 +476,7 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
>  	{ .compatible = "microchip,ksz8563" },
>  	{ .compatible = "microchip,ksz9477" },
>  	{ .compatible = "microchip,ksz9563" },
> +	{ .compatible = "microchip,ksz9893" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, microchip_switch_dt_ids);
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


