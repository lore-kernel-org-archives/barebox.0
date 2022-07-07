Delivery-date: Thu, 07 Jul 2022 16:41:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9Sh1-009NXx-Hd
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 16:41:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9Sh3-00071y-IH
	for lore@pengutronix.de; Thu, 07 Jul 2022 16:41:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZAZcAYOXqNVH1GHXvXCSMfeqH0fjfHWwzdEFGYfv4Dc=; b=Jpt9mK6cX8y8b+sLaaRbdZzOnW
	T6iHvvpcuG55uRMF89C28sauPcuvlZ4Ehm0/rG3Q5lG6+7m9MncnXWk9JoQO/ebbqY13BlZKJt8K2
	U/VD+s3zHS+bJgP1thN37huznaPUnPaGG/Jwrzb8GbujUB99vphRxjG7SWAZD78LIoytmzZpTDZQC
	tL4/XHa7My0LIM/DVOh4HSdR0/tK3loO0uhgzYCh7wAyWHoMeHY8/hQtql1UwMyhNjgxOfLZwcCwo
	W/6HhyCyYt3Zcs56gPkGIVuhOYT8iXX9ipa0jrCubkcuVwPJgU1Nn1cm+5np/94luotTo3ycU+WFx
	RHn7PXyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sfh-00GWCm-31; Thu, 07 Jul 2022 14:40:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sfc-00GWA9-18
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 14:39:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1o9Sfa-0006Y3-PR
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 16:39:54 +0200
Message-ID: <2394c1d02e1311d5797e02bbb83de2b5b825112e.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 07 Jul 2022 16:39:51 +0200
In-Reply-To: <20220706142105.2266956-3-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
	 <20220706142105.2266956-3-m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_073956_084448_0B57A5BC 
X-CRM114-Status: GOOD (  13.76  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] phy: propagate error in of_phy_get_by_phandle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2022-07-06 at 16:21 +0200, Marco Felsch wrote:
> Don't return -ENODEV if of_phy_provider_lookup() fails instead
> propagate
> the error. So errors like -EPROBE_DEFER are propagated correctly.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/phy/phy-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index ef7bd76648..8a57bd1aa9 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -317,7 +317,7 @@ struct phy *of_phy_get_by_phandle(struct device_d
> *dev, const char *phandle,
>  
>         phy_provider = of_phy_provider_lookup(np);
>         if (IS_ERR(phy_provider)) {
> -               return ERR_PTR(-ENODEV);
> +               return ERR_CAST(phy_provider);
>         }
>  
>         return phy_provider->of_xlate(phy_provider->dev, NULL);

Tested-by: Johannes Zink <j.zink@pengutronix.de> # i.MX7



