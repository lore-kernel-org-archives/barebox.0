Delivery-date: Tue, 16 Aug 2022 10:48:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsFO-000Up0-T8
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 10:48:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsFM-0004mN-TS
	for lore@pengutronix.de; Tue, 16 Aug 2022 10:48:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=saY31UxhbNkJYmkf31QvneAWQlr8QEa0IQvZ0u8HhrA=; b=0TAsmjjDcwe/hRjGTmDfVwxiol
	Q1JAKuPXc4kPzViCZluJmAeFYa37EQjxyqCs7PEU7EAZZXzpJnjbYrpPZUMGyBR2PWGHc98o08vLO
	4TtrqShj2lV6Ia4jK6CAwkT7U8qPXGGftI/QlMOxB1HqNkjW8M6ZF6iAhgp4wix82/TJVruqHOY8y
	lwPuMevdsWsKnx2yWn9QHsF2SjaIflaDmRk4rcZTeMMwfgxuPQO7ZZ+hbaO9eq67bTbXoXa62A/Bp
	cEeGTb6p4KbotL+F1okG7YcKB5xsIRGWN7erlyHOrRqWvG7kzf6yob+RK0H27gVxEMvynAovwmwMl
	cDTSzDpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsDw-00GxtM-82; Tue, 16 Aug 2022 08:46:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsDk-00Gxmf-6a
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 08:46:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsDi-0004bf-FI; Tue, 16 Aug 2022 10:46:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsDi-0007RO-5w; Tue, 16 Aug 2022 10:46:42 +0200
Date: Tue, 16 Aug 2022 10:46:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20220816084642.GL17485@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
 <20220815153209.2422662-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815153209.2422662-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_014650_813596_C98EF148 
X-CRM114-Status: GOOD (  24.88  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/10] memory: define reserve_sdram_region helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 05:32:02PM +0200, Ahmad Fatoum wrote:
> We use request_sdram_regions both for code that barebox wants to use for
> itself (e.g. barebox stack or initrd) and to reserve regions for secure
> firmware that barebox shouldn't overwrite. We need to differentiate
> between them, so we can apply difference caching flags depending on

s/difference/different/

Sascha

> region, so add a new reserve_sdram_region helper that may be used and
> also add an for_each_reserved_region iterator for use in the MMU code
> that applied the different caching flags later on.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/memory.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/memory.h b/include/memory.h
> index 31da5d74d568..ffd66db02ba0 100644
> --- a/include/memory.h
> +++ b/include/memory.h
> @@ -4,6 +4,7 @@
>  
>  #include <linux/types.h>
>  #include <linux/list.h>
> +#include <linux/ioport.h>
>  
>  void mem_malloc_init(void *start, void *end);
>  ulong mem_malloc_start(void);
> @@ -22,6 +23,9 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
>  				    resource_size_t size);
>  
>  #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
> +#define for_each_reserved_region(mem, rsv) \
> +	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
> +	if (((rsv)->flags & IORESOURCE_BUSY))
>  
>  struct resource *__request_sdram_region(const char *name, unsigned flags,
>  					resource_size_t start, resource_size_t size);
> @@ -34,6 +38,14 @@ static inline struct resource *request_sdram_region(const char *name,
>  	return __request_sdram_region(name, 0, start, size);
>  }
>  
> +/* use for secure firmware to inhibit speculation */
> +static inline struct resource *reserve_sdram_region(const char *name,
> +						    resource_size_t start,
> +						    resource_size_t size)
> +{
> +	return __request_sdram_region(name, IORESOURCE_BUSY, start, size);
> +}
> +
>  int release_sdram_region(struct resource *res);
>  
>  void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
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


