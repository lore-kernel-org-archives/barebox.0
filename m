Delivery-date: Mon, 22 May 2023 10:16:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10ip-009RdX-QH
	for lore@lore.pengutronix.de; Mon, 22 May 2023 10:16:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10in-0000Bj-3i
	for lore@pengutronix.de; Mon, 22 May 2023 10:16:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MRYWa7HMjJt//0KW29EhIKdg7VQhhnPoL21Xu9Mtu4k=; b=PWdwJxOPnIbjbs/7JtfgJUxGil
	s0wbFCDIAXUIfc6Mcbjb1LLqGrML3m8FWgQYiijGUeEP1rxWccXtePDNZUz2LTCoL4x7UK+HyJYb3
	NXfa40ZKi0TzMM04tpxNVw8WRzqhYzUAVVBeHJyWYi42shIqL/6+UHA8DXP53Maih5nHlX55uwLFT
	E8XQnWGs4Qsidknd6Sg0WbFLypKC4JQfik3calSdaA+iMf2RsoB2Vaw7iP6dzGmL4CmJt8JhoBjpg
	bKgnC2+eacPXRoVmW1QTBT8IahNNUg/0EDUr+YKtgVkwLd+t42FLzScLyu4In8O6OL86hvrMYdcfW
	xAISAdWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q10h4-005iow-30;
	Mon, 22 May 2023 08:15:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q10h1-005inZ-0r
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 08:15:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10gw-000819-Kt; Mon, 22 May 2023 10:14:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10gv-0002lo-Ln; Mon, 22 May 2023 10:14:53 +0200
Date: Mon, 22 May 2023 10:14:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230522081453.GI29365@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-33-s.hauer@pengutronix.de>
 <b5cfdb55-6cfb-3b27-bd31-270c4afb9b3a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5cfdb55-6cfb-3b27-bd31-270c4afb9b3a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_011459_319761_F18A7997 
X-CRM114-Status: GOOD (  30.05  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 32/34] ARM: mmu32: Use pages for early MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 17, 2023 at 04:21:32PM +0200, Ahmad Fatoum wrote:
> On 17.05.23 11:03, Sascha Hauer wrote:
> > Up to now we use 1MiB sections to setup the page tables in PBL. There
> > are two places where this leads to problems. First is OP-TEE, we have
> > to map the OP-TEE area with PTE_EXT_XN to prevent the instruction
> > prefetcher from speculating into that area. With the current section
> > mapping we have to align OPTEE_SIZE to 1MiB boundaries. The second
> > problem comes with SRAM where the PBL might be running. This SRAM has
> > to be mapped executable, but at the same time we should map the
> > surrounding areas non executable which is not always possible with
> > 1MiB mapping granularity.
> > 
> > We now have everything in place to use two level page tables from PBL,
> > so use arch_remap_range() for the problematic cases.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_32.c | 31 +++++++------------------------
> >  1 file changed, 7 insertions(+), 24 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> > index 785b20c7fd..705d27a045 100644
> > --- a/arch/arm/cpu/mmu_32.c
> > +++ b/arch/arm/cpu/mmu_32.c
> > @@ -111,8 +111,10 @@ void dma_flush_range(void *ptr, size_t size)
> >  	unsigned long end = start + size;
> >  
> >  	__dma_flush_range(start, end);
> > +#ifndef __PBL__
> >  	if (outer_cache.flush_range)
> >  		outer_cache.flush_range(start, end);
> > +#endif
> 
> Meh. I see why this is ok (L2X0 currently initialized in initcall), but this
> #ifdef looks a bit too fragile. Perhaps, we could do this in <asm/mmu.h> instead?
> 
> #ifdef __PBL__
> /* Existing platforms with non-architected outer cache initialize it
>  * outside PBL and new ones will likely only have architected caches,
>  * so we provide a dummy here
>  */
> static __maybe_unused struct outer_cache_fns outer_cache;
> #else
> extern struct outer_cache_fns outer_cache;
> #endif

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


