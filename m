Delivery-date: Wed, 03 Mar 2021 18:20:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVBD-0008QQ-37
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 18:20:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVBB-0008E8-Of
	for lore@pengutronix.de; Wed, 03 Mar 2021 18:20:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fXExhKbZjy/6Aq6eIms2Oheu9XZlzyUj4YswynE2cO0=; b=dlYRR8nV19sgiTcl+DrtvfFba
	3vyiiPITr69iAZVA4YF7w5rfiHa1Ytl5dsdIuF4kYNk4dpt+dOgG2ZwFqeiDAj4G+AVGdqqaUzwi8
	EPDF0xmM7FzWxePZQ9k7YA3Qy0alv3c6zDukm+e9T8F4JUExSoOwetZcNPo2zaFPj9x7SVMOzQaO4
	QBNNZsAKPgJSJQyPHtRLyz8oL09s3ximxjWvI/rRZ6uEicPgnQ1hn38d2BKzIOT9IYS3nEql8Tcck
	alSbhYLI15SCttUiiQT/YxWEqyD1DluyJQOC0bchUaKJq2zdqNdK5bT/ZczHFo5hHzPzuLKpQ5Goz
	FzlMumF6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHV95-005lk5-V7; Wed, 03 Mar 2021 17:18:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHStk-005F5c-9X
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3YCphWZnywTnrluQjrY4JxepX6vb6C1HaJ2+pUbUYjU=; b=YAuLnXFjfK53mlOh2ZXMFwzFJM
 P1+J6mX+1RSKTNfIf2WPq0pTJ87BIJtmrK7VyNh32OgRJ7Y9tGmbHIt2K/70VkoJsY0cDynDIsI6r
 bV8CCX6WVz7dSV0gEhXcQNVMBIGZ297rCpnOCd1pvL+dEseYyUIQrQLi2T0rEZvB0wsdi0Rk+VWnY
 42hBsK6Q2IE+G1dSSZiY9rPwiY5bGd4h+VDZYntsgja0Av+vyp0B7z7iWCfMMYkyzVh3zO1mVcYsL
 z8IED8wyJgLm2cjeyZZSs9U5mB0qI2bkKSYtoqexs2r/ueH9lkjqN0243ORjUXJuO3d2ODa9T2QZu
 niDqoQCQ==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH2ja-00GyVH-Vf
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 10:58:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6101F1A6EE1
 for <barebox@lists.infradead.org>; Tue,  2 Mar 2021 10:58:29 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLRWE871;
 Tue, 02 Mar 2021 10:58:29 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 2442F1A6EDE;
 Tue,  2 Mar 2021 10:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E1C8A27E0842;
 Tue,  2 Mar 2021 11:58:28 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4AbicW5IkzLt; Tue,  2 Mar 2021 11:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3D55127E0840;
 Tue,  2 Mar 2021 11:58:28 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3D55127E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614682708;
 bh=3YCphWZnywTnrluQjrY4JxepX6vb6C1HaJ2+pUbUYjU=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=gPCbGuhQxgrn4sNlYd+OF47Cjt+LufmePDCvMBxtGS63TS85sWDClpR3mnyjF9hkX
 PiX0uFumYX+TJiZAWJ4NYxuLQ87KoxtoLDxh7Or6zfY6rbp2YQkbQXV0keGXkHdHCQ
 F6kK+HsUHzmZoQ3GbECfrdzLOIEKAcJipN6HMuf0=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ynvszx8mAOaU; Tue,  2 Mar 2021 11:58:28 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 27C8E27E066B;
 Tue,  2 Mar 2021 11:58:28 +0100 (CET)
Date: Tue, 2 Mar 2021 11:58:27 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20210302105827.GD9273@tellis.lin.mbt.kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
 <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
 <595cae1711b8bdc79876371194cadd772f8646e6.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <595cae1711b8bdc79876371194cadd772f8646e6.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_105836_172669_3C0FB7CB 
X-CRM114-Status: GOOD (  21.50  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lucas and Ahmad,

On Tue, Mar 02, 2021 at 11:14:09AM +0100, Lucas Stach wrote:
> Am Dienstag, dem 02.03.2021 um 09:37 +0100 schrieb Ahmad Fatoum:
> > Hello Jules, Yann,
> > 
> > On 01.03.21 16:58, Jules Maselbas wrote:
> > > From: Yann Sionneau <ysionneau@kalray.eu>
> > Some comments inline. I am not a cache cohereny expert, so take
> > it with a grain of salt.
> > 
> > > +static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
> > > +{
> > > +	void *ret = xmemalign(PAGE_SIZE, size);
> > > +
> > > +	if (dma_handle)
> > > +		*dma_handle = (dma_addr_t)(uintptr_t)ret;
> > > +
> > > +	return ret;
> > > +}
> > 
> > This would imply that the CPU barebox is booting is coherent with all
> > 
> > devices that barebox needs to access. Is that the case?
> > 
> > (See below)
> > 
This is bogus, memory is not coherent with all devices, this should be
handled by the mmu, which is currently not supported in our barebox port.
Using this can lead to coherency issues. We can either drop this
function, so that is leads to an error at link time, or add a call to
BUG for a runtime error.

Right now we aren't using any driver that require dma_alloc_coherent,
but we use drivers that requires dma_alloc and dma_map_single instead.

> > > +/*
> > > + * The implementation of arch should follow the following rules:
> > > + *		map		for_cpu		for_device	unmap
> > > + * TO_DEV	writeback	none		writeback	none
> > > + * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
> > > + * BIDIR	writeback	invalidate	writeback	invalidate
> > > + *
> > > + * (*) - only necessary if the CPU speculatively prefetches.
> > > + *
> > > + * (see https://lkml.org/lkml/2018/5/18/979)
> > > + */
> > > +
> > > +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
> > > +				enum dma_data_direction dir)
> > > +{
> > > +	switch (dir) {
> > > +	case DMA_FROM_DEVICE:
> > > +		kvx_dcache_invalidate_mem_area(addr, size);
> 
> Why do you need to explicitly invalidate, but not flush? Even if the
> CPU speculatively prefetches, the coherency protocol should make sure
> to invalidate the speculatively loaded lines, right?
Since we don't have a coherent memory, here we need to invalidate L1
dcache to let the CPU see deivce's writes in memory.
Also every write goes through the cache, flush is not required.

> 
> > > +		break;
> > > +	case DMA_TO_DEVICE:
> > > +	case DMA_BIDIRECTIONAL:
> > > +		/* allow device to read buffer written by CPU */
> > > +		wmb();
> > 
> > If the interconnect was indeed coherent, like dma_alloc_coherent
> > above hints, you wouldn't need any barriers here..?
> 
> Coherency does not imply strict ordering, so the barriers are in fact
> correct, as the CPU write buffers and/or the interconnect can still
> change the ordering of the writes as seen by a remote observer.


Best,
Jules 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

