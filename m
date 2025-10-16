Delivery-date: Thu, 16 Oct 2025 14:06:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9Mkk-008Rzv-0W
	for lore@lore.pengutronix.de;
	Thu, 16 Oct 2025 14:06:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9Mkj-0006nF-K2
	for lore@pengutronix.de; Thu, 16 Oct 2025 14:06:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u+BeRmwzK0xKduTIoxaQFmMKBz46j+v5/39bNgyR/f4=; b=BAIIvyOW1b/ufviC4PKgpAjs34
	sjWFPh4rGVhimfhKIkYoFGPbVjDW/7Mfdyy1duvLsKCPdQ30WO3cydfv2TncmvMsdOhldvLt12gII
	J7PP82e82Hqx7mFKzzaZ1Fi5irstuFCqNB0phv7c4rQnYNXNuSa09uiJddcPvPG8f1AcCdBHBh5qL
	eg/UEei+YjaKt6BrZb3FntvBiZKMCpVSaoadClImD/jG/yepjBckwJwEXpq6gcgpo7svRcA/hOPqU
	7xNYIt8naVgJqoFkuooQKvcAIBNFJZgb+y+tqMlo6oqWrWHj2ySnfzxdunUn8nqmnH/wNHwKRlMjD
	shIh6MqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Mjx-00000004fQl-2duP;
	Thu, 16 Oct 2025 12:05:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Mjv-00000004fPS-1ziV
	for barebox@lists.infradead.org;
	Thu, 16 Oct 2025 12:05:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v9Mjs-0006Zv-G4; Thu, 16 Oct 2025 14:05:48 +0200
Message-ID: <e43bdf62-f5cf-4f4c-9f78-4332b175b422@pengutronix.de>
Date: Thu, 16 Oct 2025 14:05:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-virtiospam-v1-1-138c7a8dd3de@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251014-virtiospam-v1-1-138c7a8dd3de@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_050551_517446_D8D47684 
X-CRM114-Status: GOOD (  16.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] virtio: Stop spamming debug buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/14/25 11:37 AM, Jonas Rebmann wrote:
> At log level 7, this permanently prints over a hundred times per second,
> probably unneeded debug print, drop it.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/virtio/virtio_ring.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
> index 284721aeff..c1c84e4961 100644
> --- a/drivers/virtio/virtio_ring.c
> +++ b/drivers/virtio/virtio_ring.c
> @@ -241,10 +241,8 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
>  	u16 last_used;
>  	void *ret;
>  
> -	if (!more_used(vq)) {
> -		vq_debug(vq, "No more buffers in queue\n");
> +	if (!more_used(vq))
>  		return NULL;
> -	}
>  
>  	/* Only get used array entries after they have been exposed by host */
>  	virtio_rmb();
> 
> ---
> base-commit: 8785a6ad7467b6f1f70b6e12aa2ceb2fdd5d8546
> change-id: 20251014-virtiospam-72c3f6fb134b
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



