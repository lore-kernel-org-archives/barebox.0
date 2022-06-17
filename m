Delivery-date: Fri, 17 Jun 2022 08:42:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25gH-004u7A-IA
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 08:42:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25gH-0007Ay-9o
	for lore@pengutronix.de; Fri, 17 Jun 2022 08:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ogbXRY9bxyNpgKxpxO9HRLDnigV/fHL+VfydOnim+M=; b=hCBmYI6KnyzlUPv2qZ0c7tRmg1
	/L1isbo2z/H1TPgtsT408dsURg4LaBqJhPlBxDibP8sENg8NYyjxiBu79fFOg5q4r8wJ0i3M0owE0
	f6pwgPvULIJqus7aihcU6p67ApSXQ4ckfKUnMFcXyLwnW5di0yz3T/t7YvePITYj/J7N+fd6xUqMn
	QMfTeuv00TsU9ZMaarIRtaAlWubIVKNvf9bG+zuNTWv5/6hJqtNG9tUGYQFn58n5gcHWCTAPcZF5W
	oD/WEb6aIUvweBP3/f9SRqiBB+QzMz7buMThybC9aqWhcie1pOJx8z6wmnOveZ+TB5cLjU3Muuujx
	rGXGaj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25f4-005kcv-Ti; Fri, 17 Jun 2022 06:40:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25ez-005kcE-Ie
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 06:40:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25ey-0006wc-As; Fri, 17 Jun 2022 08:40:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25ex-0002qs-Qm; Fri, 17 Jun 2022 08:40:47 +0200
Date: Fri, 17 Jun 2022 08:40:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <20220617064047.GA1615@pengutronix.de>
References: <20220616090351.645589-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616090351.645589-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_234049_640643_B7F73584 
X-CRM114-Status: GOOD (  22.29  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH] net: rtl8169: make it work on big-endian system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 12:03:51PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/rtl8169.c | 34 +++++++++++++++++-----------------
>  1 file changed, 17 insertions(+), 17 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
> index 80997dc89f4..341f5f240e4 100644
> --- a/drivers/net/rtl8169.c
> +++ b/drivers/net/rtl8169.c
> @@ -230,13 +230,13 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
>  	for (i = 0; i < NUM_RX_DESC; i++) {
>  		if (i == (NUM_RX_DESC - 1))
>  			priv->rx_desc[i].status =
> -				BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE;
> +				cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE);
>  		else
>  			priv->rx_desc[i].status =
> -				BD_STAT_OWN | PKT_BUF_SIZE;
> +				cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
>  
>  		priv->rx_desc[i].buf_addr =
> -				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
> +				cpu_to_le32(virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE));
>  	}
>  }
>  
> @@ -358,21 +358,21 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
>  
>  	priv->tx_desc[entry].buf_Haddr = 0;
>  	priv->tx_desc[entry].buf_addr =
> -		virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE);
> +		cpu_to_le32(virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE));
>  
>  	if (entry != (NUM_TX_DESC - 1)) {
>  		priv->tx_desc[entry].status =
> -			BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
> -			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
> +			cpu_to_le32(BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
> +			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
>  	} else {
>  		priv->tx_desc[entry].status =
> -			BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
> -			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
> +			cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
> +			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
>  	}
>  
>  	RTL_W8(priv, TxPoll, 0x40);
>  
> -	while (priv->tx_desc[entry].status & BD_STAT_OWN)
> +	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
>  		;
>  
>  	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
> @@ -391,9 +391,9 @@ static int rtl8169_eth_rx(struct eth_device *edev)
>  
>  	entry = priv->cur_rx % NUM_RX_DESC;
>  
> -	if ((priv->rx_desc[entry].status & BD_STAT_OWN) == 0) {
> -		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
> -			pkt_size = (priv->rx_desc[entry].status & 0x1fff) - 4;
> +	if ((le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_OWN) == 0) {
> +		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
> +			pkt_size = (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - 4;
>  
>  			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
>  						+ entry * PKT_BUF_SIZE,
> @@ -407,14 +407,14 @@ static int rtl8169_eth_rx(struct eth_device *edev)
>  						   pkt_size, DMA_FROM_DEVICE);
>  
>  			if (entry == NUM_RX_DESC - 1)
> -				priv->rx_desc[entry].status = BD_STAT_OWN |
> -					BD_STAT_EOR | PKT_BUF_SIZE;
> +				priv->rx_desc[entry].status = cpu_to_le32(BD_STAT_OWN |
> +					BD_STAT_EOR | PKT_BUF_SIZE);
>  			else
>  				priv->rx_desc[entry].status =
> -					BD_STAT_OWN | PKT_BUF_SIZE;
> +					cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
>  			priv->rx_desc[entry].buf_addr =
> -				virt_to_phys(priv->rx_buf +
> -				             entry * PKT_BUF_SIZE);
> +				cpu_to_le32(virt_to_phys(priv->rx_buf +
> +							 entry * PKT_BUF_SIZE));
>  		} else {
>  			dev_err(&edev->dev, "rx error\n");
>  		}
> -- 
> 2.36.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


