Delivery-date: Wed, 02 Nov 2022 09:05:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8kc-00C1Mj-QA
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8kb-0000hF-Es
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:05:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qgt4Qyr7NpQ5a+JYdk8qRBGGrddrMIkjnaWhQL1kHOM=; b=pVhYVYBDYyDEIz7+eTvfNqW909
	32vLlagoH1o9LfdlVlrxjAga/ZZYLRiSqqOEWzIB/gI2B2MJ4rjkskGoTZnGLOsT6qKswqmV3QT5x
	m9BsbXmAgwC7KD6PQh/SFTBgsE+Xh7cYtSzqr/cJf0X/GXvvEM+Tozq62KbFQhBYW2LiuoZNiFXlJ
	4/tAUsgtBfgJcvJH1tti2cFU4nvV/z9lOQTi/I5xMgWjIPimlVG4zdif/7e12eLdJr/0YpnPWABC/
	rDqJ6sMmy891iSkYkClB5UgD9w28qLdaaTUAOGUt3eJKeVR75nPvhy65JKAYT9abO5H76drozMX6e
	Ob9dj5GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8jM-008jvj-3k; Wed, 02 Nov 2022 08:04:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8jH-008juT-38
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:04:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8jF-0000Ye-72; Wed, 02 Nov 2022 09:04:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8jE-0007Ic-W0; Wed, 02 Nov 2022 09:04:04 +0100
Date: Wed, 2 Nov 2022 09:04:04 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102080404.GD3143@pengutronix.de>
References: <20221101064310.3227410-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101064310.3227410-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_010407_154482_7D80992F 
X-CRM114-Status: GOOD (  22.12  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: string: implement mempcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 07:43:10AM +0100, Ahmad Fatoum wrote:
> mempcpy(3) is a GNU libc extension that like stpcpy returns not the
> start of the destination buffer, but the first byte after its end.
> 
> Provide it as it is useful when concatenating buffers or known-size
> strings.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - split off function from series using it. Other series needs
>     commits reordered.

Applied, thanks

Sascha

> ---
>  include/string.h | 1 +
>  lib/string.c     | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/include/string.h b/include/string.h
> index 2cc727fd1d7a..596440ca8164 100644
> --- a/include/string.h
> +++ b/include/string.h
> @@ -4,6 +4,7 @@
>  
>  #include <linux/string.h>
>  
> +void *mempcpy(void *dest, const void *src, size_t count);
>  int strtobool(const char *str, int *val);
>  char *strsep_unescaped(char **, const char *);
>  char *stpcpy(char *dest, const char *src);
> diff --git a/lib/string.c b/lib/string.c
> index fd4d7da10a7c..edd36da4d4f2 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -603,6 +603,11 @@ void *__memcpy(void * dest, const void *src, size_t count)
>  	__alias(__default_memcpy);
>  #endif
>  
> +void *mempcpy(void *dest, const void *src, size_t count)
> +{
> +	return memcpy(dest, src, count) + count;
> +}
> +EXPORT_SYMBOL(mempcpy);
>  
>  #ifndef __HAVE_ARCH_MEMMOVE
>  /**
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


