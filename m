Delivery-date: Tue, 02 Mar 2021 09:39:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0Ye-0005nC-Jl
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 09:39:08 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0Yd-0000Fi-Ff
	for lore@pengutronix.de; Tue, 02 Mar 2021 09:39:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JnDTxvPtzXJs37UUd7esaYaTavpzH/nfbjzcezB5DA4=; b=MReRij7n+Yyc83Z9eHexwTQwv
	1Ydn2Xo78KmRVxVEHw9hNxds+DHU+sQ+Y4kjZeojZP1IS4Alcs+jLjdVoc1zGcad0IV+ThLFxV3RJ
	PDzSiQ0ME0K1HIfFJ2S+PnK/Sozh5TzGc+wuuzkpzhOTArllC/Mv/5auo/st/Q2uSOLwy/wUog1DE
	dl371rC4ja82+UHUcsGsENE7xZubXpQT8Oo9BD6pQQE5vp+X1qqqDBoGUlfvifyD5bzz8r7b2U1KA
	lj9WuEzASF1I1kWrk0B/qP8ocU12nwbfwXndEvH63Fj4FHXBymViEy5gGjRSmq4IJJK3ZcMxNRMbT
	S3G0YAW+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH0X7-0003ES-5X; Tue, 02 Mar 2021 08:37:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH0X3-0003Dv-VL
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 08:37:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lH0X1-0008T4-84; Tue, 02 Mar 2021 09:37:27 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
Date: Tue, 2 Mar 2021 09:37:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210301155851.12463-3-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_033730_049752_4C1B492E 
X-CRM114-Status: GOOD (  24.38  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules, Yann,

On 01.03.21 16:58, Jules Maselbas wrote:
> From: Yann Sionneau <ysionneau@kalray.eu>

Some comments inline. I am not a cache cohereny expert, so take
it with a grain of salt.

> 
> Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---

> --- /dev/null
> +++ b/arch/kvx/include/asm/dma.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc. */
> +
> +#ifndef __ASM_DMA_H
> +#define __ASM_DMA_H
> +
> +#include <common.h>
> +
> +#define KVX_DDR_32BIT_RAM_WINDOW_BA	(0x80000000ULL)
> +#define KVX_DDR_64BIT_RAM_WINDOW_BA	(0x100000000ULL)
> +#define MAX_32BIT_ADDR			(0xffffffffULL)
> +
> +#define dma_alloc dma_alloc
> +static inline void *dma_alloc(size_t size)
> +{
> +	return xmemalign(64, ALIGN(size, 64));
> +}
> +
> +static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
> +{
> +	void *ret = xmemalign(PAGE_SIZE, size);
> +
> +	if (dma_handle)
> +		*dma_handle = (dma_addr_t)(uintptr_t)ret;
> +
> +	return ret;
> +}

This would imply that the CPU barebox is booting is coherent with all

devices that barebox needs to access. Is that the case?

(See below)

> +
> +static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
> +				     size_t size)
> +{
> +	free(mem);
> +}
> +
> +#endif /* __ASM_DMA_H */
> diff --git a/arch/kvx/include/asm/sys_arch.h b/arch/kvx/include/asm/sys_arch.h
> index 9df32c4e7..ce07a5598 100644
> --- a/arch/kvx/include/asm/sys_arch.h
> +++ b/arch/kvx/include/asm/sys_arch.h
> @@ -11,6 +11,9 @@
>  #define EXCEPTION_STRIDE	0x40
>  #define EXCEPTION_ALIGNMENT	0x100
>  
> +#define kvx_cluster_id() ((int) \
> +	((kvx_sfr_get(PCR) & KVX_SFR_PCR_CID_MASK) \
> +					>> KVX_SFR_PCR_CID_SHIFT))
>  #define KVX_SFR_START(__sfr_reg) \
>  	(KVX_SFR_## __sfr_reg ## _SHIFT)
>  
> diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
> index d271ebccf..c730e1c23 100644
> --- a/arch/kvx/lib/Makefile
> +++ b/arch/kvx/lib/Makefile
> @@ -3,4 +3,4 @@
>  # Copyright (C) 2019 Kalray Inc.
>  #
>  
> -obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o
> +obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o dma-default.o
> diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
> new file mode 100644
> index 000000000..755a8c66f
> --- /dev/null
> +++ b/arch/kvx/lib/dma-default.c
> @@ -0,0 +1,91 @@
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
> +	switch (dir) {
> +	case DMA_FROM_DEVICE:
> +		kvx_dcache_invalidate_mem_area(addr, size);
> +		break;
> +	case DMA_TO_DEVICE:
> +	case DMA_BIDIRECTIONAL:
> +		/* allow device to read buffer written by CPU */
> +		wmb();

If the interconnect was indeed coherent, like dma_alloc_coherent
above hints, you wouldn't need any barriers here..?

> +		break;
> +	default:
> +		BUG();
> +	}
> +}
> +
> +void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	switch (dir) {
> +	case DMA_FROM_DEVICE:
> +	case DMA_TO_DEVICE:
> +		break;
> +	case DMA_BIDIRECTIONAL:
> +		kvx_dcache_invalidate_mem_area(addr, size);
> +		break;
> +	default:
> +		BUG();
> +	}
> +}
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
> +
> +void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
> +		      enum dma_data_direction dir)
> +{
> +	dma_sync_single_for_cpu(addr, size, dir);
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

