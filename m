Delivery-date: Wed, 31 May 2023 12:34:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4J9Z-0048KK-PM
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:34:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4J9X-000489-DZ
	for lore@pengutronix.de; Wed, 31 May 2023 12:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6ItM9/HtCmIgEcltyrHiUl6MMTPl+LRv4FN61Q4CQg=; b=EdQ4PlDi0pjrNO
	Nd3IIgnbDpB5YnpJNorosUwiUvPhDHsnKTmezkJj5DmGwr/KjxGSAvwV+mVt4S9c9kTjJdivWsIwV
	mZonys8Ur75ZhYgOo8kpVkBelinzHTcM5U2QxhASNaPYIZZ4ASm9U58bXQ6YWaIfsdTEO4XACFRXv
	H6rU2eMr4UGsVvQunt+ePhABb4Qb1pnV0C/uaAQFIJwSiYwlvxbOf27xtZQy+/0Ky1SQ0e7/YLr5Y
	m72HGSj/tykmn26amy+PWY2BDc049Vg7IdtkkRZSLlkfSHtyNWv95cXfIH7sdpcmxDTYJ4X3m78cn
	8FjEfUKcsR0d78kADMgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4J8N-00H6DC-0e;
	Wed, 31 May 2023 10:32:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4J8I-00H69g-35
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:32:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4J8H-00044c-12; Wed, 31 May 2023 12:32:45 +0200
Message-ID: <e72f140e-7952-a8dc-63d3-a4ca8d06b66c@pengutronix.de>
Date: Wed, 31 May 2023 12:32:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>
References: <20230531102337.843892-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531102337.843892-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_033247_019841_F2438290 
X-CRM114-Status: GOOD (  26.08  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Revert "dma: use dma/cpu conversions correctly in
 dma_map/unmap_single"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 12:23, Sascha Hauer wrote:
> This reverts commit d13d870986eeecc58d8652268557e4a159b9d4c4.
> 
> While the patch itself is correct, it at least breaks USB on the
> Raspberry Pi 3b.
> 
> With this patch dma_sync_single_for_device() is passed the DMA address.
> This is correct as even the prototype suggests that it should get a
> dma_addr_t. Unfortunately this is not what the function implements and
> also not what the users expect. Most if not all users simply pass a CPU
> pointer casted to unsigned long. dma_sync_single_for_device() on ARM
> then takes the DMA address as a CPU pointer and does cache maintenance
> on it.
> 
> Before we can merge this patch again dma_sync_single_for_device() must
> get a struct device * argument and (on ARM) the cpu_to_dma() conversion
> must be reverted before doing cache maintenance.

@Denis, could you give some background on your patch? I assume this was
for MIPS? Did this patch fix breakage for you? In what driver? Maybe
a follow-up patch that fixes your particular breakage while not breaking
ARM could be found until that wart is cleaned up for good.

Cheers,
Ahmad


> ---
>  drivers/dma/map.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/map.c b/drivers/dma/map.c
> index fea04c38a3..114c0f7db3 100644
> --- a/drivers/dma/map.c
> +++ b/drivers/dma/map.c
> @@ -23,15 +23,17 @@ static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
>  dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
>  			  enum dma_data_direction dir)
>  {
> -	dma_addr_t ret = cpu_to_dma(dev, ptr);
> +	unsigned long addr = (unsigned long)ptr;
>  
> -	dma_sync_single_for_device(ret, size, dir);
> +	dma_sync_single_for_device(addr, size, dir);
>  
> -	return ret;
> +	return cpu_to_dma(dev, ptr);
>  }
>  
>  void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
>  		      enum dma_data_direction dir)
>  {
> -	dma_sync_single_for_cpu(dma_addr, size, dir);
> +	unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
> +
> +	dma_sync_single_for_cpu(addr, size, dir);
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



