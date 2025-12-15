Delivery-date: Mon, 15 Dec 2025 13:30:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7iT-00Bk5s-12
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:30:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7iS-0005p5-Ov
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:30:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lFTDHUOKc1LdNPeVxmmvGUDwu6kGFOluyV7I4t3UzlA=; b=GUip+ue+PGmx6iYLGT6oub3NUy
	buFfx/QLDryDP2hRNaxTI/tFZyFvqP7jseRYb5l/QZjXTd3HkMWICe+1NMy3KbzJTwBngLUY6XYvX
	FFxsSmZuHXVpeAyFXnvDnM30+w8us73op4iFFWPBmq1gjboGQyjq1MqvfwP1eCFCYxB5PhyTGik1h
	r32CyMgid7bbQ0YlbAPmxtrmo2ms+CCIc6cLUaJUntAIsjxf4OEygyY2T5DThN2Ila0Yg70gJneBo
	/FZoBL4n9jR+v2CWucgrzyki9u/Yh4qQb5lEvhClimbO+32ca4B+ZO/0GMaIC7OZvlBSd1Oa28/V2
	mgBm1HJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7hx-00000003ccI-3xnT;
	Mon, 15 Dec 2025 12:29:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7hv-00000003cbr-1QDi
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:29:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7ht-0005jT-PS; Mon, 15 Dec 2025 13:29:41 +0100
Message-ID: <08c6672d-f810-40dc-90eb-9e60e2def34e@pengutronix.de>
Date: Mon, 15 Dec 2025 13:29:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-2-f0b6e79b5fa0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251203-efi-partition-refresh-v1-2-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_042943_381666_F4B4C492 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/6] partitions: gpt: only write actual ptes size to
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/3/25 4:19 PM, Sascha Hauer wrote:
> For the alternate GPT we hardcode to write 32 blocks for the partition
> entries. When writing partitions we only accept partition tables with
> 128 entries which translates to 32 blocks anyway, so no functional
> change, but for correctness use the variable we also use for writing
> the primary GPT's partition entries.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/partitions/efi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index da9c2d89c1c68ae1acebc1f8eaea8da48243f0d6..76c5393dddb04e2966d3a4b4478d5085f008d935 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -801,7 +801,7 @@ static __maybe_unused int efi_partition_write(struct partition_desc *pd)
>  
>  	if (ret)
>  		goto err_block_write;
> -	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, 32);
> +	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, size);
>  	if (ret)
>  		goto err_block_write;
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



