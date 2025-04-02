Delivery-date: Wed, 02 Apr 2025 11:16:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzuCc-007LfS-34
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 11:16:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzuCc-0008PP-7i
	for lore@pengutronix.de; Wed, 02 Apr 2025 11:16:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nd3l3RmGq6bOI5RFz388YtTJliC/x/LEFDH3cm0Zb+w=; b=rTqESg5zxGQKXERjOc/GxTehJj
	pIYX8L+/k6LhPwYcllW4DdPO981FROdcX2b6IyK89cJTHFDSV1+zFYKtKbs40ng+X8rHQCaPX3AKF
	SIjDnt5n1p6UKBxuGmcc7uieWiWKQd2KRo0xcPSVdIH25KbJvkEB0nZ3mNkr1H+s/JGYIyFKEtHVP
	uSiFGfTTjYd9orobNKfkWdcsvAEtah4TLtV4pa5glLLADfHA9obOqBLLr+NoVnVpl/duNJTnmKOmD
	/6HFt6jtEpqhqmR6ZaQjC9TiZrQl3D2FKMLycSkwEGWW060jHz35j9RWjVkMUNRhuKplfCJzk5tJd
	DjxYbc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzuBt-00000005eSf-3405;
	Wed, 02 Apr 2025 09:15:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzu4V-00000005dFO-0Z0F
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 09:07:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tzu4S-00072Y-Gh; Wed, 02 Apr 2025 11:07:40 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzu4S-002uJo-0v;
	Wed, 02 Apr 2025 11:07:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzu4S-00CvyE-0Z;
	Wed, 02 Apr 2025 11:07:40 +0200
Date: Wed, 2 Apr 2025 11:07:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>,
	David Dgien <dgienda125@gmail.com>, Tyler Reece <mtreece@acm.org>
Message-ID: <Z-z-XAl1EkRbCmdl@pengutronix.de>
References: <20250328-tlsf-addpool-v1-1-25fd0b060356@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250328-tlsf-addpool-v1-1-25fd0b060356@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_020743_171863_726B4AF1 
X-CRM114-Status: GOOD (  34.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On Fri, Mar 28, 2025 at 11:13:40PM -0400, David Dgien via B4 Relay wrote:
> From: David Dgien <dgienda125@gmail.com>
> 
> When configured to use the TLSF allocator, the malloc_stats function
> only walks the initial memory pool, as that is the only pool it is aware
> of, and TLSF doesn't link pools together in a way that the walker can
> follow.
> 
> Add wrapper functions around tlsf_add_pool and tlsf_remove_pool to add
> additional tracking of added pools, so that they can be walked by the
> malloc_stats function and meminfo can report accurate heap utilization.
> 
> Signed-off-by: David Dgien <dgienda125@gmail.com>
> Reviewed-by: Tyler Reece <mtreece@acm.org>
> ---
> For this change I put the wrapper function prototypes in malloc.h, gated
> by CONFIG_MALLOC_TLSF. I was split between there and memory.h, but I'm
> not entirely convinced malloc.h was the right decision. I also didn't
> provide stubs for when CONFIG_MALLOC_TLSF isn't enabled, as I did not
> see any upstream code that utilizes tlsf_add_pool. If the project has
> different preferences I can make those changes.

I think it's fine the way you did it for now. We have plans to remove
dlmalloc support in the near future which gives us an opportunity to
rework this and make malloc_add_pool() generally available.

Currently barebox only uses the initial memory. With dlmalloc removed we
could make use of the remaining memory banks using malloc_add_pool().

> ---
>  common/tlsf_malloc.c | 64 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/malloc.h     |  5 ++++
>  2 files changed, 69 insertions(+)
> 
> diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
> index 6a90ee47199fa9e8223f843cc95f52eebfec2aee..0e756a13d5a2665eccf8931b19dfa4e56cad15eb 100644
> --- a/common/tlsf_malloc.c
> +++ b/common/tlsf_malloc.c
> @@ -12,8 +12,18 @@
>  #include <module.h>
>  #include <tlsf.h>
>  
> +#include <linux/kasan.h>
> +#include <linux/list.h>
> +
>  extern tlsf_t tlsf_mem_pool;
>  
> +struct pool_entry {
> +	pool_t pool;
> +	struct list_head list;
> +};
> +
> +static LIST_HEAD(mem_pool_list);
> +
>  void *malloc(size_t bytes)
>  {
>  	void *mem;
> @@ -75,6 +85,7 @@ static void malloc_walker(void* ptr, size_t size, int used, void *user)
>  
>  void malloc_stats(void)
>  {
> +	struct pool_entry *cur_pool;
>  	struct malloc_stats s;
>  
>  	s.used = 0;
> @@ -82,5 +93,58 @@ void malloc_stats(void)
>  
>  	tlsf_walk_pool(tlsf_get_pool(tlsf_mem_pool), malloc_walker, &s);
>  
> +	list_for_each_entry(cur_pool, &mem_pool_list, list)
> +		tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);

Can you create a pool_entry for the initial malloc area as well so that
the list contains all pools?

> +
>  	printf("used: %zu\nfree: %zu\n", s.used, s.free);
>  }
> +
> +void *malloc_add_pool(void *mem, size_t bytes)
> +{
> +	pool_t new_pool;
> +	struct pool_entry *new_pool_entry;
> +
> +	if (!mem)
> +		return NULL;
> +
> +	new_pool_entry = malloc(sizeof(struct pool_entry));
> +	if (!new_pool_entry)
> +		return NULL;
> +
> +	new_pool = tlsf_add_pool(tlsf_mem_pool, mem, bytes);
> +	if (!new_pool) {
> +		free(new_pool_entry);
> +		return NULL;
> +	}
> +
> +	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
> +
> +	new_pool_entry->pool = new_pool;
> +	list_add(&new_pool_entry->list, &mem_pool_list);
> +
> +	return (void *)new_pool;
> +}
> +
> +int malloc_remove_pool(void *pool)
> +{
> +	struct pool_entry *cur_pool;
> +	struct malloc_stats s;
> +
> +	s.used = 0;
> +	s.free = 0;
> +
> +	list_for_each_entry(cur_pool, &mem_pool_list, list) {
> +		if (cur_pool->pool == (pool_t)pool) {
> +			tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);
> +			if (s.used)
> +				return -EBUSY;

Do we need this function at all? We have no way to move allocations away
from the pool being removed, so there's no way to make this function
work reliably. What's the point in having it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


