Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGRIJ-000493-90
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 10:23:40 +0000
Received: from mail242.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DE9D510640FA
 for <barebox@lists.infradead.org>; Mon,  2 Sep 2013 12:23:12 +0200 (CEST)
Date: Mon, 2 Sep 2013 12:24:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130902102406.GK19197@ns203013.ovh.net>
References: <1377964462-10387-1-git-send-email-plagnioj@jcrosoft.com>
 <20130902090523.GT30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130902090523.GT30088@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] arm: mmu: catch NULL pointer dereferences
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:05 Mon 02 Sep     , Sascha Hauer wrote:
> On Sat, Aug 31, 2013 at 05:54:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > For high vectors if memory start at 0x0. We have to
> > live without being able to catch NULL pointer dereferences.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/cpu/mmu.c | 27 +++++++++++++++++++++------
> >  1 file changed, 21 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> > index e3ea3b6..2e69b16 100644
> > --- a/arch/arm/cpu/mmu.c
> > +++ b/arch/arm/cpu/mmu.c
> > @@ -218,9 +218,9 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
> >  /*
> >   * Map vectors and zero page
> >   */
> > -static void vectors_init(void)
> > +static void vectors_init(bool zero_valid_addr)
> >  {
> > -	u32 *exc, *zero = NULL;
> > +	u32 *exc;
> >  	void *vectors;
> >  	u32 cr;
> >  
> > @@ -235,10 +235,19 @@ static void vectors_init(void)
> >  		 * page table for the high vectors and zero page
> >  		 */
> >  		exc = arm_create_pte(0xfff00000);
> > -		zero = arm_create_pte(0x0);
> >  
> > -		/* Set the zero page to faulting */
> > -		zero[0] = 0;
> > +		/*
> > +		 * Memory start at 0x0. We have to
> > +		 * live without being able to catch NULL pointer dereferences
> > +		 */
> > +		if (!zero_valid_addr) {
> > +			u32 *zero = NULL;
> > +
> > +			zero = arm_create_pte(0x0);
> > +
> > +			/* Set the zero page to faulting */
> > +			zero[0] = 0;
> > +		}
> >  	} else {
> >  		/*
> >  		 * Otherwise map the vectors to the zero page. We have to
> > @@ -267,6 +276,7 @@ static int mmu_init(void)
> >  {
> >  	struct memory_bank *bank;
> >  	int i;
> > +	bool is_start_zero = 0;
> >  
> >  	arm_set_cache_functions();
> >  
> > @@ -303,7 +313,12 @@ static int mmu_init(void)
> >  	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
> >  			PMD_TYPE_SECT);
> >  
> > -	vectors_init();
> > +	for_each_memory_bank(bank) {
> > +		if (bank->start == 0x0)
> > +			is_start_zero = 1;
> > +	}
> > +
> > +	vectors_init(is_start_zero);
> 
> Why not add the check to vectors_init() instead of passing this as
> argument?
> 
> I must say I'm not entirely happy with this approach. Being able to
> catch NULL pointer derefs is really a good thing. When exactly does the
> faulting zero SDRAM page become a problem for you? obviously something
> like
> 
> cp /somehing /dev/ram0
> 
> does not work. Some care must probably be taken when setting up the
> kernel parameters. Are these the problems or is there something else?
yes it's get issue with uImage that get data load there :(

as I can not control the load addr from uImage :(

and on ux5x0 and arm board I have ddr starting at 0x0

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
