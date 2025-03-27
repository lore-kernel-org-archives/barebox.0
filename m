Delivery-date: Thu, 27 Mar 2025 09:19:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiSQ-004nGW-2Y
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 09:19:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiSQ-0007Wi-6G
	for lore@pengutronix.de; Thu, 27 Mar 2025 09:19:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FTh3pssoE+LZgLHYEEL+qGn4IMf+Nqp4wsW4o4XM5zo=; b=ZitBGkpr93EOYyZfQF9z5wPOGs
	meu9pjHt9+JJVRl0UNXM5DWFby3nbEQexGTPBRE8teobNLP+nblX3gjtrS5+0kZ46wJhmSeIgojfT
	nT/m0zYoEXFDxSnJeSZjKRi5ujHfpGilG9On6zziaYqZARR9QmPwQHsFxJgnKZpwQuSyDOdIasxea
	Vw711cy6U/gKcGCyFJQeCL3SSs3j7YzRggc+keJCvCvZ53+/+FOYBMbdFfY2ATZjhaUzP6XNEv+HW
	rUd+OcuzC4rMS5UDLAM7PndShE7QehoUa5fi2H+0ZKr9ToBTHcmi+OQqa98XeYuiBpPYDixrTwR7g
	UYfFY9qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiRy-0000000AR6h-3EwF;
	Thu, 27 Mar 2025 08:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiQe-0000000AQrd-0R12
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 08:17:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txiQc-00073n-SP; Thu, 27 Mar 2025 09:17:30 +0100
Message-ID: <25429354-d27c-40dc-8d14-dcc2fef8b74e@pengutronix.de>
Date: Thu, 27 Mar 2025 09:17:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250325160008.1076-1-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250325160008.1076-1-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_011732_148008_B40D65C0 
X-CRM114-Status: GOOD (  20.12  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] fbconsole: add missing break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.03.25 17:00, Jules Maselbas wrote:
> The cursor move CSI has nothing to do with the clear-screen CSI.
> The existing fallthrough looks like a bug, add the missing break.
> 
> Fixes: 27f79c05ab ("video: implement framebuffer console")
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
> 
>  I am not 100% sure if this is a bug or not, it feels like it sould not
>  fallthrough, an extra look would be nice.

I think it makes sense to add the break.

case 'H' (\e[{line};{column}H) is move cursor and
case 'K' (ESC[{0,1,2}K} is erase.

The code currently interprets the same integer once as line
and another time as erase type for K, which is not lines,
but rather 0 = from cursor to end of line,
           1 = from start of line to cursor
           2 = whole line 

So this patch looks correct IMO.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> 
>  drivers/video/fbconsole.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 24592d00ed..7462e34778 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -576,6 +576,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  		priv->x = clamp(pos - 1, 0, (int) priv->cols - 1);
>  
>  		show_cursor(priv, priv->x, priv->y);
> +		break;
>  	case 'K':
>  		pos = simple_strtoul(priv->csi, &end, 10);
>  		video_invertchar(priv, priv->x, priv->y);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


