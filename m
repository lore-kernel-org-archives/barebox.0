Delivery-date: Wed, 25 Sep 2024 18:11:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUbt-002f0r-18
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 18:11:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUbt-0008EC-R6
	for lore@pengutronix.de; Wed, 25 Sep 2024 18:11:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AKLSXyPNCiNHkuK2U3uQODXeDxci93HxrTKk7tK91Gg=; b=pxL/Cip/iwf0wyI63m5OqVW48L
	T8T+7brxxD+or/dxvOAGD1MTPVnLD+Xj2KWWt5x3VXOcusTTZ1mB4C51oOLxJh7IZXRy91p7v+nI3
	ezs/6UseG/70ydbKd2Zk9VL6kTJsR5ptk+eel8/LjjdkQn4tQLz7PCcC2yfX1RMedMw4AnfCjyXiW
	+nYZy0Oh1N3ocA/cL5Zq5xwgeiiGQxzCekWaQAEfzkUUCkNKJ3lFblWeAxkWqa/NU8ucl5OSARMyJ
	6raDRvqm1TLK1u6tfL9RJS8Jpj/vaEnNp/P+y2JgT5W4Q5DIkydLAepQbI3eBe+zWsfAQKxVvc1IP
	u1xM0ODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stUbW-000000060Xu-0wbr;
	Wed, 25 Sep 2024 16:11:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stUbS-000000060Wg-2McX
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 16:11:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stUbR-000884-BD; Wed, 25 Sep 2024 18:10:57 +0200
Message-ID: <99c810ae-a3da-4f53-8f5f-d9e4b53cfc47@pengutronix.de>
Date: Wed, 25 Sep 2024 18:10:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-9-0d92103658a0@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-9-0d92103658a0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_091058_637903_0EF5A9C7 
X-CRM114-Status: GOOD (  17.55  )
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
Subject: Re: [PATCH 09/10] lib/string.c: export non optimized memmove as
 __default_memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 15:55, Sascha Hauer wrote:
> When an architecture defines __HAVE_ARCH_MEMMOVE then the generic
> non optimized memmove is not compiled in. It is needed on ARM64
> as a fallback in certain cases though, so make it available as
> __default_memmove just like done with __default_memcpy already.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  lib/string.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/string.c b/lib/string.c
> index 374f326143..98dd3cffdd 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -666,7 +666,6 @@ void *mempcpy(void *dest, const void *src, size_t count)
>  }
>  EXPORT_SYMBOL(mempcpy);
>  
> -#ifndef __HAVE_ARCH_MEMMOVE
>  /**
>   * memmove - Copy one area of memory to another
>   * @dest: Where to copy to
> @@ -675,7 +674,7 @@ EXPORT_SYMBOL(mempcpy);
>   *
>   * Unlike memcpy(), memmove() copes with overlapping areas.
>   */
> -void * memmove(void * dest,const void *src,size_t count)
> +void *__default_memmove(void * dest,const void *src,size_t count)
>  {
>  	char *tmp, *s;
>  
> @@ -694,6 +693,13 @@ void * memmove(void * dest,const void *src,size_t count)
>  
>  	return dest;
>  }
> +EXPORT_SYMBOL(__default_memmove);
> +
> +#ifndef __HAVE_ARCH_MEMMOVE
> +void *memmove(void * dest, const void *src, size_t count)
> +	__alias(__default_memmove);
> +void *__memmove(void * dest, const void *src, size_t count)
> +	__alias(__default_memmove);
>  #endif
>  EXPORT_SYMBOL(memmove);
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


