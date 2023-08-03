Delivery-date: Thu, 03 Aug 2023 10:57:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU8q-004p4u-Jn
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 10:57:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU8o-0000Qn-R0
	for lore@pengutronix.de; Thu, 03 Aug 2023 10:57:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fsH4mHEWx36WRo/yDGO49mNDzQvJHeOMFsnoRuUxA1U=; b=XPbweDC0fzLlhnqgyFplsgN1GQ
	3m0WwreQzbj+lfxO1WSS0aV3hoW3oNVADDixqk6Z6buPjXloQ1mR5t0atvHOtsUcwnRg4yzG5Wk6f
	ABvTAnNWNPvmcMGT457L1bOXUWlno91ef1wQxjysjdUQoHyNiSB5E/b3QPFRkFVuRQlQZT4EwRIGj
	VQBhPl17pHWbIdORI7HJMNAz5pIDfd1PZzEPH0aVmED+3I6RIZ0Kc5q6KnzQMgPcG66G4Imu9e6yb
	lGmOxTtSMi+xIypcH+Su20UMk27Dg6y6Wz2uW2m7x9JO3vNrXaxlA5XHpW/qnTqmwSoS+LrgavNoQ
	vrw8ORww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU7q-0075Q5-2j;
	Thu, 03 Aug 2023 08:56:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU7n-0075PU-03
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 08:56:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qRU7k-0000Gp-3h; Thu, 03 Aug 2023 10:56:00 +0200
Message-ID: <03573857-babb-adbe-4d8a-9b8a7e9fd506@pengutronix.de>
Date: Thu, 3 Aug 2023 10:55:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
References: <20230803085134.3912884-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230803085134.3912884-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_015603_085736_D00A9701 
X-CRM114-Status: GOOD (  27.07  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: never fixup internal live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.23 10:51, Sascha Hauer wrote:
> Calling of_fix_tree() on the internal live tree has undesired side
> effects, so refrain from doing so.
> 
> One of the side effects is that some parts of barebox store pointers
> to properties in the live tree which might become invalid when during
> of_fixup these properties are deleted or updated.
> 
> The other is that it's unexpected that the live tree is modified
> after a dry run boot with the live tree.
> 
> This changes of_get_fixed_tree() to always call of_fix_tree() on
> a copy of the device tree and not on the device tree itself. To
> emphasize this make the device tree argument to of_get_fixed_tree()
> const.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/oftree.c | 19 ++++++++++---------
>  include/of.h    |  2 +-
>  2 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 3e85070d11..51eebd36bd 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -416,26 +416,27 @@ void of_fix_tree(struct device_node *node)
>   * It increases the size of the tree and applies the registered
>   * fixups.
>   */
> -struct fdt_header *of_get_fixed_tree(struct device_node *node)
> +struct fdt_header *of_get_fixed_tree(const struct device_node *node)
>  {
>  	struct fdt_header *fdt = NULL;
> -	struct device_node *freenp = NULL;
> +	struct device_node *np;
>  
>  	if (!node) {
>  		node = of_get_root_node();
>  		if (!node)
>  			return NULL;
> -
> -		freenp = node = of_dup(node);
> -		if (!node)
> -			return NULL;
>  	}
>  
> -	of_fix_tree(node);
> +	np = of_dup(node);
> +
> +	if (!np)
> +		return NULL;
> +
> +	of_fix_tree(np);
>  
> -	fdt = of_flatten_dtb(node);
> +	fdt = of_flatten_dtb(np);
>  
> -	of_delete_node(freenp);
> +	of_delete_node(np);
>  
>  	return fdt;
>  }
> diff --git a/include/of.h b/include/of.h
> index 92a15f5c4a..0deb327971 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -75,7 +75,7 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
>  
>  struct fdt_header *fdt_get_tree(void);
>  
> -struct fdt_header *of_get_fixed_tree(struct device_node *node);
> +struct fdt_header *of_get_fixed_tree(const struct device_node *node);
>  
>  /* Helper to read a big number; size is in cells (not bytes) */
>  static inline u64 of_read_number(const __be32 *cell, int size)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



