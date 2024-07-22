Delivery-date: Mon, 22 Jul 2024 19:49:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVxAc-001spa-1n
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:49:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVxAb-0004SL-V3
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:49:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B7SQd46gQTbxtZLjldup6k01XSIfzDNifSzHMLXTcXE=; b=dcFYc3J1U+VkagYSADDXpgMU0B
	9TdZnDlr5Zhqy98ZpUveHead6tKk8X4TqjtEFYcxkLx0XXAaBepjLlWelDS1PfunkYIAKeqxpH1Uz
	W13zlG78jMvHjsDsVIglkulADze7tWej/vb1lN3RnpV7FzJ7L17khBEUwUP0pWlXQsw6LU2d9MQeG
	RyBBhG4czRtgz11I0cV0j8EY5M4kIhBHm/n49E/qmCJjCghDkB5q4oTTcLx2N/fGhliQF2paZTjsA
	II02W8NrzI2GCOWCCNNowjQDYrCJDZUvFWh+zKHlpDJW7RcqMU7XvCyIsmd8EcR5Viyr0r4813dGi
	wiuNgUvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVxA1-0000000ADwT-111F;
	Mon, 22 Jul 2024 17:49:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVx9x-0000000ADvx-3anX
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:49:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sVx9u-0004PG-Q3; Mon, 22 Jul 2024 19:49:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sVx9u-001R3K-DF; Mon, 22 Jul 2024 19:49:14 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sVx9u-00Bczs-10;
	Mon, 22 Jul 2024 19:49:14 +0200
Date: Mon, 22 Jul 2024 19:49:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240722174914.r3uwujez6gvuipsj@pengutronix.de>
References: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_104917_914758_3268059C 
X-CRM114-Status: GOOD (  17.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] resource: return NULL for error in
 request_barebox_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-07-22, Ahmad Fatoum wrote:
> The function currently returns NULL for error if the range is in SDRAM
> and couldn't be requested or an error pointer if the range is outside.
> 
> Reduce the confusion by using only one way to indicate error. As
> request_barebox_region is used to replace request_sdram_region calls and
> that returns NULL on error, follow suit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/memory.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/common/memory.c b/common/memory.c
> index eb7838d03613..c155cb317f25 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -84,9 +84,12 @@ struct resource *request_barebox_region(const char *name,
>  	resource_size_t end = start + size - 1;
>  
>  	if (barebox_res && barebox_res->start <= start &&
> -	    end <= barebox_res->end)
> -		return __request_region(barebox_res, start, end,
> -					name, IORESOURCE_MEM);
> +	    end <= barebox_res->end) {
> +		struct resource *iores;
> +		iores = __request_region(barebox_res, start, end,
> +					 name, IORESOURCE_MEM);
> +		return !IS_ERR(iores) ? iores : NULL;

Of course a nit but IMHO

   		return IS_ERR(iores) ? NULL : iores;

is easier to read.

Regards,
  Marco

> +	}
>  
>  	return request_sdram_region(name, start, size);
>  }
> -- 
> 2.39.2
> 
> 
> 


