Delivery-date: Wed, 29 Nov 2023 13:00:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8JFL-00DDCu-2S
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 13:00:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8JFL-00088j-Pz
	for lore@pengutronix.de; Wed, 29 Nov 2023 13:00:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TmJz4b2nXiGOjPrwdRpXpRGXPsrFsiKJiTEoLJLZX94=; b=0+sZPOyaQ3AdGV3PPgjM6nosAA
	DEXutNNICFwnKOLc9m4Rz/uMao6Xs8qhdYdyue4/ewm2KtFZPWtgUim2Mr6fjYR+kIGO8THOSakGK
	vUSAw9Lv0LcvE/nKdYFJ3w6pe/G9qZrtk9mg1FtO7HjmQpQkjUOCJtGB9y3PX1jsfOACZxbNRiNHX
	UFAY/y/xOCeyAQhsmJql5+OzHT5eTAM/uCEHLlZu43eRtgqPJu7gk5awT7ksIfzoLaDFb4E87jpzz
	Pt9NLjHXIJaoqrvj5X67pFyO35NJqS+4+UxKryWpO/jCUhn1ZThmoo4Z7FuS/c5hzsi06IXq4pXCM
	T8WZfkDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JE0-008Cre-0K;
	Wed, 29 Nov 2023 11:59:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JDv-008Cq1-2t
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 11:59:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8JDu-0007wK-GL; Wed, 29 Nov 2023 12:59:22 +0100
Message-ID: <4b06c0fd-856e-4769-b04d-2273d1d37815@pengutronix.de>
Date: Wed, 29 Nov 2023 12:59:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de>
 <20231129-v2023-08-0-topic-macb-v3-1-65ad6db834dc@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231129-v2023-08-0-topic-macb-v3-1-65ad6db834dc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_035923_932080_59A4E8F5 
X-CRM114-Status: GOOD (  11.95  )
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
Subject: Re: [PATCH v3 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.11.23 12:33, Steffen Trumtrar wrote:
> @@ -181,14 +189,15 @@ static int gem_recv(struct eth_device *edev)
>  		barrier();
>  		status = macb->rx_ring[macb->rx_tail].ctrl;
>  		length = MACB_BFEXT(RX_FRMLEN, status);
> -		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
> -		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
> -					DMA_FROM_DEVICE);
> -		net_receive(edev, buffer, length);
> -		dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
> -					   DMA_FROM_DEVICE);
>  		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
>  		barrier();

Is moving above two lines around intentional?

> +		dma_sync_single_for_cpu(macb->dev,
> +					macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
> +					length,	DMA_FROM_DEVICE);
> +		net_receive(edev, macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail, length);
> +		dma_sync_single_for_device(macb->dev,
> +					   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
> +					   length, DMA_FROM_DEVICE);
>  
>  		macb->rx_tail++;
>  		if (macb->rx_tail >= macb->rx_ring_size)
> @@ -202,7 +211,6 @@ static int macb_recv(struct eth_device *edev)
>  {
>  	struct macb_device *macb = edev->priv;
>  	unsigned int rx_tail = macb->rx_tail;
> -	void *buffer;
>  	int length;
>  	int wrapped = 0;
>  	u32 status;
> @@ -221,7 +229,6 @@ static int macb_recv(struct eth_device *edev)
>  		}
>  
>  		if (status & MACB_BIT(RX_EOF)) {
> -			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;

Nitpick: reworking this line would lead to less verbose changes below.


Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



