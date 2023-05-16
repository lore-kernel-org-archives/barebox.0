Delivery-date: Tue, 16 May 2023 11:11:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pyqi2-002lDG-OF
	for lore@lore.pengutronix.de; Tue, 16 May 2023 11:11:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pyqi0-0005NR-Eo
	for lore@pengutronix.de; Tue, 16 May 2023 11:11:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rHidILVxHmQud6T4VkFgGHB6pmbaaIOnsEHKZ6fqmeI=; b=HDP6JX1iZZtfG6rqPee77GvJAe
	nxmlognmZX00tX0VvRL5UA6aPRt2cvobqvrEkAYAxS1iFoFhQmMY7pyIQt1GcjBBB7fwAssvUoztK
	DcbTGtgD7e9pDXIntke5oxlG4sJfpK+dy57f96G7Zl7EV5CyRNHl2gblvpFK8oYZXU2u6FiVLqk4g
	LJShurzfDG41o+SQbrXncpB63K7actXK4YKJYM9C38JROeGwN6ND1W0NUd2AVPNuQK69/QGf+ZSBV
	1Bp32/3k+MRLcpLun9N31jzLMMhp1nU9MEPzbjFmZcVCVM3sjvf2GKZ1NN5vjYBVKZfhfunkxp1bq
	0Dncdt4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyqgp-004zdC-3D;
	Tue, 16 May 2023 09:09:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyqgm-004zcP-1X
	for barebox@lists.infradead.org;
	Tue, 16 May 2023 09:09:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pyqgk-0004qu-Ja; Tue, 16 May 2023 11:09:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pyqgj-0001Nn-Q9; Tue, 16 May 2023 11:09:45 +0200
Date: Tue, 16 May 2023 11:09:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230516090945.GR29365@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-13-s.hauer@pengutronix.de>
 <2480434f-c479-97e5-10b0-a6261a146d7f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2480434f-c479-97e5-10b0-a6261a146d7f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_020948_514332_A173E9C4 
X-CRM114-Status: GOOD (  29.73  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/27] ARM: mmu: move dma_sync_single_for_device to extra
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 12, 2023 at 08:30:01PM +0200, Ahmad Fatoum wrote:
> On 12.05.23 13:09, Sascha Hauer wrote:
> > The next patch merges the mmu.c files with their corresponding
> > mmu-early.c files. Before doing that move functions which can't
> > be compiled for PBL out to extra files.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/Makefile |  1 +
> >  arch/arm/cpu/dma_32.c | 20 ++++++++++++++++++++
> >  arch/arm/cpu/dma_64.c | 16 ++++++++++++++++
> >  arch/arm/cpu/mmu_32.c | 18 ------------------
> >  arch/arm/cpu/mmu_64.c | 13 -------------
> >  5 files changed, 37 insertions(+), 31 deletions(-)
> >  create mode 100644 arch/arm/cpu/dma_32.c
> >  create mode 100644 arch/arm/cpu/dma_64.c
> > 
> > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > index fef2026da5..cd5f36eb49 100644
> > --- a/arch/arm/cpu/Makefile
> > +++ b/arch/arm/cpu/Makefile
> > @@ -4,6 +4,7 @@ obj-y += cpu.o
> >  
> >  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
> >  obj-$(CONFIG_MMU) += mmu_$(S64_32).o mmu-common.o
> > +obj-$(CONFIG_MMU) += dma_$(S64_32).o
> >  obj-pbl-y += lowlevel_$(S64_32).o
> >  obj-pbl-$(CONFIG_MMU) += mmu-early_$(S64_32).o
> >  obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
> > diff --git a/arch/arm/cpu/dma_32.c b/arch/arm/cpu/dma_32.c
> > new file mode 100644
> > index 0000000000..a66aa26b9b
> > --- /dev/null
> > +++ b/arch/arm/cpu/dma_32.c
> > @@ -0,0 +1,20 @@
> > +#include <dma.h>
> > +#include <asm/mmu.h>
> > +
> > +void dma_sync_single_for_device(dma_addr_t address, size_t size,
> > +				enum dma_data_direction dir)
> > +{
> > +	/*
> > +	 * FIXME: This function needs a device argument to support non 1:1 mappings
> > +	 */
> > +
> > +	if (dir == DMA_FROM_DEVICE) {
> > +		__dma_inv_range(address, address + size);
> > +		if (outer_cache.inv_range)
> > +			outer_cache.inv_range(address, address + size);
> 
> I know this is unrelated to your series, but this is wrong. The outermost
> cache must be be invalidated before L1. Otherwise we could have this
> unlucky constellation:
> 
>   - CPU is invalidating L1
>   - HW prefetcher wants to load something into L1
>   - Stale data in L2 is loaded into L1
>   - Only now CPU invalidates L2

L1 is invalidated after the DMA transfer in dma_sync_single_for_cpu(),
so stale data in L1 shouldn't be a problem.

However, the prefetcher could cause stale entries in L2 during the DMA
transfer, so we have to invalidate that as well after the transfer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


