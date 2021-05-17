Delivery-date: Mon, 17 May 2021 13:00:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liazQ-0001yI-SN
	for lore@lore.pengutronix.de; Mon, 17 May 2021 13:00:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liazP-0008CY-PD
	for lore@pengutronix.de; Mon, 17 May 2021 13:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WtbNjogEF2d5E5KdIQHxt+tYSGe8kQc+ffIYOV7qHrg=; b=Pd/0guxFsPZdHS3a9bKB8EGJ2
	HYTLO6u5vTPpPYDg3Wv7MGHlXjhUrEbtRFiKICqRhqbQUB942ZN/vZQgDnA9F1cHDBuAdetY/cCln
	LaRo6CUFDIKBG6iqlQ3sBYWpwVVeYG87vowqKI7fhkQ3K8oS/2/CN5QLO2S5Yag9tf3MO7KOhREuX
	pQzk8s1GbIoRwWVC+L6hLoExnWgrfI2ZV2YdLwmsCCYTyQxKDdhFLolEbbetraQsjERz2qvxnuQir
	/zoRHd3M2a0aLPwtyO6VuchoIjjQKL06kEvaTAlmKmDE5R0UOWdZQwr79wq+k9eOACPbgx4YiybiZ
	CRa8dmm4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liay8-00Ef8b-CH; Mon, 17 May 2021 10:59:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liavy-00Ef0R-Ol
 for barebox@desiato.infradead.org; Mon, 17 May 2021 10:58:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=13FEDmNuTHeomXvBOq1LkIXUT98WaUPg9iUADxEAOgM=; b=YQGIxwWQ9aW6BOb64slE5xep3I
 U0qEgQpHQkXJ029meWm9Kp6CzkKIzBQZW+4wjiwMPn/pxsYt1Egcw1DMhkP/8DklK9gvugfFDcH+q
 hhxuBGA4zPljU7e7qPIODDfOR32P5hjtTapxbkX95g+zOsqn3LGcVhfexj0/rHJ1SvI8p92nzkyAW
 JeFq0oMLNh3rL/6MaspkZFKNQF9mpxFbwwIt6qbmcmA66e/+cF7qb99FHyJEeHPdeVJVgVmve9KuM
 UgA/RSvR+O0HP6fCEIiLOCYf45gFer3DjKcKzqFujjrR3CVvtk9I05ru1C2SfhrBawyHZpzU+7X0B
 XshCmW0Q==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liavv-00DhGW-Fo
 for barebox@lists.infradead.org; Mon, 17 May 2021 10:57:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6D3DD1A1DCC
 for <barebox@lists.infradead.org>; Mon, 17 May 2021 10:57:06 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KOSHT6V4;
 Mon, 17 May 2021 10:57:06 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 410021A1DCB;
 Mon, 17 May 2021 10:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0C43627E0779;
 Mon, 17 May 2021 12:57:06 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Bm2EF7MRt2PW; Mon, 17 May 2021 12:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7006127E076E;
 Mon, 17 May 2021 12:57:05 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7006127E076E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1621249025;
 bh=13FEDmNuTHeomXvBOq1LkIXUT98WaUPg9iUADxEAOgM=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=qtqbsjZF50z3z35NPPICVIsuRsHEHCBeppGc8PBcZalFqukVD6i1M0zNWwwulT1tB
 zhNrOC/29KOD0volZQZC2WDbirhXpWl/wU7QmY4+ZaXftyFUq5ZG61TgBXDWdHfG9R
 BaXbhydBBP5bnOPPs+RZ1eWvbqGMaV6b2BybGtSQ=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kMsl63xLT41b; Mon, 17 May 2021 12:57:05 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 4F4CC27E042E;
 Mon, 17 May 2021 12:57:05 +0200 (CEST)
Date: Mon, 17 May 2021 12:56:59 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210517105659.GA23867@tellis.lin.mbt.kalray.eu>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
 <20210305183327.29753-3-jmaselbas@kalray.eu>
 <eca36ac2-d9fb-6b34-bf64-455243398f88@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eca36ac2-d9fb-6b34-bf64-455243398f88@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_035711_720228_38EDBB14 
