Delivery-date: Thu, 12 Jan 2023 14:27:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFxcT-009p0F-91
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 14:27:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFxcR-0008MN-4V
	for lore@pengutronix.de; Thu, 12 Jan 2023 14:27:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SuK9wqCgW42ZhyzaZpHOqC03RxwAnrwALZnZGM90ySc=; b=baDSwT/6/UED7wskRL0IlKH833
	wIiZmG5Tnn/mtWwzbMqx0VgMtFjaGUXxTE2Lgwl5+Vuec2WRBjqngX6X5+8mPA5/WgWQ62g6p098O
	+yGQSPaCkIxwS4l4JyNjupkdJMl+05T06JlH8q1k4tM8nC9nZSMZGkXQtJv8DPIg4fqpcfgTUxRc/
	rkP8q7Jkaymf+E6gIJY8XpWPNca+NF7Cn9g2EB7dCC6++9d1Os69z0px7JOi92Zl1Y9LZnIaGAwYE
	k5hu2VpP+tZkVTZpD/h2ac5CRomxo1s8b7fzRq6jWouY/e2O/tyuQ0cN4SbsfITdIp9+9mePqsahs
	zQz6ty7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxay-00F9GP-Pa; Thu, 12 Jan 2023 13:26:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxas-00F9EY-Jz
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 13:26:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFxar-0008E3-58; Thu, 12 Jan 2023 14:26:09 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFxaq-0005lP-UR; Thu, 12 Jan 2023 14:26:08 +0100
Date: Thu, 12 Jan 2023 14:26:08 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112132608.GR24755@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
 <20230111174023.1719129-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111174023.1719129-10-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_052610_846576_A2D1AA86 
X-CRM114-Status: GOOD (  38.80  )
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
Subject: Re: [PATCH 09/15] lib: provide stub Linux "generic" allocator API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 06:40:17PM +0100, Ahmad Fatoum wrote:
> We may want to port the whole of the Linux generic allocator
> implementation in future as it would come in handy in drivers that need
> special memory for DMA. For now, support just the use case of the
> incoming Atmel NAND driver, which is mapping the whole of a mmio-sram.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/genalloc.h |  36 ++++++++++++
>  lib/Kconfig              |   5 ++
>  lib/Makefile             |   1 +
>  lib/genalloc.c           | 118 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 160 insertions(+)
>  create mode 100644 include/linux/genalloc.h
>  create mode 100644 lib/genalloc.c
> 
> diff --git a/include/linux/genalloc.h b/include/linux/genalloc.h
> new file mode 100644
> index 000000000000..566e62d1965c
> --- /dev/null
> +++ b/include/linux/genalloc.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Basic general purpose allocator for managing special purpose
> + * memory, for example, memory that is not managed by the regular
> + * kmalloc/kfree interface.  Uses for this includes on-device special
> + * memory, uncached memory etc.
> + */
> +
> +
> +#ifndef __GENALLOC_H__
> +#define __GENALLOC_H__
> +
> +#include <linux/types.h>
> +
> +struct device_node;
> +
> +struct gen_pool;
> +
> +extern phys_addr_t gen_pool_virt_to_phys(struct gen_pool *pool, unsigned long);
> +
> +extern void *gen_pool_dma_alloc(struct gen_pool *pool, size_t size,
> +		dma_addr_t *dma);
> +
> +extern void *gen_pool_dma_zalloc(struct gen_pool *pool, size_t size, dma_addr_t *dma);
> +
> +#ifdef CONFIG_OFDEVICE
> +extern struct gen_pool *of_gen_pool_get(struct device_node *np,
> +	const char *propname, int index);
> +#else
> +static inline struct gen_pool *of_gen_pool_get(struct device_node *np,
> +	const char *propname, int index)
> +{
> +	return NULL;
> +}
> +#endif
> +#endif /* __GENALLOC_H__ */
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 5af7ea33f27b..b8bc9d63d4f0 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -210,4 +210,9 @@ config ARCH_HAS_ZERO_PAGE
>  config HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	bool
>  
> +config GENERIC_ALLOCATOR
> +	bool
> +	help
> +	  Support is curently limited to allocaing a complete mmio-sram at once.
> +
>  endmenu
> diff --git a/lib/Makefile b/lib/Makefile
> index 4717b8aec364..38478625423b 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -75,6 +75,7 @@ obj-$(CONFIG_CRC8)	+= crc8.o
>  obj-$(CONFIG_NLS)	+= nls_base.o
>  obj-$(CONFIG_FSL_QE_FIRMWARE) += fsl-qe-firmware.o
>  obj-$(CONFIG_UBSAN)	+= ubsan.o
> +obj-$(CONFIG_GENERIC_ALLOCATOR) += genalloc.o
>  
>  # GCC library routines
>  obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
> diff --git a/lib/genalloc.c b/lib/genalloc.c
> new file mode 100644
> index 000000000000..906e2dd5f14b
> --- /dev/null
> +++ b/lib/genalloc.c
> @@ -0,0 +1,118 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2005 Jes Sorensen <jes@trained-monkey.org>
> +/*
> + * Basic general purpose allocator for managing special purpose
> + * memory, for example, memory that is not managed by the regular
> + * kmalloc/kfree interface.  Uses for this includes on-device special
> + * memory, uncached memory etc.
> + */
> +
> +#include <io.h>
> +#include <linux/ioport.h>
> +#include <linux/genalloc.h>
> +#include <linux/export.h>
> +#include <of.h>
> +#include <driver.h>
> +#include <linux/string.h>
> +
> +struct gen_pool {
> +	struct resource res;
> +};
> +
> +#define res_to_gen_pool(res) \
> +	container_of(res, struct gen_pool, res)
> +
> +/**
> + * gen_pool_virt_to_phys - return the physical address of memory
> + * @pool: pool to allocate from
> + * @addr: starting address of memory
> + *
> + * Returns the physical address on success, or -1 on error.
> + */
> +phys_addr_t gen_pool_virt_to_phys(struct gen_pool *pool, unsigned long addr)
> +{
> +	return virt_to_phys((void *)addr);
> +}
> +EXPORT_SYMBOL(gen_pool_virt_to_phys);
> +
> +/**
> + * gen_pool_dma_alloc - allocate special memory from the pool for DMA usage
> + * @pool: pool to allocate from
> + * @size: number of bytes to allocate from the pool
> + * @dma: dma-view physical address return value.  Use %NULL if unneeded.
> + *
> + * Allocate the requested number of bytes from the specified pool.
> + * Uses the pool allocation function (with first-fit algorithm by default).
> + * Can not be used in NMI handler on architectures without
> + * NMI-safe cmpxchg implementation.
> + *
> + * Return: virtual address of the allocated memory, or %NULL on failure
> + */

