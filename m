Delivery-date: Tue, 10 Jan 2023 15:35:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFjH-007q4d-0i
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:35:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFjF-000438-0w
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AswP0s+Sdqsvy/lkczmmOzdqRqKKkc4MyjE5CPbc61A=; b=SnuHzxPsWOdE7/BV6W8Smyls/K
	AMxTPzwJWS/1r99Ka4Tq/vPJpsbZq0UgFtXQq9ckP45jo+jSvBi59wIB4eiBOEv+I/oloMhio03Hf
	EzNRwkUN/CWxyjy8KuD4FTb8moiBgkK9P9DAExz5fetn5N1MZewONXyg3PhK1Dy85YBJt45lTUJmq
	1+mLlcZzmYIH8U1OLftKA67bgXdOWWEHUo04J9PFaGXnSv5w83D69goyPAt8znlDEb0U9foRl7sfc
	etQ9GakEqmlkQh12gm4CJPHwsUPqHgoB0qb/MVY3Y3BgIK4D3iSQWkZi1nQIVqGOsrq/iUiT4dF9o
	JhPwRtag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFi6-007K6D-QW; Tue, 10 Jan 2023 14:34:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFi2-007K5I-5p
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:34:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFhz-0003Y4-Im; Tue, 10 Jan 2023 15:34:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFhz-0004Gg-Cl; Tue, 10 Jan 2023 15:34:35 +0100
Date: Tue, 10 Jan 2023 15:34:35 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143435.GF28911@pengutronix.de>
References: <20230110085159.3440210-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110085159.3440210-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063438_236626_31EFA6A3 
X-CRM114-Status: GOOD (  21.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] nvmem: ocotp: decouple featctrl from
 barebox,provide-mac-address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 09:51:59AM +0100, Ahmad Fatoum wrote:
> imx_ocotp_init_dt() does both barebox,provide-mac-address and
> barebox,feature-controller parsing, but it erroneously exited
> early when the former was not available. Change this so no
> early exit happens.
> 
> Fixes: 4adc4e12ac95 ("nvmem: ocotp: add i.MX8M[MN] feature controller support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 7545059aa92b..2fef84074302 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -646,14 +646,12 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
>  	const __be32 *prop;
>  	struct device_node *node = priv->dev.parent->of_node;
>  	u32 tester4;
> -	int ret, len;
> +	int ret, len = 0;
>  
>  	if (!node)
>  		return 0;
>  
>  	prop = of_get_property(node, "barebox,provide-mac-address", &len);
> -	if (!prop)
> -		return 0;
>  
>  	for (; len >= MAC_ADDRESS_PROPLEN; len -= MAC_ADDRESS_PROPLEN) {
>  		struct device_node *rnode;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


