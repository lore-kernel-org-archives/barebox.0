Delivery-date: Wed, 17 May 2023 16:57:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIaW-004PnT-IP
	for lore@lore.pengutronix.de; Wed, 17 May 2023 16:57:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIaU-00036Y-87
	for lore@pengutronix.de; Wed, 17 May 2023 16:57:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lzYw2j3QGjlsqa63c9GVcOJjyD/U5d7pgEmxYtF1yWI=; b=naU2eEFr+r4NZPKYonzqz1HNYP
	UP8TTam4UkTTgB00zl0R+eg5qgeZTb0Oa4jAS92QB3RO1FZi2v8/8uGNPxDk7Ac06APVypwz8tNb4
	423Bopbjy2fNYVXv1FDoz8/jSOdDzpXoInSazGejNuxjfUg/1bpaH6wkyBFmbaYDw1KQIUpfU2k+M
	KA5AhZP1y+IcZAa+0L8buXdWdH8+eVOl3wWsb1FPmlRFwDf3rRYVto0zcdScIovJOF6xt7jEvyYc1
	/U/OvUqOXGWp15a0jxvkFCLelMxomFoqKYDeEHxywParCvhfxDcQF2jUtuAxR6sXzjs+TkGcjmee4
	qJDS1ndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzIZB-00ACmp-0N;
	Wed, 17 May 2023 14:55:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzIZ7-00AClo-2n
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 14:55:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzIZ4-0002vo-O7; Wed, 17 May 2023 16:55:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzIZ3-0001nv-UY; Wed, 17 May 2023 16:55:41 +0200
Date: Wed, 17 May 2023 16:55:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230517145541.GD29365@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-34-s.hauer@pengutronix.de>
 <1caed1b5-108d-7686-4e3b-0fd3bab04a58@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1caed1b5-108d-7686-4e3b-0fd3bab04a58@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_075545_930642_9C1A2C6E 
X-CRM114-Status: GOOD (  26.27  )
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
Subject: Re: [PATCH v2 33/34] ARM: mmu32: Skip reserved ranges during
 initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 17, 2023 at 04:43:39PM +0200, Ahmad Fatoum wrote:
> On 17.05.23 11:03, Sascha Hauer wrote:
> > The early MMU code now uses pages to map the OP-TEE area non executable.
> > This mapping is overwritten with sections in barebox proper. Refrain
> > from doing so by using arch_remap_range() and bypassing reserved areas.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_32.c | 14 +++++++++++---
> >  1 file changed, 11 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> > index 705d27a045..47711bed35 100644
> > --- a/arch/arm/cpu/mmu_32.c
> > +++ b/arch/arm/cpu/mmu_32.c
> > @@ -522,9 +522,17 @@ void __mmu_init(bool mmu_on)
> >  	vectors_init();
> 
> Took me a while to parse the below code, so I think a comment may be apt:

That's just fair, it likely tool me even longer to write it ;)

> 
> /*
>  * Early mmu init will have mapped everything but the initial memory area
>  * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
>  * all memory banks, so let's map all pages, excluding reserved memory areas,
>  * cacheable and executable.
>  */
> 
> >  
> >  	for_each_memory_bank(bank) {
> > -		create_sections(bank->start, bank->start + bank->size - 1,
> > -				PMD_SECT_DEF_CACHED);
> > -		__mmu_cache_flush();
> > +		struct resource *rsv;
> > +		resource_size_t pos;
> > +
> > +		pos = bank->start;
> > +
> > +		for_each_reserved_region(bank, rsv) {
> > +			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
> > +			pos = rsv->end + 1;
> > +		}
> > +
> > +		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> 
> I am a bit bothered by the asymmetry here: Reserved regions in the extra memory banks
> will be initially uncached (because outside initmem), so this loop does the correct thing.
> 
> For reserved regions within the initial memory, only the OP-TEE region would be uncached,
> everything else would just be requested, but is still mapped cacheable.
> 
> IMO, that's surprising behavior.

I agree. What would you suggest. Map all reserved regions uncached?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