Maybe add a comment here that we currently only support allocating the
whole area?

Can be done as followup later.

Sascha

> +void *gen_pool_dma_alloc(struct gen_pool *pool, size_t size, dma_addr_t *dma)
> +{
> +	unsigned long vaddr;
> +
> +	if (!pool || resource_size(&pool->res) != size)
> +		return NULL;
> +
> +	vaddr = pool->res.start;
> +
> +	if (dma)
> +		*dma = gen_pool_virt_to_phys(pool, vaddr);
> +
> +	return (void *)vaddr;
> +}
> +EXPORT_SYMBOL(gen_pool_dma_alloc);
> +
> +/**
> + * gen_pool_dma_zalloc - allocate special zeroed memory from the pool for
> + * DMA usage
> + * @pool: pool to allocate from
> + * @size: number of bytes to allocate from the pool
> + * @dma: dma-view physical address return value.  Use %NULL if unneeded.
> + *
> + * Return: virtual address of the allocated zeroed memory, or %NULL on failure
> + */
> +void *gen_pool_dma_zalloc(struct gen_pool *pool, size_t size, dma_addr_t *dma)
> +{
> +	void *vaddr = gen_pool_dma_alloc(pool, size, dma);
> +
> +	if (vaddr)
> +		memset(vaddr, 0, size);
> +
> +	return vaddr;
> +}
> +EXPORT_SYMBOL(gen_pool_dma_zalloc);
> +
> +#ifdef CONFIG_OFDEVICE
> +/**
> + * of_gen_pool_get - find a pool by phandle property
> + * @np: device node
> + * @propname: property name containing phandle(s)
> + * @index: index into the phandle array
> + *
> + * Returns the pool that contains the chunk starting at the physical
> + * address of the device tree node pointed at by the phandle property,
> + * or NULL if not found.
> + */
> +struct gen_pool *of_gen_pool_get(struct device_node *np,
> +	const char *propname, int index)
> +{
> +	struct device *dev;
> +	struct device_node *np_pool;
> +
> +	np_pool = of_parse_phandle(np, propname, index);
> +	if (!np_pool)
> +		return NULL;
> +
> +	if (!of_device_is_compatible(np_pool, "mmio-sram"))
> +		return NULL;
> +
> +	dev = of_find_device_by_node(np_pool);
> +	if (!dev)
> +		return NULL;
> +
> +	return container_of(&dev->resource[0], struct gen_pool, res);
> +}
> +EXPORT_SYMBOL_GPL(of_gen_pool_get);
> +#endif /* CONFIG_OF */
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


