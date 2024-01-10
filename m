Delivery-date: Wed, 10 Jan 2024 07:44:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSKF-00BIhH-0w
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 07:44:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSKE-0006dW-N6
	for lore@pengutronix.de; Wed, 10 Jan 2024 07:44:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kDhK5Tu7qFJAAljDTGI+yAI3WFA0tcBjjbNBtDplpIE=; b=wP4K+UCpMPNakyD/q6ChTeQW8+
	aUW651mGkoMcPCIcGXP13SzKx93oLkftIldpVUhW2ik662w8jQfA+QXlIUJqJ7ehp0YDa2ddfL2zc
	Tvf6gDfrAf+mq7Cp+WroCCWARnKmRVt/ufdoEu5yCLChhC2m6HmM7UnO8Gcmk/b1c9vA8aSVI01Ji
	p5DtvZRp0KT4wmcpR5SFXK/rVblWA4BI7O88j/yAdRuxlbTFH49RphR0Gnq7Lcax3dmG0tOM4WLmP
	nGlRjS6RoizRRd1OSKMA+16gP93wGC1NVG8Bf4Sy1s+G7b/nC7ld2NTjk9oPN/rIfufEDRLnhyLxr
	i4YqfFPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSIk-00AVjn-1N;
	Wed, 10 Jan 2024 06:42:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSIh-00AVj8-0f
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 06:42:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSIb-0006S9-Ly; Wed, 10 Jan 2024 07:42:49 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSIZ-001dzy-Iw; Wed, 10 Jan 2024 07:42:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSIZ-00BAMD-GW; Wed, 10 Jan 2024 07:42:47 +0100
Date: Wed, 10 Jan 2024 07:42:47 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110064247.GI1318922@pengutronix.de>
References: <20240108101419.1290778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108101419.1290778-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_224255_240532_8D69409C 
X-CRM114-Status: GOOD (  20.00  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] net: fsl-fman: fix alignment of RX buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 08, 2024 at 11:14:18AM +0100, Ahmad Fatoum wrote:
> The receive buffer needs to be cacheline aligned for cache maintenance
> to avoid invalidating unrelated malloc memory. This was so far not the
> case due to malloc's minimum alignment of 8-byte (with TLSF), so switch
> to dma_alloc instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/fsl-fman.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
> index ff32fa8fc753..baafe027c079 100644
> --- a/drivers/net/fsl-fman.c
> +++ b/drivers/net/fsl-fman.c
> @@ -620,9 +620,7 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
>  			* RX_BD_RING_SIZE);
>  
>  	/* alloc Rx buffer from main memory */
> -	rx_buf_pool = malloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
> -	if (!rx_buf_pool)
> -		return -ENOMEM;
> +	rx_buf_pool = dma_alloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
>  
>  	memset(rx_buf_pool, 0, MAX_RXBUF_LEN * RX_BD_RING_SIZE);
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


