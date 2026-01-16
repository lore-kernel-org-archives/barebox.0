Delivery-date: Fri, 16 Jan 2026 11:17:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggtV-001vYY-0e
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 11:17:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggtU-0004gi-78
	for lore@pengutronix.de; Fri, 16 Jan 2026 11:17:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQqMOVIoKqZNP96krHfuFpub0DwCGgiZpopzzB6UxRY=; b=krxsVZLm967AzYMgwZoS+ZfWhy
	dmYymUAfkaxqwWS0vi+2SRj3GY07Wk9orxtADO1kvTWgfw8bNIa3xp86uqQ/sCPFWnC5DXlQUmlcl
	nCsZi2FjnIlsUpltO5PjKFBrgXmMolF5p6ANj2cTXyPsqtbePvFyKAC0DLH1c/2JM9RzdWo503SZB
	wYNBu4uiJ5mQhkOYOVoVvNpPXPEtys99rJdV3wknktFMDTm0t9odUjQHL3XggoUb2TQxEIwIpDCFY
	HkmNqGyD+PwUBGmdSe3bCkWLrvqSflymWRccLp7TXsOoVtz4L+Oua/3yvqxX2VbHwSxOvgxQvv8Ef
	sfnoCI+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggt8-0000000DvX1-1R0C;
	Fri, 16 Jan 2026 10:17:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggt5-0000000DvVx-1X67
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 10:17:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vggt3-0004Yy-OX; Fri, 16 Jan 2026 11:17:01 +0100
Message-ID: <60f0bd53-ac1d-41a2-9045-afadece49722@pengutronix.de>
Date: Fri, 16 Jan 2026 11:17:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260116091813.1370724-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260116091813.1370724-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_021703_409697_A4777E99 
X-CRM114-Status: GOOD (  15.96  )
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
Subject: Re: [PATCH] treewide: Fix wrong EXPORT_SYMBOL()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/16/26 10:18, Sascha Hauer wrote:
> - duplicate EXPORT_SYMBOL_GPL(gpio_request_one), one should be
>   EXPORT_SYMBOL_GPL(gpiod_request_one) instead
> - duplicate EXPORT_SYMBOL(ucs2_strncmp), one should be
>   EXPORT_SYMBOL(ucs2_strcmp) instead
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Is this not a subset of
https://lore.barebox.org/barebox/20260115115924.3428886-6-a.fatoum@barebox.org/T/#u

?

Thanks,
Ahmad

> ---
>  drivers/gpio/gpiolib.c | 3 +--
>  lib/ucs2_string.c      | 2 +-
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index e1493ffb66..582f3fe58f 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -662,8 +662,7 @@ struct gpio_desc *gpiod_request_one(unsigned gpio,
>  
>  	return desc;
>  }
> -EXPORT_SYMBOL_GPL(gpio_request_one);
> -
> +EXPORT_SYMBOL_GPL(gpiod_request_one);
>  
>  /**
>   * gpio_request_one - request a single GPIO with initial configuration
> diff --git a/lib/ucs2_string.c b/lib/ucs2_string.c
> index db3f34f6b7..6f027010d3 100644
> --- a/lib/ucs2_string.c
> +++ b/lib/ucs2_string.c
> @@ -113,7 +113,7 @@ ucs2_strcmp(const ucs2_char_t *a, const ucs2_char_t *b)
>  {
>  	return ucs2_strncmp(a, b, ~0UL);
>  }
> -EXPORT_SYMBOL(ucs2_strncmp);
> +EXPORT_SYMBOL(ucs2_strcmp);
>  
>  unsigned long
>  ucs2_utf8size(const ucs2_char_t *src)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


