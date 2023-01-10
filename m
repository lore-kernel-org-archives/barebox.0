Delivery-date: Tue, 10 Jan 2023 15:34:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFi2-007q1O-8v
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFi0-0003Y3-DY
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:34:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rRV3PqzaipyyTYDwHaTdSy33uSFgjJiCNdiw8qOdVNo=; b=1CDQbafedU2NC8u2lAoB8YI7Bm
	AkyDiW+F9aZn00t3aqrgyqNGYcK2Z++/EUaH/98rMY4KFVyv77V4sD8apYv8Daz0hX8fgsoQ7ZGwf
	E3dV5GDhsTBYFd7IYtRJdF2s4bRL7mr/FMjPGoKctuOlVXoLcLGR62KQmgcO8odNOjG684ZyLTmrf
	36d2r29q3F/sZxv+XzxCOz1hGjaBwGuW5dL4SuxtQkalH5I3DzJr2FGmFQa+raS2dv448wXy2wS0t
	MkXrulrOY7G5dWbB2bdN+IuQAS7Rt//BRNpaNjZv/wqtEZmuix9puErZs1VEooI0tortekOol+qeS
	+2OeJCjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFgN-007Jjb-1r; Tue, 10 Jan 2023 14:32:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFgI-007JiQ-If
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:32:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFgF-0003Mp-DD; Tue, 10 Jan 2023 15:32:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFgF-0004FL-6K; Tue, 10 Jan 2023 15:32:47 +0100
Date: Tue, 10 Jan 2023 15:32:47 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143247.GD28911@pengutronix.de>
References: <20230110133817.3939707-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110133817.3939707-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063250_627383_260D14FF 
X-CRM114-Status: GOOD (  22.26  )
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
Subject: Re: [PATCH 1/2] net: dsa: ksz9477: fix confusing message detecting
 KSZ9893 compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 02:38:16PM +0100, Ahmad Fatoum wrote:
> I have a KSZ8563RNXI-TR, which while it works, barebox reports as
> "Found KSZ9893", which is a bit confusing. For non-KSZ9893, barebox
> reports "Found KSZ9477 or compatible", so do likewise for KSZ9893.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/ksz9477.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index b3859e13bf13..0629efbd7d02 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -82,7 +82,7 @@ static int ksz9477_switch_detect(struct ksz_switch *priv)
>  	id_lo = (u8)(id32 >> 8);
>  	if ((id_lo & 0xf) == 3) {
>  		/* Chip is from KSZ9893 design. */
> -		dev_info(priv->dev, "Found KSZ9893\n");
> +		dev_info(priv->dev, "Found KSZ9893 or compatible\n");
>  		priv->features |= IS_9893;
>  		priv->features &= ~KSZ9477_PHY_ERRATA;
>  
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


