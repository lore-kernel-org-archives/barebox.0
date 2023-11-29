Delivery-date: Wed, 29 Nov 2023 07:33:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8E8C-00Cw5r-1F
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:33:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8E8C-0004Yr-Ds
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:33:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTpqFmUm7S7o4SDQhYqvGxsSR5LigyOWoUClN3Maitk=; b=s2EsWrJrRPoY/1nHfS+ePdcerz
	bQRCHI6O8cC4ptSI2xux2zQF4SY/59wqMd+ytRNR2cw3BFmnJpNbwTt6DfyjnhpmBjzVm4vBbUi93
	j8+aX0OiVBVhXCuENP6N5YgSe8zOQFZiRJnmIo7SbPhz9r4UrXa00/kj6rtkIVnnRbDilbNtu/nZ/
	TY5T10vMw4honMPMTnN2EzIkbqhAH2vhxGQ+hfidRRbRoRiQJFiS3Wvty9+wpsHN6vBd7QUefyIk9
	cvuiYN1qlmifnvoPRLDdr8tsc1Fv+13AdnummYbmmHJnmJ61tVzx3BGMUt4qTYQ6LZygz8wnr4SPv
	KCjgylWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8E6q-007Eha-0R;
	Wed, 29 Nov 2023 06:31:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8E6m-007Efl-07
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:31:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8E6k-0004N6-Ek; Wed, 29 Nov 2023 07:31:38 +0100
Message-ID: <f6fba7e0-864f-4fb9-aa34-5cea250325a8@pengutronix.de>
Date: Wed, 29 Nov 2023 07:31:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
 <20231128-v2023-08-0-topic-macb-v1-2-9faff73bc990@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231128-v2023-08-0-topic-macb-v1-2-9faff73bc990@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_223140_075643_AC57BBD1 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] net: macb: convert to volatile accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 28.11.23 17:29, Steffen Trumtrar wrote:
> +	writel(ctrl, &macb->tx_ring[tx_head].ctrl);
> +	writel((ulong)packet, &macb->tx_ring[tx_head].addr);
>  	dma_sync_single_for_device(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);

For this buffer dma_map_single is missing. I just sent out a series to implement
CONFIG_DMA_API_DEBUG by the way that should catch this (as well as the original
issue in the Rx path).

> -	macb->gem_q1_descs[0].addr = 0;
> -	macb->gem_q1_descs[0].ctrl = MACB_BIT(TX_WRAP) |
> -		MACB_BIT(TX_LAST) | MACB_BIT(TX_USED);
> +	writel(0, &macb->gem_q1_descs[0].addr);
> +	setbits_le32(&macb->gem_q1_descs[0].ctrl,
> +		     MACB_BIT(TX_WRAP) | MACB_BIT(TX_LAST) | MACB_BIT(TX_USED));

Should be writel to maintain previous semantics.

> -	macb->tx_ring[TX_RING_SIZE - 1].addr |= MACB_BIT(TX_WRAP);
> +	writel(MACB_BIT(TX_WRAP), &macb->tx_ring[TX_RING_SIZE - 1].addr);

Should be a setbits_le32 to maintain previous semantics.

>  		/* Disable the second priority rx queue */
> -		macb->gem_q1_descs[1].addr = MACB_BIT(RX_USED) |
> -				MACB_BIT(RX_WRAP);
> -		macb->gem_q1_descs[1].ctrl = 0;
> +		setbits_le32(&macb->gem_q1_descs[1].addr,
> +			     MACB_BIT(RX_USED) | MACB_BIT(RX_WRAP));

Should be a writel to maintain previous semantics.

> +		writel(0, &macb->gem_q1_descs[1].ctrl);
>  
>  		gem_writel(macb, RQ1, (ulong)&macb->gem_q1_descs[1]);
>  	}
> 

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



