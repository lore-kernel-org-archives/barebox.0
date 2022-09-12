Delivery-date: Mon, 12 Sep 2022 18:38:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXmS5-002YTF-Ed
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 18:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXmS4-0007DW-6Y
	for lore@pengutronix.de; Mon, 12 Sep 2022 18:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdKHO6E0uo0c80CRxMsDq93mFpSTiU5B1b2WP2RaMAc=; b=vxwzUYBSrzs6vlUzCKok1J+vrN
	5a5HB22Cctc2Llaz2m/z7WS/6W4J0140C1eH5ZYz6idRUjaeouawtCfgjONudx6dfjSvvX8/6szH6
	WHr+9woIXWBW/d6Xd1UIUCDXk/VjyBk1wKyPinNxFrWVpOiAohyyE6TT+y4kuWiEQxHE1vS5mtSFP
	z3d172WNz6ZugOoqcOP1Df4BB5Tg+UxOW954ypLb1NIl6Gsp2nwLx5409Qn8zbtxAok0YelvsjkeA
	caCLkrYF6hfLoD/bcFvP2Bam58a+Sd+JwNu2ckUHVKchqvlzPQV58AHOJ7Yj+a5jRvCoi2sRDYXzc
	4jreZq+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXmQW-00Bh9K-DF; Mon, 12 Sep 2022 16:36:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXmQP-00Bh6K-J2
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 16:36:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXmQL-00079p-FI; Mon, 12 Sep 2022 18:36:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXmQL-0004Ue-6Q; Mon, 12 Sep 2022 18:36:41 +0200
Date: Mon, 12 Sep 2022 18:36:41 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20220912163641.GE6477@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
 <20220817114244.1810531-9-a.fatoum@pengutronix.de>
 <20220912120130.GD12909@pengutronix.de>
 <7ef687f0-903c-e194-d3dc-a4c83e9a6efe@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ef687f0-903c-e194-d3dc-a4c83e9a6efe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_093646_066062_8F225B2B 
X-CRM114-Status: GOOD (  40.11  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 08/10] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 12, 2022 at 05:15:45PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 12.09.22 14:01, Sascha Hauer wrote:
> > This patch breaks NAND support on my Phytec i.MX6 board. There are some
> > problems with this patch, so I ended up reverting it for now.
> 
> I wonder why. I see no memory reserves in imx6q-phytec-phycore-som-nand.dts
> and the files it includes.
> 
> > 
> > On Wed, Aug 17, 2022 at 01:42:42PM +0200, Ahmad Fatoum wrote:
> >> @@ -468,11 +469,28 @@ void __mmu_init(bool mmu_on)
> >>  	vectors_init();
> >>  
> >>  	for_each_memory_bank(bank) {
> >> +		struct resource *rsv;
> >> +
> >>  		create_sections(ttb, bank->start, bank->start + bank->size - 1,
> >>  				PMD_SECT_DEF_CACHED);
> >> -		__mmu_cache_flush();
> >> +
> >> +		for_each_reserved_region(bank, rsv) {
> >> +			create_sections(ttb, resource_first_page(rsv),
> >> +					resource_count_pages(rsv),
> >> +					attrs_uncached_mem());
> >> +		}
> > 
> > This operates on 1MiB sections, so everything requiring a finer
> > granularity will fail here. Not sure if we currently need that, but not
> > even issuing a warning is not good.
> 
> At worst it'd needlessly mark some memory uncached/XN. If users are
> affected, they will notice and we can revisit this. I could add a debug
> print here.
> 
> I need to rework this though, because I see now create_sections differs
> between ARM64 and ARM32. On ARM64, it accepts the last address as argument,
> while on ARM64, it's the size.. resource_count_pages() is not a nice
> name either, because it returns bytes (aligned up to PAGE_SIZE).
> 
> > 
> >>  	}
> >>  
> >> +	/*
> >> +	 * We could set_ttbr(ttb) here instead and save on the copy, but
> >> +	 * for now we play it safe, so we don't mess with the older ARMs.
> >> +	 */
> >> +	if (oldttb) {
> >> +		memcpy(oldttb, ttb, ARM_TTB_SIZE);
> >> +		free(ttb);
> >> +	}
> > 
> > in the early MMU case the MMU still uses 'oldttb' as ttb whereas 'ttb'
> > now points to invalid memory. Still functions like arm_create_pte()
> > still operate on 'ttb'. It looks like a ttb = oldttb is missing here.
> 
> Why would ttb point at invalid memory? It's allocated unconditionally
> with xmemalign and freed here.

It becomes clearer when you look at the scope of the variable.

> 
> > Also I wonder when we have to map the reserved regions as execute never,
> > then the early MMU setup seems broken as well, as that creates a flat
> > mapping without honoring the reserved regions. Shouldn't that be fixed?
> 
> Yes, see excerpt from cover letter:
> 
> "Note that this doesn't yet solve all problems. For example, PPA secure
>  monitor installation on Layerscape may happen with CONFIG_MMU_EARLY=y,
>  in which case barebox in EL2 may speculate into the secure memory
>  before any device tree reserved-memory settings are considered. For this
>  reason, both early MMU and normal MMU setup must be aware of the
>  reserved memory regions. The original patch set by Rouven used FDT
>  parsing in PBL to achieve this, but this is omitted here to limit
>  scope of the patch series. Instead we only handle the CONFIG_OPTEE_SIZE
>  case out-of-the-box."

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


