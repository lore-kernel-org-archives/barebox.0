Delivery-date: Fri, 06 Oct 2023 08:51:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoegB-0082Ow-Tz
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 08:51:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoegA-0004WA-7K
	for lore@pengutronix.de; Fri, 06 Oct 2023 08:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=epbhXWbNXyGXyNDxM3mMOU7tWKQDdn+KICWB6ykjIXo=; b=5G8l26X5tgr1YcAxn/Qu9DOk66
	16AUO3kc4VVYVRZq7jVwUd2xAba4w2rOUa8opMdP20iAAgqB4gyL4eSeO41o7LBANILa+HYAXTVyj
	GNYY9RLPU1kdCDQdMF7TemledlM+BU3YXqVhXrgP/z307vXMthveQJAXtcv3ZjRbTqyKvH87LoJ4/
	JIuwbh+wTbCre2acyqiuXn4Hnu9dsm5TWu32upnMc3N/jfkI7w5LVMlYcOkgJGqgK/+g9vz+4mELs
	uoOUtFQq0lZRFwlj7ZJ216ojwtTMs6C/4xAG/V4m8LJ6D6MmBuIC0vri/bAALt9I/y/xuz3kGmb3Y
	jAwBjcwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoeem-0056Iw-0C;
	Fri, 06 Oct 2023 06:49:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoeei-0056IJ-0j
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 06:49:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoeed-0004Kl-PU; Fri, 06 Oct 2023 08:49:43 +0200
Message-ID: <bebb4782-d1cb-e870-6837-7b00133193ca@pengutronix.de>
Date: Fri, 6 Oct 2023 08:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20231006052821.3246-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231006052821.3246-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_234948_265128_29D18B50 
X-CRM114-Status: GOOD (  29.67  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: Fix return value of of_clk_get_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 06.10.23 07:28, Alexander Shiyan wrote:
> of_clk_get_by_name() is used by clk_bulk_get_optional() => clk_get() function,
> so in case some clocks are missing we should return -ENOENT error code,
> as this is normal for optional clocks.
> The current implementation of of_clk_get_by_name() returns the -EINVAL error
> that comes from of_clk_get() with index <0 if the clock is not described
> in the device tree.

I stumbled upon the same problem and found that of_clk_get_by_name() returning
ERR_PTR(-EINVAL) in this case is documented Linux behavior (for of_parse_clkspec()).

The correct solution is thus to leave of_clk_get_by_name() alone and align
clk_get return values with Linux.

I did this in
https://lore.barebox.org/barebox/20230921080236.GX637806@pengutronix.de/T/#t

Can you test with that and see if it solves your issue?

Cheers,
Ahmad 

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/clkdev.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index dbe998b6af..f6c2fcdf10 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -52,10 +52,9 @@ EXPORT_SYMBOL(of_clk_get);
>   */
>  struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
>  {
> -	struct clk *clk = ERR_PTR(-ENOENT);
> -
>  	/* Walk up the tree of devices looking for a clock that matches */
>  	while (np) {
> +		struct clk *clk;
>  		int index = 0;
>  
>  		/*
> @@ -68,11 +67,12 @@ struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
>  							 name);
>  		clk = of_clk_get(np, index);
>  		if (!IS_ERR(clk))
> -			break;
> -		else if (name && index >= 0) {
> +			return clk;
> +
> +		if (name && index >= 0) {
>  			pr_err("ERROR: could not get clock %pOF:%s(%i)\n",
>  				np, name ? name : "", index);
> -			return clk;
> +			return ERR_PTR(-ENOENT);
>  		}
>  
>  		/*
> @@ -85,7 +85,7 @@ struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
>  			break;
>  	}
>  
> -	return clk;
> +	return ERR_PTR(-ENOENT);
>  }
>  EXPORT_SYMBOL(of_clk_get_by_name);
>  #endif

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



