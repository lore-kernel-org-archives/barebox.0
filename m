Delivery-date: Thu, 16 Mar 2023 09:43:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjCQ-002Xt8-Su
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 09:43:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjCQ-00038x-PN
	for lore@pengutronix.de; Thu, 16 Mar 2023 09:43:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SI/gY5/Wq2/iFpdyweuGfvetO8Rd+8w55q6cD3gl3PI=; b=D4ul8rOUJngvJPN2ZCEL9m0DeD
	iS2/YdUcGWQ1JMZNGm4qlz7USi06Yb2Y87rcNxtAw7+94fw5xf6pL79Df2iF6xNxMrkogCDjCDkkd
	Eyqz5yI2WTxacpXSTWCoEjXgeHOK1r4/R35kH6A9Ox6vy8Vr0t0p6S3pPnphn03plCATe1fSkrDCO
	498BzlYsNBXmlh1RonlbtDmaTCivCclAuEjKdoFfs+JZ71p5YqdQwK1s7WY4oC4OYkARFhu+wSe5m
	10ENQVyvr9VQ7CFXGaexQ1s7wYxJoukPqttNvYdswrHob4i9FUEF6+S4KsfaCPSfBWvJLZUgNP1Ae
	3K8CywWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjAz-00FhRf-0m;
	Thu, 16 Mar 2023 08:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjAv-00FhP9-19
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 08:41:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjAq-0002KP-AL; Thu, 16 Mar 2023 09:41:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjAq-0004O4-3D; Thu, 16 Mar 2023 09:41:24 +0100
Date: Thu, 16 Mar 2023 09:41:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230316084124.GO7446@pengutronix.de>
References: <20230316073650.4170874-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316073650.4170874-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_014129_395988_32A1236A 
X-CRM114-Status: GOOD (  27.81  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: string: remove duplicated function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 16, 2023 at 10:36:50AM +0300, Denis Orlov wrote:
> We have two functions that are doing the same thing: 'strncasecmp' and
> 'strnicmp'. The only difference between them is that the latter is
> correctly handling the len argument of 0. So rename it into the former
> one ('strncasecmp', as it is the POSIX name for this function), deleting
> the other implementation. As no one is actually using 'strnicmp', no
> other code requires any fixes.
> 
> This change is effectively forwarded from the Linux commits
> 'lib/string.c: remove duplicated function'
> (hash cd514e727b18ff4d189b8e268db13729a4175091) and
> 'lib/string.c: remove strnicmp()'
> (hash af3cd13501eb04ca61d017ff4406f1cbffafdc04).
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  include/linux/string.h |  3 ---
>  lib/string.c           | 48 +++++++++++++++---------------------------
>  2 files changed, 17 insertions(+), 34 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 0c79d3e5cf..cd81ab1396 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -58,9 +58,6 @@ extern int strcmp(const char *,const char *);
>  #ifndef __HAVE_ARCH_STRNCMP
>  extern int strncmp(const char *,const char *,__kernel_size_t);
>  #endif
> -#ifndef __HAVE_ARCH_STRNICMP
> -extern int strnicmp(const char *, const char *, __kernel_size_t);
> -#endif
>  #ifndef __HAVE_ARCH_STRCASECMP
>  extern int strcasecmp(const char *s1, const char *s2);
>  #endif
> diff --git a/lib/string.c b/lib/string.c
> index 005f4532bb..8ea68044cc 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -24,14 +24,28 @@
>  #include <linux/ctype.h>
>  #include <malloc.h>
>  
> -#ifndef __HAVE_ARCH_STRNICMP
> +#ifndef __HAVE_ARCH_STRCASECMP
> +int strcasecmp(const char *s1, const char *s2)
> +{
> +	int c1, c2;
> +
> +	do {
> +		c1 = tolower(*s1++);
> +		c2 = tolower(*s2++);
> +	} while (c1 == c2 && c1 != 0);
> +	return c1 - c2;
> +}
> +EXPORT_SYMBOL(strcasecmp);
> +#endif
> +
> +#ifndef __HAVE_ARCH_STRNCASECMP
>  /**
> - * strnicmp - Case insensitive, length-limited string comparison
> + * strncasecmp - Case insensitive, length-limited string comparison
>   * @s1: One string
>   * @s2: The other string
>   * @len: the maximum number of characters to compare
>   */
> -int strnicmp(const char *s1, const char *s2, size_t len)
> +int strncasecmp(const char *s1, const char *s2, size_t len)
>  {
>  	/* Yes, Virginia, it had better be unsigned */
>  	unsigned char c1, c2;
> @@ -53,34 +67,6 @@ int strnicmp(const char *s1, const char *s2, size_t len)
>  	} while (--len);
>  	return (int)c1 - (int)c2;
>  }
> -EXPORT_SYMBOL(strnicmp);
> -#endif
> -
> -#ifndef __HAVE_ARCH_STRCASECMP
> -int strcasecmp(const char *s1, const char *s2)
> -{
> -	int c1, c2;
> -
> -	do {
> -		c1 = tolower(*s1++);
> -		c2 = tolower(*s2++);
> -	} while (c1 == c2 && c1 != 0);
> -	return c1 - c2;
> -}
> -EXPORT_SYMBOL(strcasecmp);
> -#endif
> -
> -#ifndef __HAVE_ARCH_STRNCASECMP
> -int strncasecmp(const char *s1, const char *s2, size_t n)
> -{
> -	int c1, c2;
> -
> -	do {
> -		c1 = tolower(*s1++);
> -		c2 = tolower(*s2++);
> -	} while ((--n > 0) && c1 == c2 && c1 != 0);
> -	return c1 - c2;
> -}
>  EXPORT_SYMBOL(strncasecmp);
>  #endif
>  
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


