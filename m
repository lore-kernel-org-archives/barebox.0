Delivery-date: Wed, 29 Nov 2023 13:04:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8JIn-00DDHm-1U
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 13:04:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8JIn-0000H7-I3
	for lore@pengutronix.de; Wed, 29 Nov 2023 13:04:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WgsMl7/BLCeq+GZBKYFTzIKw97B2GoEZ36xPh3Rg7k=; b=XqRSnm7F1s+GPKM2ExwMxDF7RJ
	Afst0QGFXuf7e91fYpWZYgjtCW3ZVbF8f2SN3dlv0nPK1XI1aTI3ngZGHnCCXqAVdOH5rqyzcmA4m
	9ueewP9rLmTpIX3a4txUL67Kdt749sowq0GkzWYvqbbCEcGeIQJadTNXuR1SiNeeXC/JjUajqhLmY
	m8Et1rgIfbtfAu+WXRK7uKYRJkZQQzDyvhwGZ5AZWfa+7FHJadJA264B5iIYx4f0vQAc9SsChTUE4
	DBF5pGFfUqSkydQWJ4E1Ui8XRat3m2zieSMhtttNILiA0jSNdPnYoVYDOkxWLWm8kWNu6+VGVQLMG
	Ak7GPVEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JHg-008DkJ-1X;
	Wed, 29 Nov 2023 12:03:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JHc-008Dht-1m
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 12:03:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8JHb-00005I-9q; Wed, 29 Nov 2023 13:03:11 +0100
Message-ID: <7b717a50-8d5a-4bc5-9a2a-6b6f0216ca55@pengutronix.de>
Date: Wed, 29 Nov 2023 13:03:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de>
 <20231129-v2023-08-0-topic-macb-v3-2-65ad6db834dc@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231129-v2023-08-0-topic-macb-v3-2-65ad6db834dc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_040312_589200_213DE436 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH v3 2/2] net: macb: convert to volatile accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 29.11.23 12:33, Steffen Trumtrar wrote:
>  		dma_sync_single_for_cpu(macb->dev,
>  					macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
>  					length,	DMA_FROM_DEVICE);
> @@ -198,6 +190,7 @@ static int gem_recv(struct eth_device *edev)
>  		dma_sync_single_for_device(macb->dev,
>  					   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
>  					   length, DMA_FROM_DEVICE);
> +		clrbits_le32(&macb->rx_ring[macb->rx_tail].addr, MACB_BIT(RX_USED));

This is being moved around in the previous patch and moved back here, so that move
seems to have been unintentional.

By the way, did you see my comment about increasing PKTSIZE to be a multiple
of 64 bytes?

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



