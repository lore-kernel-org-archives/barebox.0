Delivery-date: Tue, 17 Jun 2025 15:25:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRWJH-008Hdr-1y
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 15:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRWJF-0001V0-RF
	for lore@pengutronix.de; Tue, 17 Jun 2025 15:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p0PbH7ldhbAXFfsrz7+mugNHXng/eyVPYIjLcl7xTa8=; b=Y+ZYYGDNSOxlTMZeD2YQQFxdU5
	LbF1h2hg1QYN0ER3JGTgCx92zDzM7ftV0bIeVyUoATP6Hr6PYiFdpKSv5bO6GsKCBBLbUPiV53DDl
	/iHbSDIy0/bnoyaGBn3IH+8GSSf7P3eKek2ZRzPbI6AjSYPqdmD3yFDihL5OYWQnvA53Nfqa4JB54
	DLvwvueTn+HgdlQWoDOfk+sawubYP5wrfU/e4gtng3mpmDC2jDrbeaIIHbZETXow3QS3cmYJlYN99
	66d5vfqDP3a9uWYiPwskQcvPAJt8uG6ZZSWpJGyIE8OOEH+RfTK95C2kUXSQ170qQHojYkUXRo6VI
	F8C7P0+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWIp-00000007LB7-1jMN;
	Tue, 17 Jun 2025 13:24:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRW16-00000007Hha-1h6r
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 13:06:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRW15-0008BN-08; Tue, 17 Jun 2025 15:06:19 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRW14-003ybs-2b;
	Tue, 17 Jun 2025 15:06:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRW14-001SJL-2F;
	Tue, 17 Jun 2025 15:06:18 +0200
Date: Tue, 17 Jun 2025 15:06:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aFFoSvuMhKpYjpgS@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-5-60f05c6e7b4b@pengutronix.de>
 <8fe1fedf-f6e3-4c11-9154-3a355488a352@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8fe1fedf-f6e3-4c11-9154-3a355488a352@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_060620_443505_7ACEFC39 
X-CRM114-Status: GOOD (  29.34  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/7] ARM: MMU: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 13, 2025 at 12:12:01PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/13/25 09:58, Sascha Hauer wrote:
> > +	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
> 
> I can add a follow up patch turning type into a string.
> 
> > +	unsigned long text_start = (unsigned long)&_stext;
> > +	unsigned long text_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
> 
> text_size is an unfortunate name as text_start + text_size != _etext -
> 1, which is surprising.
> 
> I would prefer:
> 
> text_start = code_start = &_stext;
> text_size = &_etext - text_start;
> code_size = &__start_ro_data - code_start;

Ok.

> 
> > +	unsigned long rodata_start = (unsigned long)&__start_rodata;
> > +	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
> >  
> >  	if (!request_barebox_region("ttb", (unsigned long)ttb,
> >  				    ARM_EARLY_PAGETABLE_SIZE))
> > @@ -550,6 +574,8 @@ void __mmu_init(bool mmu_on)
> >  
> >  	pr_debug("ttb: 0x%p\n", ttb);
> >  
> > +	vectors_init();
> 
> Any particular reason to move this around?

Yes. vectors_init() modifies the exception table which on ARMv7 happens
to live in the text segment which is readonly after the loop.

First I thought this is a hack and the exception vectors should be moved
out of the text segment, but maybe it's not a hack. In the end this way
the exception vectors are protected against modification.

> 
> > +
> >  	/*
> >  	 * Early mmu init will have mapped everything but the initial memory area
> >  	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> > @@ -568,10 +594,22 @@ void __mmu_init(bool mmu_on)
> >  			pos = rsv->end + 1;
> >  		}
> >  
> > -		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> > +		if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS)) {
> > +			if (region_overlap_size(pos, bank->start + bank->size - pos,
> > +			    text_start, text_size)) {
> 
> Wouldn't matter, but we should check overlap against the full range we
> are going to remap specially. With my suggested text_size/code_size
> changes above that would be correct(er).

Yes, fixed that.

> 
> > +				remap_range((void *)pos, text_start - pos, MAP_CACHED);
> 
> This is ok.
> 
> > +				remap_range((void *)text_start, text_size, MAP_CODE);
> > +				remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
> 
> These I would move out of the loop after the iteration.
> 
> > +				remap_range((void *)(rodata_start + rodata_size),
> > +					    bank->start + bank->size - (rodata_start + rodata_size),
> > +					    MAP_CACHED);
> > +			} else {
> > +				remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> > +			}
> > +		} else {
> > +			remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> > +		}
> 
> If we combine the two if conditional into a single &&ed one, we can
> replace the three remap_range calls by a single one:
> 
> 		pos = text_start + text_end;
> 		if (pos >= bank->start + bank->size)
> 			continue;
> 		/* We carved out a gap for the barebox parts, so fall
>                  * through to remapping the rest
>                  */
> 	}
> 
> 	remap_range((void *)pos, bank->start + bank->size - pos,
> 		    MAP_CACHED);
> }
> 
> Then we can do the remapping of the sections here. I think that would
> aid readability.

Ok, will rearrange.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


