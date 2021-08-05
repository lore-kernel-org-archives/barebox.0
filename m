Delivery-date: Thu, 05 Aug 2021 16:11:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBe61-0002JB-OP
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 16:11:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBe60-0002cQ-Qi
	for lore@pengutronix.de; Thu, 05 Aug 2021 16:11:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4D0o28ls6dJXXwFzizwnfENNpBo37r24UJ0/lEtpv3c=; b=iJkaryMtVb4S2n3S2ECSz8zGHX
	N3A88efvGPVdliIyGmvwfzPoFz7l2xIfKLywYegj14ISa+zf9FJ2Mw4IrWxNY012xRmHak0ROw8ox
	ITWBRGr7F3tV8ihGcyLXGs8DYOvpeNPN4EI4eJyzAW93sLNMSIRncAeajH5h+2Ykn4dn6WN9/hEmD
	LRf/HvN1vJXwveQQtdaXTWYHwcsxjPJ3HpbPYHGIt1xsLYKm6HQRrhLbyySzLl1HzxA35ziPq2Vb8
	xc1jMqesJRLM8M/+l2/CHNJP75oPN1KMXjPaw+8inljrZi5aT5U+Q+9qrGWAWctWyYeJZbnqSTIHY
	ruZJdJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBe4Q-009nbK-Ki; Thu, 05 Aug 2021 14:10:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBe4L-009naj-Q2
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 14:09:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBe4K-000295-Hl; Thu, 05 Aug 2021 16:09:56 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-5-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f992a14d-0b7c-f6b2-ff60-c2c627f02e6b@pengutronix.de>
Date: Thu, 5 Aug 2021 16:09:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-5-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_070957_897079_AB4C1DF6 
X-CRM114-Status: GOOD (  24.11  )
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
Subject: Re: [PATCH v2 4/8] of: add flag to not create resmem DT entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> If we are parsing entries from the /reserved-memory device tree path we
> don't want to add them again as resmem blocks at the beginning of the
> device tree. Therefore add another flag to indicate this.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/fdt.c | 10 +++++++---
>  include/of.h     |  2 ++
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 9356a92c5c..030f1233d5 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -559,6 +559,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end,
>  	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
>  		of_reserve_map.xn |= BIT(e);
>  
> +	if (flags & OF_RESERVE_ENTRY_FLAG_NO_RESERVE)

Did I say before I dislike the name? Perhaps something like OF_RESERVE_ENTRY_FLAG_NO_FIXUP?

> +		of_reserve_map.noentry |= BIT(e);
> +
>  	return 0;
>  }
>  
> @@ -601,9 +604,10 @@ void fdt_add_reserve_map(void *__fdt)
>  	fdt_res += n;
>  
>  	for (i = 0; i < res->num_entries; i++) {
> -		of_write_number(&fdt_res->address, res->start[i], 2);
> -		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
> -				2);
> +		if (!(res->noentry & BIT(i))) {

Nitpick: invert the condition and using continue is clearer IMO.

> +			of_write_number(&fdt_res->address, res->start[i], 2);
> +			of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1, 2);
> +		}
>  		fdt_res++;
>  	}
>  
> diff --git a/include/of.h b/include/of.h
> index 36936ecd6e..209d2898ae 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -56,9 +56,11 @@ struct of_reserve_map {
>  	uint64_t end[OF_MAX_RESERVE_MAP];
>  	int num_entries;
>  	u16 xn;
> +	u16 reserved_entry;
>  };
>  
>  #define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
> +#define OF_RESERVE_ENTRY_FLAG_NO_RESERVE	BIT(1)
>  
>  int of_add_reserve_entry(resource_size_t start, resource_size_t end,
>  		 int flags);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

