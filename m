Delivery-date: Mon, 17 May 2021 12:44:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liajT-0001rx-8W
	for lore@lore.pengutronix.de; Mon, 17 May 2021 12:44:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liajS-00060a-BP
	for lore@pengutronix.de; Mon, 17 May 2021 12:44:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0iuUEqCFh/QkSql0J5xmzVQNgv/niX/YJXl/xhJkeIk=; b=BX8d5fe9JijbR7/IGvSWYdX0H
	X//SaSpiHRangY1yegcELmq3eBci7LBbZewGdXARzZDAt35W7n+VhPhxDhTYx13u48hCH8qPpx+qa
	ZgbICLVbW/EKy+3lj+wB8lvp+wkvQUzYNQ9RgUmbv0ftbu85c4E9/qrG2GJWOcNymTT/MoZdj0YdY
	Kw/dUA5r9htPr9I3VHa9J9UtAh3PwhP2kXrMmyL/6oELV/VzTSecQzGIAK96CzVRpz8dprpp+WhAo
	ndcmdR1kglGBMHAo78aMq8rJ+lbWuehHYcFYLJ00GZxRlAdGzh2W8LJWKNoiuV2gRZs11CEPTaV3P
	pkFepZ8jg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liahn-00EcmJ-GO; Mon, 17 May 2021 10:42:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liahi-00Ecl1-Co
 for barebox@desiato.infradead.org; Mon, 17 May 2021 10:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=p8TA2mAqPlnhZEvJUSjMeQJFnB5ZSzvvLX3fmOFwSS0=; b=P5b/Q4KnAMMtcjJzJ8yV5pY5/2
 yJkGUgBJbNrUeWGdkno3DFRr8ymtBCvLt0mAHvxRA/0CbBeiVQw/ta+/nOqqYnNnVyUoab/R8u5kZ
 LjHplYvf7ZrZyAab03srFq+wvnj3tak9hxZrVJNBmEkPebhC9LavNFsQ19bOQ7vKE2boWTRiwRmpZ
 y6+OTC029x9IG4kyyLsRtB1jZa11h+N2n554txt/EcnSoY3N/bngACsjTI2c5Cg4JuR3tu2QnqxFK
 tG1QqfwqOt9oEcC4uudTcYso+oHsDIsVMkQYJOsYO1bXeMGYVYYERdQBEM7G2/9ktArpyragvX4Rb
 /2qPlDcw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liahf-00Dgdn-9u
 for barebox@lists.infradead.org; Mon, 17 May 2021 10:42:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liahb-0005tf-3W; Mon, 17 May 2021 12:42:23 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
 <20210305183327.29753-3-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <eca36ac2-d9fb-6b34-bf64-455243398f88@pengutronix.de>
Date: Mon, 17 May 2021 12:42:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210305183327.29753-3-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_034227_374443_28884112 
X-CRM114-Status: GOOD (  25.26  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules, Yann,

On 05.03.21 19:33, Jules Maselbas wrote:
> From: Yann Sionneau <ysionneau@kalray.eu>
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>

[snip]

> diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
> new file mode 100644
> index 000000000..2a4144696
> --- /dev/null
> +++ b/arch/kvx/lib/dma-default.c
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
> +
> +#include <dma.h>
> +#include <asm/barrier.h>
> +#include <asm/io.h>
> +#include <asm/cache.h>
> +#include <asm/sfr.h>
> +#include <asm/sys_arch.h>
> +
> +/*
> + * The implementation of arch should follow the following rules:
> + *		map		for_cpu		for_device	unmap
> + * TO_DEV	writeback	none		writeback	none
> + * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
> + * BIDIR	writeback	invalidate	writeback	invalidate
> + *
> + * (*) - only necessary if the CPU speculatively prefetches.
> + *
> + * (see https://lkml.org/lkml/2018/5/18/979)
> + */
> +
> +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	/* dcache is Write-Through: no need to flush to force writeback */
> +	switch (dir) {
> +	case DMA_FROM_DEVICE:
> +		invalidate_dcache_range(addr, addr + size);
> +		break;
> +	case DMA_TO_DEVICE:
> +	case DMA_BIDIRECTIONAL:
> +		/* allow device to read buffer written by CPU */
> +		wmb();
> +		break;
> +	default:
> +		BUG();
> +	}
> +}
> +
> +void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	/* CPU does not speculatively prefetches */
> +	switch (dir) {
> +	case DMA_FROM_DEVICE:
> +		/* invalidate has been done during map/for_device */
> +	case DMA_TO_DEVICE:
> +		break;
> +	case DMA_BIDIRECTIONAL:
> +		invalidate_dcache_range(addr, addr + size);
> +		break;
> +	default:
> +		BUG();
> +	}
> +}

Both of these work on CPU pointers.

> +
> +#define KVX_DDR_ALIAS_OFFSET \
> +	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
> +#define KVX_DDR_ALIAS_WINDOW \
> +	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
> +
> +/* Local smem is aliased between 0 and 16MB */
> +#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
> +
> +dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
> +			  enum dma_data_direction dir)
> +{
> +	uintptr_t addr = (uintptr_t) ptr;
> +
> +	dma_sync_single_for_device(addr, size, dir);

So this is correct.

> +
> +	/* Local smem alias should never be used for dma */
> +	if (addr < KVX_SMEM_LOCAL_ALIAS)
> +		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
> +
> +	if (dev->dma_mask && addr <= dev->dma_mask)
> +		return addr;
> +
> +	if (addr >= KVX_DDR_ALIAS_WINDOW)
> +		return DMA_ERROR_CODE;
> +
> +	addr -= KVX_DDR_ALIAS_OFFSET;
> +	if (dev->dma_mask && addr > dev->dma_mask)
> +		return DMA_ERROR_CODE;
> +
> +	return addr;
> +}

Now you compute a dma_addr_t as CPU pointer - KVX_DDR_ALIAS_OFFSET.

> +
> +void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
> +		      enum dma_data_direction dir)
> +{
> +	dma_sync_single_for_cpu(addr, size, dir);

And then that dma_addr_t is passed here without + KVX_DDR_ALIAS_OFFSET
to get a CPU pointer out.
So for DMA_BIDIRECTIONAL you'd invalidate the wrong cache region.


I stumbled upon this, because I noticed that that kvx whould've failed to
build starting with v2021.04.0, because following commits conflict with each other:

3f975f810bd3 ("dma: move dma_map/unmap_single from ARM to common code") commited on 2021-03-03
4808d6f80073 ("kvx: Implement dma handling primitives") commited on 2021-03-05

Now, dma_map_single() is defined twice for kvx.

As dma_(un?)map_single is always called with a dev argument, couldn't you define the
DMA offsets in the device tree and use the common drivers/dma/map.c implementation
for these two functions?

Cheers,
Ahmad

> +}
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

