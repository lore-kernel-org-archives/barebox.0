Delivery-date: Mon, 09 Aug 2021 20:32:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDA4e-000273-GX
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:32:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDA4a-0008DN-1J
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:32:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/INTloqj5Ru2jRTMXote9OmnWgauylt1lOkA+OpC6E4=; b=L9I2pc+nPmSz99D9pfry5OuMbZ
	1MVC0PDoqRwKIUleyGrnbttuqLPyY8CeL9n4IwPQzBncT4yl/keDEuITJGG9mIkHwV3gc6U62Cc9w
	ta6w6YQg2dhkTxA2kbzyMlNKEPouMQaogPcK96aaqZY98XuNkKKyEEwmrkWFHH98cvoMjVoaVc7tN
	0eaE3q5jHfJfEHh0IX4bqkcY31AK3kkdcJrqSscsS5Wzt0peRJSA7J6vulS9ziTVFy5zZjOOXQRRT
	l25uDsPvODchDdXR1lTHPSW7LEDL22LX2FSQtDCezBNy5gl9vcZ6D/TGk+r6DADRdCx52DghkhXph
	vWDxQikw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDA31-001ivV-UW; Mon, 09 Aug 2021 18:30:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDA2t-001iuO-VG
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:30:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDA2s-00080K-Bo; Mon, 09 Aug 2021 20:30:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDA2s-0005mK-1Q; Mon, 09 Aug 2021 20:30:42 +0200
Date: Mon, 9 Aug 2021 20:30:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <20210809183042.GF11515@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-4-r.czerwinski@pengutronix.de>
 <270994d8-2970-5095-2f82-f8cf29054629@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <270994d8-2970-5095-2f82-f8cf29054629@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:29:41 up 172 days, 21:53, 81 users,  load average: 0.09, 0.06,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_113044_050967_7CCE0033 
X-CRM114-Status: GOOD (  32.32  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/8] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 05, 2021 at 04:06:42PM +0200, Ahmad Fatoum wrote:
> On 03.08.21 11:44, Rouven Czerwinski wrote:
> > Use the information from the reserved memory entries to modify the
> > mapping of memory regions to mark them as uncachable and not-executable.
> > This also prevents the processor from speculating into these regions,
> > preventing hard to debug scenarios where boots fail for unknown reasons.
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu.c | 34 ++++++++++++++++++++++++++++++++--
> >  1 file changed, 32 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> > index 6388e1bf14..73f4cf5b36 100644
> > --- a/arch/arm/cpu/mmu.c
> > +++ b/arch/arm/cpu/mmu.c
> > @@ -17,6 +17,7 @@
> >  #include <memory.h>
> >  #include <asm/system_info.h>
> >  #include <asm/sections.h>
> > +#include <of.h>
> >  
> >  #include "mmu.h"
> >  
> > @@ -407,6 +408,36 @@ static void vectors_init(void)
> >  	create_vector_table(ARM_LOW_VECTORS);
> >  }
> >  
> > +static void create_sections_with_intersect(struct memory_bank *bank)
> > +{
> > +	struct of_reserve_map *res_map;
> > +	unsigned long j_end;
> > +	unsigned long end;
> > +	unsigned long j;
> > +	u32 pmd_flags;
> > +	int i;
> > +
> > +	res_map = of_get_reserve_map();
> > +	if (!res_map)
> > +		return;
> 
> If there is no reserve map, you should still map the banks cached.
> So this early exit is wrong.
> 
> > +
> > +	end = bank->start + bank->size - 1;
> > +
> > +	for (j = bank->start; j < end; j += PGDIR_SIZE) {
> > +		pmd_flags = PMD_SECT_DEF_CACHED;
> > +		j_end = j + PGDIR_SIZE - 1;
> > +
> > +		for (i = 0; i < res_map->num_entries; i++) {
> > +			if ((BIT(i) & res_map->xn) &&
> > +			    j_end >= res_map->start[i] &&
> > +			    j_end <= res_map->end[i])
> > +				pmd_flags = PMD_SECT_DEF_UNCACHED | PMD_SECT_XN;
> > +		}
> > +
> > +		create_sections(ttb, j, j_end, pmd_flags);
> > +	}
> 
> Do we need the nested loop? Can't we create sections cached first
> and then iterate once over the reserved map, deduce the sections containing
> start and end and map those uncached?

Wouldn't that open a window to speculate into the areas we want to avoid
speculating into in the first place?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