X-CRM114-Status: GOOD (  28.78  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>, barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, May 17, 2021 at 12:42:21PM +0200, Ahmad Fatoum wrote:
> Hello Jules, Yann,
> 
> On 05.03.21 19:33, Jules Maselbas wrote:
> > From: Yann Sionneau <ysionneau@kalray.eu>
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> 
> [snip]
> 
> > diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
> > new file mode 100644
> > index 000000000..2a4144696
> > --- /dev/null
> > +++ b/arch/kvx/lib/dma-default.c
> > @@ -0,0 +1,94 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
> > +
> > +#include <dma.h>
> > +#include <asm/barrier.h>
> > +#include <asm/io.h>
> > +#include <asm/cache.h>
> > +#include <asm/sfr.h>
> > +#include <asm/sys_arch.h>
> > +
> > +/*
> > + * The implementation of arch should follow the following rules:
> > + *		map		for_cpu		for_device	unmap
> > + * TO_DEV	writeback	none		writeback	none
> > + * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
> > + * BIDIR	writeback	invalidate	writeback	invalidate
> > + *
> > + * (*) - only necessary if the CPU speculatively prefetches.
> > + *
> > + * (see https://lkml.org/lkml/2018/5/18/979)
> > + */
> > +
> > +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
> > +				enum dma_data_direction dir)
> > +{
> > +	/* dcache is Write-Through: no need to flush to force writeback */
> > +	switch (dir) {
> > +	case DMA_FROM_DEVICE:
> > +		invalidate_dcache_range(addr, addr + size);
> > +		break;
> > +	case DMA_TO_DEVICE:
> > +	case DMA_BIDIRECTIONAL:
> > +		/* allow device to read buffer written by CPU */
> > +		wmb();
> > +		break;
> > +	default:
> > +		BUG();
> > +	}
> > +}
> > +
> > +void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
> > +				enum dma_data_direction dir)
> > +{
> > +	/* CPU does not speculatively prefetches */
> > +	switch (dir) {
> > +	case DMA_FROM_DEVICE:
> > +		/* invalidate has been done during map/for_device */
> > +	case DMA_TO_DEVICE:
> > +		break;
> > +	case DMA_BIDIRECTIONAL:
> > +		invalidate_dcache_range(addr, addr + size);
> > +		break;
> > +	default:
> > +		BUG();
> > +	}
> > +}
> 
> Both of these work on CPU pointers.
> 
> > +
> > +#define KVX_DDR_ALIAS_OFFSET \
> > +	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
> > +#define KVX_DDR_ALIAS_WINDOW \
> > +	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
> > +
> > +/* Local smem is aliased between 0 and 16MB */
> > +#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
> > +
> > +dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
> > +			  enum dma_data_direction dir)
> > +{
> > +	uintptr_t addr = (uintptr_t) ptr;
> > +
> > +	dma_sync_single_for_device(addr, size, dir);
> 
> So this is correct.
> 
> > +
> > +	/* Local smem alias should never be used for dma */
> > +	if (addr < KVX_SMEM_LOCAL_ALIAS)
> > +		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
> > +
> > +	if (dev->dma_mask && addr <= dev->dma_mask)
> > +		return addr;
> > +
> > +	if (addr >= KVX_DDR_ALIAS_WINDOW)
> > +		return DMA_ERROR_CODE;
> > +
> > +	addr -= KVX_DDR_ALIAS_OFFSET;
> > +	if (dev->dma_mask && addr > dev->dma_mask)
> > +		return DMA_ERROR_CODE;
> > +
> > +	return addr;
> > +}
> 
> Now you compute a dma_addr_t as CPU pointer - KVX_DDR_ALIAS_OFFSET.
> 
> > +
> > +void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
> > +		      enum dma_data_direction dir)
> > +{
> > +	dma_sync_single_for_cpu(addr, size, dir);
> 
> And then that dma_addr_t is passed here without + KVX_DDR_ALIAS_OFFSET
> to get a CPU pointer out.
> So for DMA_BIDIRECTIONAL you'd invalidate the wrong cache region.
Yes, this is bogus but I believe in our case dma_unmap_single is never
called with DMA_BIDIRECTIONAL.

> 
> I stumbled upon this, because I noticed that that kvx whould've failed to
> build starting with v2021.04.0, because following commits conflict with each other:
> 3f975f810bd3 ("dma: move dma_map/unmap_single from ARM to common code") commited on 2021-03-03
> 4808d6f80073 ("kvx: Implement dma handling primitives") commited on 2021-03-05
> 
> Now, dma_map_single() is defined twice for kvx.
Yes,  I noticed this as well when rebasing on barebox v2021.04.

> As dma_(un?)map_single is always called with a dev argument, couldn't you define the
> DMA offsets in the device tree and use the common drivers/dma/map.c implementation
> for these two functions?
Our custom implementation will be removed in favor of the common
implementation and the uses of dma-range.

I had to add a dma-range to the dwc2 device nodes in our device tree, so
when the driver does dma_map/unmap the common implementation will do the
correct remap to the aliased region (so addresses fits in 32bit).

However I do not know how Linux handle a mix of dma-range and iommu.
Since I didn't had much time to test this we are still using v2021.03. 


Thanks,
Jules


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

