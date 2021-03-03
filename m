Delivery-date: Wed, 03 Mar 2021 23:44:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHaDr-0000Gm-Qw
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 23:44:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHaDq-000576-Em
	for lore@pengutronix.de; Wed, 03 Mar 2021 23:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JavGkiSeSyRkNwTABAhNEoXIzEDUiFUPn/N2X8lQNOM=; b=eAsfqIWaNFLZiT3hJM1PBVpUt
	xD96KWBDmJyAwni3KQ4lurrox/oPhADvzum+60g86Fw9cewHl2dKkbkg+YiyTzu+PC8O8JVO5W5yX
	HXqU0QE7khhdfTzU4Ekf20QeDAHZEbNzSZ4vqLuJu516uvsrsMZRLAsbV64EbI/tGMNtYRrfoEMeU
	oPKHRA8o3EZlvuofsAxmYzOOuI8kwLX0p8yikMuZR7EfWrU2UIBUsYp0FrUEcNjLOaPHw3thwf0hS
	SBeUnNbRTKXt0+NQBaNuA/1Jq1AGIzSscayH5XWfmTCr1oLwI0BqsDFRM35C/SQpPkps16pAxfWdD
	09lhVKaTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHa8x-006mLW-Mj; Wed, 03 Mar 2021 22:39:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTBB-005Krb-EB
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=SFgFGxkJ9mHx0vsvfI7GU9QZtVdhlVmLQZ8cxvi6Hf4=; b=HllEDtRFDnfeoTdPBNUoYJOtmR
 qsvpUFHODNxUZF2AxQq2WUTU8bRKkbzEMORVfaYYY7/A8eCxBd2WoFpYbAonVttr9mkVVxLeAKZgo
 AnLNybjzQljQD3CEsFoumogm7hNOJ4sBa9vIC6FaWd+lYn954y7tpv34vEeKpLJ/0lhFXlEXfk8E1
 is2DDMV1LHdR/3xaknTu32+pj+yhSIRXj5fgJn6qpT0lvwtZXWKZF9zoGOjpqZa1N3oUWCGwYh1OC
 F971Ze0ELbA3Z4X6A6gbm1BpB+uGuILKcl8ShDJno7bcAwfgaOZOZG5hrpnirLAeNyaHcE0EFh4bu
 T7wqAC5w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHNay-001yEK-9I
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 09:15:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lHNam-0003Jb-NG; Wed, 03 Mar 2021 10:14:52 +0100
Message-ID: <927983935004c68be871fe2182b0e33fd0dff381.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org, 
 Yann Sionneau <ysionneau@kalray.eu>
Date: Wed, 03 Mar 2021 10:14:47 +0100
In-Reply-To: <20210302105827.GD9273@tellis.lin.mbt.kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
 <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
 <595cae1711b8bdc79876371194cadd772f8646e6.camel@pengutronix.de>
 <20210302105827.GD9273@tellis.lin.mbt.kalray.eu>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_091506_872705_0F568700 
X-CRM114-Status: GOOD (  25.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

Am Dienstag, dem 02.03.2021 um 11:58 +0100 schrieb Jules Maselbas:
> Hi Lucas and Ahmad,
> 
> On Tue, Mar 02, 2021 at 11:14:09AM +0100, Lucas Stach wrote:
> > Am Dienstag, dem 02.03.2021 um 09:37 +0100 schrieb Ahmad Fatoum:
> > > Hello Jules, Yann,
> > > 
> > > On 01.03.21 16:58, Jules Maselbas wrote:
> > > > From: Yann Sionneau <ysionneau@kalray.eu>
> > > Some comments inline. I am not a cache cohereny expert, so take
> > > it with a grain of salt.
> > > 
> > > > +static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
> > > > +{
> > > > +	void *ret = xmemalign(PAGE_SIZE, size);
> > > > +
> > > > +	if (dma_handle)
> > > > +		*dma_handle = (dma_addr_t)(uintptr_t)ret;
> > > > +
> > > > +	return ret;
> > > > +}
> > > 
> > > This would imply that the CPU barebox is booting is coherent with all
> > > 
> > > devices that barebox needs to access. Is that the case?
> > > 
> > > (See below)
> > > 
> This is bogus, memory is not coherent with all devices, this should be
> handled by the mmu, which is currently not supported in our barebox port.
> Using this can lead to coherency issues. We can either drop this
> function, so that is leads to an error at link time, or add a call to
> BUG for a runtime error.
> 
> Right now we aren't using any driver that require dma_alloc_coherent,
> but we use drivers that requires dma_alloc and dma_map_single instead.

I would vote for a BUILD_BUG_ON_MSG in this function, so you get a
compile time error and you can state what needs to be done in order to
get rid of the failure.

> > > > +/*
> > > > + * The implementation of arch should follow the following rules:
> > > > + *		map		for_cpu		for_device	unmap
> > > > + * TO_DEV	writeback	none		writeback	none
> > > > + * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
> > > > + * BIDIR	writeback	invalidate	writeback	invalidate
> > > > + *
> > > > + * (*) - only necessary if the CPU speculatively prefetches.
> > > > + *
> > > > + * (see https://lkml.org/lkml/2018/5/18/979)
> > > > + */
> > > > +
> > > > +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
> > > > +				enum dma_data_direction dir)
> > > > +{
> > > > +	switch (dir) {
> > > > +	case DMA_FROM_DEVICE:
> > > > +		kvx_dcache_invalidate_mem_area(addr, size);
> > 
> > Why do you need to explicitly invalidate, but not flush? Even if the
> > CPU speculatively prefetches, the coherency protocol should make sure
> > to invalidate the speculatively loaded lines, right?
> Since we don't have a coherent memory, here we need to invalidate L1
> dcache to let the CPU see deivce's writes in memory.
> Also every write goes through the cache, flush is not required.

Ah, if all your caches are write-through that makes sense. Can you add
a comment somewhere stating that this implementation assumes WT caches
on KVX? This way we can avoid the confusion Ahamd and myself fell into
when glancing over the code.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

