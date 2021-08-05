Delivery-date: Thu, 05 Aug 2021 15:55:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdqG-0001YF-L5
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 15:55:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdqF-0000dk-P5
	for lore@pengutronix.de; Thu, 05 Aug 2021 15:55:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=47xTLUGQUBDbYVFe+ezVAT80Y5QBjEXmnFP8UrGaME0=; b=d+JrCIIeYbyHZrAp1OE2ydZlQP
	oLNm8w3n4bFcGqNENu5u4N+82qqvwB32SnIF0hNzh5stgxyKOlqU5O92NBI5lYxJLwkajXqzGV6hv
	37PNg7zOyLbEErkTnNdkjN5YupH74VNj7c8RUoJrVO0+BdkYnFTIqezMgeamx96jNj0095t4gxyL9
	vpy61a4xQJ5QQQv7i+QKH/XujzaV1dKEEkVShLnoDNXSGrg3uifVtUZoIHroYnG/uQFRB6GKZ3hHu
	VLTwbBEluLP0saWUxyi7pRb5ikoVwGMV1JhNGJDe3ZCpuTnnQbB0V2gOh35kRipmdCMYUtZIuaw/W
	/AyGz8Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBdp2-009kUk-L4; Thu, 05 Aug 2021 13:54:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBdox-009kTv-2g
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 13:54:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBdov-0000Fh-S6; Thu, 05 Aug 2021 15:54:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-2-r.czerwinski@pengutronix.de>
Message-ID: <1ed2d652-e8a1-46b6-4515-ca89d279088f@pengutronix.de>
Date: Thu, 5 Aug 2021 15:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-2-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_065403_180070_EE479EC1 
X-CRM114-Status: GOOD (  16.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/8] of: reserve: add xn flag mem entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> If the OF_RESERVE_ENTRY_FLAG_XN flag is passed while creating the
> entry, a subsequent commit will use this information in the mmu to map
> the area as non-executable.

A changelog would've been nice.

> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> index d962fba751..6e61766e54 100644
> --- a/arch/arm/mach-layerscape/ppa.c
> +++ b/arch/arm/mach-layerscape/ppa.c
> @@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>  	if (ret)
>  		return ret;
>  
> -	of_add_reserve_entry(ppa_start, ppa_end);
> +	of_add_reserve_entry(ppa_start, ppa_end, 0);

Same comment as last time. I believe this should be mapped _XN too,
but that should be tested first.

Thus:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

If you respin the series, you may want to add a TODO comment here,
so it is not forgotten.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

