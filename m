Delivery-date: Thu, 30 Mar 2023 10:33:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnik-002ZCh-G1
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 10:33:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnih-000766-9S
	for lore@pengutronix.de; Thu, 30 Mar 2023 10:33:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9e6ZZAJPJjiblZf+aTJUlrHthGgSos8rPqxKRvomZOE=; b=P02ZVCf7qqiArmnBy/yzfc8oVb
	R/k47AoEfh+4QBQ64OOV2g4+BaEZRbWqoFzV12xc6LLTDXRLiSPP6EtBRuiIF41iksgV+LCvC7dbF
	6XMM1iJdtWqadr7OF4gcpiQkERmlTQt0jKV0HOxHkkU0rH9fy211eMFp9MBldoyVoOZHPp603qI7I
	N/TETAwTnsYmMLwg//X/qZ+JbLKc2TflrUhKD4ZTsqun6JeoVWlxuOEN8gKhBiOX9FsMJPoUFMRkN
	bCAxBoVALWAi70qJcU69JizLKJTRMgdJtJb5WVjtbPMJvfBvFYo0hDCY3nccvLi7Ope24Kl1Lp/no
	3G5protQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phnhX-0035ih-1f;
	Thu, 30 Mar 2023 08:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnhU-0035hw-2j
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 08:32:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1phnhT-0006pa-Gv; Thu, 30 Mar 2023 10:32:03 +0200
Message-ID: <ad29e5f4-654a-ce0b-a75d-952b1623fa4e@pengutronix.de>
Date: Thu, 30 Mar 2023 10:32:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
References: <20230329105638.1258096-1-p.zabel@pengutronix.de>
 <20230329105638.1258096-2-p.zabel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230329105638.1258096-2-p.zabel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_013204_880638_E98E168C 
X-CRM114-Status: GOOD (  22.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] video: Add of_get_display_timing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.03.23 12:56, Philipp Zabel wrote:
> Add a port of the kernel of_get_display_timing() that writes a
> struct fb_videomode instead of struct display_timing, which we
> don't have.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/video/of_display_timing.c | 22 ++++++++++++++++++++++
>  include/fb.h                      |  2 ++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
> index 6fe1e1b08b6a..6082d454932d 100644
> --- a/drivers/video/of_display_timing.c
> +++ b/drivers/video/of_display_timing.c
> @@ -98,6 +98,28 @@ static int of_parse_display_timing(const struct device_node *np,
>  	return 0;
>  }
>  
> +/**
> + * of_get_display_timing - parse a display_timing entry
> + * @np: device_node with the timing subnode
> + * @name: name of the timing node
> + * @mode: fb_videomode struct to fill
> + **/
> +int of_get_display_timing(const struct device_node *np, const char *name,
> +			  struct fb_videomode *mode)
> +{
> +	struct device_node *timing_np;
> +
> +	if (!np)
> +		return -EINVAL;
> +
> +	timing_np = of_get_child_by_name(np, name);
> +	if (!timing_np)
> +		return -ENOENT;
> +
> +	return of_parse_display_timing(timing_np, mode);
> +}
> +EXPORT_SYMBOL_GPL(of_get_display_timing);
> +
>  /**
>   * of_get_display_timings - parse all display_timing entries from a device_node
>   * @np: device_node with the subnodes
> diff --git a/include/fb.h b/include/fb.h
> index bf5f688342fd..15bb74b99576 100644
> --- a/include/fb.h
> +++ b/include/fb.h
> @@ -147,6 +147,8 @@ struct fb_info {
>  	int shadowfb;
>  };
>  
> +int of_get_display_timing(const struct device_node *np, const char *name,
> +			  struct fb_videomode *mode);
>  struct display_timings *of_get_display_timings(struct device_node *np);
>  void display_timings_release(struct display_timings *);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



