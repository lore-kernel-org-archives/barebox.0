Delivery-date: Thu, 26 Sep 2024 07:34:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth8g-002sig-0s
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:34:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth8g-0002bk-Nj
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:34:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uotihJe8BQF9m4xraLcfew4gFlKVNua9B+4hf8/5LYI=; b=y9a6+7xqTHVK17IgWx/4tGWSLX
	UI9bCPQqSp0Wywc/2esg13vp8oMmYhlq8oPaBxrq324JHcTMnQLGuaE9cSbBLDsGeGun6Deu4fqnw
	NKBMW7T6iTlhIdLzyslKYE/Ph4aJzQno6drJBTeB4+4q0tr1JmCipuLcy1xxHFS6DLr6dTCoBxQF2
	pK8mmFw80ZpasIgzpSfolOiORR69UHLiM2TIDpTmc+el8TydQTJ30GKW0lWJCq9Uf50zH07Xio55Z
	gZxsA54IJ9pP9NTE4EizP490jsbI6GE3ChJV39ANjmgDLhh5vFuk0YpwSwqCJvGzk2hMd400YL2NI
	g39B6tDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sth8D-00000007F8O-2I5L;
	Thu, 26 Sep 2024 05:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sth8A-00000007F7w-1gWc
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:33:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sth89-0002Je-7S; Thu, 26 Sep 2024 07:33:33 +0200
Message-ID: <147357bd-5fde-4d24-b3c0-5769bd08407e@pengutronix.de>
Date: Thu, 26 Sep 2024 07:33:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
 <20240925-graphics-v1-3-f1fe5d2cceec@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-3-f1fe5d2cceec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_223334_501233_8966659C 
X-CRM114-Status: GOOD (  19.99  )
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
Subject: Re: [PATCH 3/5] gui: fix alpha blend
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:34, Sascha Hauer wrote:
> gu_set_rgba_pixel() can work in two modes. When the plane does have an
> alpha channel then it just sets the RGBA values. When the plane doesn't
> have an alpha channel then it does pseudo alpha blending of the previous
> pixel value.
> 
> At least this was the intention. The function sets the alpha value
> correctly only when it's not fully opaque. Fix this by always setting
> the alpha channel when it exists.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  lib/gui/graphic_utils.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> index 93ef1214f9..d9f90f3d2e 100644
> --- a/lib/gui/graphic_utils.c
> +++ b/lib/gui/graphic_utils.c
> @@ -187,24 +187,22 @@ void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
>  	if (!a)
>  		return;
>  
> -	if (a != 0xff) {
> -		if (info->transp.length) {
> -			px |= (a >> (8 - info->transp.length)) << info->transp.offset;
> -		} else {
> -			u8 sr = 0;
> -			u8 sg = 0;
> -			u8 sb = 0;
> +	if (info->transp.length) {
> +		px |= (a >> (8 - info->transp.length)) << info->transp.offset;
> +	} else if (a != 0xff) {
> +		u8 sr = 0;
> +		u8 sg = 0;
> +		u8 sb = 0;
>  
> -			get_rgb_pixel(info, adr, &sr, &sg, &sb);
> +		get_rgb_pixel(info, adr, &sr, &sg, &sb);
>  
> -			r = alpha_mux(sr, r, a);
> -			g = alpha_mux(sg, g, a);
> -			b = alpha_mux(sb, b, a);
> +		r = alpha_mux(sr, r, a);
> +		g = alpha_mux(sg, g, a);
> +		b = alpha_mux(sb, b, a);
>  
> -			gu_set_rgb_pixel(info, adr, r, g, b);
> +		gu_set_rgb_pixel(info, adr, r, g, b);
>  
> -			return;
> -		}
> +		return;
>  	}
>  
>  	px |= (r >> (8 - info->red.length)) << info->red.offset |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


