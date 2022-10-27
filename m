Delivery-date: Thu, 27 Oct 2022 09:04:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onwwH-003nPK-Aj
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:04:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onwwF-0005W9-9y
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:04:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vFbk1ItkSFGakSou+8AtDVZVw3YWFAjL/bu5slWK8+w=; b=pJliqAgqTCIaOqYkqQfFFv9/tl
	5Zt3OiNGqudd0HQ2K0ter7HF5lTINC3aGrsmuhRpBMQuz7MXEVDSmnrJTQvGMr0guGWYQKEUNHqPj
	tH688OgC5N1TMo5tloO5zj9x8naBjQzFusOb1rr4PfZjT6iMOAuX6TmHUXoqWm0HOw9CzIGPFoCiy
	1a1JRY29oMlxnkj/kzrnhNVPkp0nvV/4vfcL6CeTW9GpcGvwjfY/G9fAj40ICf1uF27EXGyeIIqFh
	hJZ+IG9bYgx7iOV+ZwucKozJw8MpDgvj91csn2NZCAFi3jeZ51V8eNdP+3rgM4+0cF4a7jujuv3t4
	+Z+z39vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onwuT-00C4tv-8S; Thu, 27 Oct 2022 07:02:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onwov-00C2QG-MQ
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 06:56:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onwou-0004Ag-3Y; Thu, 27 Oct 2022 08:56:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onwot-0000wn-Rn; Thu, 27 Oct 2022 08:56:51 +0200
Date: Thu, 27 Oct 2022 08:56:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221027065651.GQ6702@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221026064205.2360041-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_235653_788284_3AF72FE4 
X-CRM114-Status: GOOD (  20.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] string: reduce strjoin runtime, drop trailing
 separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 26, 2022 at 08:42:02AM +0200, Ahmad Fatoum wrote:
> The implementation of strjoin is a bit suboptimal. The destination
> string is traversed from the beginning due to strcat and we have a
> left-over separator at the end, while it should only be in-between.
> 
> Fix this.

Rather than fixing a just introduced function I would expect a patch
introducing strjoin() and then another one converting the time command
over to use it.

> +void *mempcpy(void *dest, const void *src, size_t count)
> +{
> +	return memcpy(dest, src, count) + count;
> +}
> +EXPORT_SYMBOL(mempcpy);
>  
>  #ifndef __HAVE_ARCH_MEMMOVE
>  /**
> @@ -943,7 +948,7 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>  {
>  	size_t separatorlen;
>  	int len = 1; /* '\0' */
> -	char *buf;
> +	char *buf, *p;
>  	int i;
>  
>  	separatorlen = strlen(separator);
> @@ -951,12 +956,14 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>  	for (i = 0; i < arrlen; i++)
>  		len += strlen(arr[i]) + separatorlen;
>  
> -	buf = xzalloc(len);
> +	p = buf = xmalloc(len);
>  
>  	for (i = 0; i < arrlen; i++) {
> -		strcat(buf, arr[i]);
> -		strcat(buf, separator);
> +		p = stpcpy(p, arr[i]);
> +		p = mempcpy(p, separator, separatorlen);
>  	}
>  
> +	p[-separatorlen] = '\0';

That's a bit hard to read. How about:

	for (i = 0; i < arrlen; i++) {
		p = stpcpy(p, arr[i]);
		if (i < arrlen - 1)
			p = stpcpy(p, separator);
	}

That would also allow you to optimize the allocated buffer size above.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


