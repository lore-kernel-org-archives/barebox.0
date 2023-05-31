Delivery-date: Wed, 31 May 2023 14:40:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4L7d-004FRN-HZ
	for lore@lore.pengutronix.de; Wed, 31 May 2023 14:40:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4L7b-0004YG-3J
	for lore@pengutronix.de; Wed, 31 May 2023 14:40:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SvcAHy8rs6MI3nig6bF+MWGvA++/tiNwWdbhL7HExyE=; b=cmz6P/PLaKENP7PaxxNdSyweeU
	ITaz7kMBNnpe6s6ADOKxHk+V2YExPkTeKwivxqmErwWqMZEq0XxHQxypLROWFDopSMg0VTeDfAHKD
	0It0zwwkGXAl3+xX582LdZb/2H2Aeo9kn4+shkWxfsBgWxqkP5dyWDjCLGa1wDUHuUV5IYetQC8G4
	Mxa3HOqhmm7aHQDa4ltBTCHrbWQtCkgC14CIzRsrDuXuWqR8PySQpxEPCGR2z+dUKMveT7/HEPlhg
	MvSaf8ax0NUBtadeo5LezqjuiAkWOTclyGGSI4YK7UdeZNrOKIlXOpjwJXCH6431jxxIZOgumJM6o
	WS/ZFrXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4L6G-00HNhn-0T;
	Wed, 31 May 2023 12:38:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4L6C-00HNge-2Y
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 12:38:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4L69-0004Jd-4p; Wed, 31 May 2023 14:38:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4L68-0008AJ-TZ; Wed, 31 May 2023 14:38:40 +0200
Date: Wed, 31 May 2023 14:38:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230531123840.GB18491@pengutronix.de>
References: <20230531103515.845714-1-s.hauer@pengutronix.de>
 <20230531103515.845714-2-s.hauer@pengutronix.de>
 <4dfbd23f-9dca-e2c6-2067-b9decbdc7977@pengutronix.de>
 <20230531112114.GA18491@pengutronix.de>
 <298d6a42-e074-c861-6c7f-117ea75ddeb7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <298d6a42-e074-c861-6c7f-117ea75ddeb7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_053844_832631_45ABD75B 
X-CRM114-Status: GOOD (  35.78  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: mmu_32: fix setting up zero page when it is
 in SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 01:58:33PM +0200, Ahmad Fatoum wrote:
> > From b6e5c92682467496bd9c57918996f1feffda2dd6 Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Wed, 31 May 2023 11:58:51 +0200
> > Subject: [PATCH] ARM: mmu_32: fix setting up zero page when it is in SDRAM
> > 
> > We used to skip setting the zero page to faulting when SDRAM starts at
> > 0x0. As bootm code now explicitly sets the zero page accessible before
> > copying ATAGs there this should no longer be necessary, so
> > unconditionally set the zero page to faulting during MMU startup.  This
> > also moves the zero page and vector table setup after the point the
> > SDRAM has been mapped cachable, because otherwise the zero page and
> > possibly the vector table mapping would be overwritten.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_32.c | 23 +++++++++--------------
> >  1 file changed, 9 insertions(+), 14 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> > index c4e5a3bb0a..14775768a3 100644
> > --- a/arch/arm/cpu/mmu_32.c
> > +++ b/arch/arm/cpu/mmu_32.c
> > @@ -461,19 +461,14 @@ static int set_vector_table(unsigned long adr)
> >  
> >  static void create_zero_page(void)
> 
> Is this commit incomplete? Vectors should be set up unconditionally and
> create_zero_page should be called after it.

Vectors are set up unconditionally and create_zero_page() is called the
same way as before.

Sascha

> 
> >  {
> > -	struct resource *zero_sdram;
> > +	/*
> > +	 * In case the zero page is in SDRAM request it to prevent others
> > +	 * from using it
> > +	 */
> > +	request_sdram_region("zero page", 0x0, PAGE_SIZE);
> >  
> > -	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
> > -	if (zero_sdram) {
> > -		/*
> > -		 * Here we would need to set the second level page table
> > -		 * entry to faulting. This is not yet implemented.
> > -		 */
> > -		pr_debug("zero page is in SDRAM area, currently not supported\n");
> > -	} else {
> > -		zero_page_faulting();
> > -		pr_debug("Created zero page\n");
> > -	}
> > +	zero_page_faulting();
> > +	pr_debug("Created zero page\n");
> >  }
> >  
> >  /*
> > @@ -530,8 +525,6 @@ void __mmu_init(bool mmu_on)
> >  
> >  	pr_debug("ttb: 0x%p\n", ttb);
> >  
> > -	vectors_init();
> > -
> >  	/*
> >  	 * Early mmu init will have mapped everything but the initial memory area
> >  	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> > @@ -552,6 +545,8 @@ void __mmu_init(bool mmu_on)
> >  
> >  		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> >  	}
> > +
> > +	vectors_init();
> >  }
> >  
> >  /*
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


