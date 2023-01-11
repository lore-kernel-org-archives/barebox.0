Delivery-date: Wed, 11 Jan 2023 09:02:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW43-008dpv-JU
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:02:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW40-0000DS-V5
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:02:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c/hnWjFsFZP8K05KA9Mwfaj0T4iDj89K0LiOMWMqqm0=; b=BqGxBosbVlk/yuopRtxWbZyqTw
	U9u5ww+5UMR5eBxzh40kLCw48n9ey5b23kxMU0o03vPMp9x1TbEZB38s7ZQWkNpb1ejtY5map+c3f
	ygk439pDcY6O/NktcOXx+0+bs4MCyLCaOLkpFl7ZZrHGWjCyBdrACjB+yB3nTf3XkQUQlHN4LsWJM
	qyh+JGkxx/RzU223Cs5xrpqCeUAPXoAK0uagO4PQApTfhcrsN9Rsc4rY+CBVHaETXfvU7Cfo/5Sl8
	Bw+V6Vp6e71u1+kExzuiFPTddOEkn+tUv8q3Gouw799dJTe1R3qfG8etkX2zQ4nZfM0caPfMuJLxD
	AqLDfi3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW2f-00AEBc-AZ; Wed, 11 Jan 2023 08:01:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW2T-00AE6v-LX
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:00:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW2S-0007za-Bk; Wed, 11 Jan 2023 09:00:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW2S-0006GR-5v; Wed, 11 Jan 2023 09:00:48 +0100
Date: Wed, 11 Jan 2023 09:00:48 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111080048.GF24755@pengutronix.de>
References: <20230110180126.73739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110180126.73739-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000049_777551_77A8B21F 
X-CRM114-Status: GOOD (  22.28  )
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
Subject: Re: [PATCH 1/2] net: bcmgenet: fix warning when building for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 07:01:25PM +0100, Ahmad Fatoum wrote:
> The driver readily works in 32-bit mode as it takes care there
> to write zero to the DMA_DESC_ADDRESS_HI field of descriptors.
> In the receive path, a 32-bit integer is shifted by 32 though
> leading to a (harmless) warning. Adjust the type to silence it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/bcmgenet.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
> index 32ec36eff65a..3ae341a658a0 100644
> --- a/drivers/net/bcmgenet.c
> +++ b/drivers/net/bcmgenet.c
> @@ -314,8 +314,8 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
>  	struct bcmgenet_eth_priv *priv = edev->priv;
>  	void *desc_base = priv->mac_reg + GENET_RX_OFF + priv->rx_index * DMA_DESC_SIZE;
>  	u32 prod_index = readl(priv->mac_reg + RDMA_PROD_INDEX);
> -	u32 length;
> -	unsigned long addr_lo, addr_hi, addr;
> +	u32 length, addr_lo, addr_hi;
> +	dma_addr_t addr;
>  
>  	if (prod_index == priv->c_index)
>  		return -EAGAIN;
> @@ -324,7 +324,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
>  	length = (length >> DMA_BUFLENGTH_SHIFT) & DMA_BUFLENGTH_MASK;
>  	addr_lo = readl(desc_base + DMA_DESC_ADDRESS_LO);
>  	addr_hi = readl(desc_base + DMA_DESC_ADDRESS_HI);
> -	addr = addr_hi << 32 | addr_lo;
> +	addr = (u64)addr_hi << 32 | addr_lo;
>  
>  	dma_sync_single_for_cpu(addr, length, DMA_FROM_DEVICE);
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


