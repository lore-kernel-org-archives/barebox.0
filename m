Delivery-date: Wed, 16 Oct 2024 11:47:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10ca-0050w1-04
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:47:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10cZ-0003HS-DQ
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:47:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q1+ZxdzkcwWrf6E3Z/lxz9gYZCmZZoy0sqmVk0OIsD0=; b=vF+eTe2a6+FaFANFwte5eIAoJH
	jtrN7O6yS5i99hY9utikeAZJ4WXTqavClzd3PFmt+HqYJcglFHZ0iS+4YcD4HtyEx/CwUiYMnjvRs
	+Hxkt80MtGA3+MzRco1yIBq/HOQbe8GSMyq4uyViUt2AKltgFrVqU2k5ReWWLVoY2WVCEAXevhsLe
	K/PaQWNOHl0wzLOo3HHxJVjD9qh0+juHORNKrtRbKw3TSinoE45OI1Ais+tB/0a5WnubXIYMD0nzt
	NZsgssfaOdAL5hkj5JORrxT2qNgbmm4sDS+2/8EZBEBAMJS5iKNgVzS38Ag5hW0BtCiJGoFHJwJe+
	UN/eygjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10c6-0000000BIF7-3SbS;
	Wed, 16 Oct 2024 09:46:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10WI-0000000BGlq-3MHC
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:40:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t10WH-0002Of-J4
	for barebox@lists.infradead.org; Wed, 16 Oct 2024 11:40:41 +0200
Message-ID: <2bdd5b97-e69a-4ee5-805f-cf4f54a5f4e7@pengutronix.de>
Date: Wed, 16 Oct 2024 11:40:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
 <20241016090150.3963002-12-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241016090150.3963002-12-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_024042_887228_AA48C739 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/13] stdio: stub out basprintf and friends when built
 for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 16.10.24 11:01, Ahmad Fatoum wrote:
> To optimize out calls to undefined functions in PBL at compile-time
> instead of link time, let's define stubs for the functions that
> are referenced in obj-pbl-y files, but inside function sections
> that are ultimately unreferenced.

This one patch could use  some more love, so please drop it.
The other 12 (+ fixup) pass CI ok.

Thanks,
Ahmad

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/stdio.h | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/include/stdio.h b/include/stdio.h
> index 1ed7e1d3e38b..64deec64e66c 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -17,12 +17,32 @@ int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__,
>  int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
>  int scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
>  int vsprintf(char *buf, const char *fmt, va_list args);
> +int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
> +int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
> +
> +#ifndef __PBL__
>  char *basprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
>  int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
>  char *bvasprintf(const char *fmt, va_list ap);
>  int vasprintf(char **strp, const char *fmt, va_list ap);
> -int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
> -int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
> +#else
> +static inline char *basprintf(const char *fmt, ...)
> +{
> +	return NULL;
> +}
> +static inline int asprintf(char **strp, const char *fmt, ...)
> +{
> +	return -ENOMEM;
> +}
> +static inline char *bvasprintf(const char *fmt, va_list ap)
> +{
> +	return NULL;
> +}
> +static inline int vasprintf(char **strp, const char *fmt, va_list ap)
> +{
> +	return -ENOMEM;
> +}
> +#endif
>  
>  #ifdef CONFIG_ARCH_HAS_CTRLC
>  int arch_ctrlc(void);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


