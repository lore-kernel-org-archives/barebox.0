Delivery-date: Thu, 18 Jan 2024 10:14:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOU9-0056pe-1d
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 10:14:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOUA-0001q1-5E
	for lore@pengutronix.de; Thu, 18 Jan 2024 10:14:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HbJGXw4zrFjmeFaWNYtP00YEAsiRljURWS8QcEFj5GI=; b=MK6SUH01EvdbZ+kkHWdELJZNnn
	auyvKq7vOUNpdxFQ0DHJW9Yz8v/W2LE/0YvfISy46AdcQq+IgFjdLoG8hfQrIlWf/DdM8MZ/plz/R
	YwDKAjCnDxe1RogyA7ZhC+xcIY2/9s/xS1b+Py8VAxxj+h5PqS75CzDxWtt3ffZEL9ilBnX9AkB93
	/Rs/VdnIROhUEc9gls9IBkTlB16rKdRG2/+dP30ZwkCRlTTf/XG4o/QAvVanfb08RGjGyFg4o++4V
	HtB2YzNR2EqvXuz3AVTHfo8vgLUzSZ0/A6ox4u23n22NFYIP1xdfFu9ChihVrbUDeDtp+OtJTkK1D
	GNKZadcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOT5-002F59-2Z;
	Thu, 18 Jan 2024 09:13:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOT3-002F4a-0I
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 09:13:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOT1-0001jK-J7; Thu, 18 Jan 2024 10:13:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOT1-000epe-6W; Thu, 18 Jan 2024 10:13:43 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOT1-000XRD-4D; Thu, 18 Jan 2024 10:13:43 +0100
Date: Thu, 18 Jan 2024 10:13:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240118091343.r25gx5nrids2mgpd@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <20240116170738.209954-13-m.felsch@pengutronix.de>
 <20240117143341.GI4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117143341.GI4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_011345_136956_9A612577 
X-CRM114-Status: GOOD (  23.85  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 12/18] ARM64: mmu: add dynamic optee memory mapping
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-17, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 06:07:32PM +0100, Marco Felsch wrote:
> > Use the dynamic optee memory base address for the early mapping if
> > possible and fallback to the static mapping if the query failed.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_64.c      | 14 ++++++++++++--
> >  arch/arm/mach-imx/esdctl.c |  4 ++++
> >  common/Makefile            |  2 +-
> >  3 files changed, 17 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > index 84f45bc2c3c1..27fd15ea1233 100644
> > --- a/arch/arm/cpu/mmu_64.c
> > +++ b/arch/arm/cpu/mmu_64.c
> > @@ -20,6 +20,7 @@
> >  #include <memory.h>
> >  #include <asm/system_info.h>
> >  #include <linux/pagemap.h>
> > +#include <tee/optee.h>
> >  
> >  #include "mmu_64.h"
> >  
> > @@ -310,6 +311,7 @@ static void init_range(size_t total_level0_tables)
> >  void mmu_early_enable(unsigned long membase, unsigned long memsize)
> >  {
> >  	int el;
> > +	u64 optee_membase;
> >  	unsigned long ttb = arm_mem_ttb(membase + memsize);
> >  
> >  	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> > @@ -326,8 +328,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
> >  	 * Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
> >  	 */
> >  	init_range(2);
> > -	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> > -	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
> > +
> > +	if (optee_get_membase(&optee_membase)) {
> > +		/* Fallback and place OP-TEE at the memory end region */
> > +		early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> > +		early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
> > +	} else {
> > +		early_remap_range(membase, memsize, MAP_CACHED);
> > +		early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
> > +	}
> 
> You could replace the above with:
> 
> 	early_remap_range(membase, memsize, MAP_CACHED);
> 
> 	optee_membase = membase + memsize - OPTEE_SIZE;
> 	optee_get_membase(&optee_membase);
> 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);

Nice catch, thanks a lot. How about:

  	early_remap_range(membase, memsize, MAP_CACHED);
  
  	if (optee_get_membase(&optee_membase))
		optee_membase = membase + memsize - OPTEE_SIZE;
  	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


