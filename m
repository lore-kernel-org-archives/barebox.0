Delivery-date: Mon, 23 Feb 2026 10:11:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRyJ-004mEJ-0H
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:11:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRyJ-0000Di-BW
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:11:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=clOh6imC78PN5husQ1PYjUTs4rWGGiTgNsTU5oPpM+Y=; b=iSKWIFEZi8HWi7RXjGTAMlgpO8
	FZfiNCEbr8kGs6r6xhfBB8iCuHF893gsYE8vlgdSxP8wGOCJl9ouBmeTJE+nJe+Sy//ph6F9z6zfJ
	zsxrcLqHqVIG0xqWimyTra6oIgb18GpSPKvU1dvJLx3OgZjdnSQR5hD7Ez0ylUEzAYnAMEUPhNoWC
	JvAlPEAreSiEbJCsSER/4RnVTPOwQQ0pUJ7jdJxj1RCjVzdHSKVbMKP0q5GSEWR2LkVSniFvYhMbr
	35P/b5Iwj+TpYFOqY8F+Xuw7eZ3z8PW3Ex/kKZz/+lSGDxv+2MzjTNguWHsYuE+PWHyB1k4rHmX1M
	XpJgZVvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRxr-0000000HVQR-1TO8;
	Mon, 23 Feb 2026 09:10:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRxo-0000000HVQ5-2hYf
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:10:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuRxl-000088-JL; Mon, 23 Feb 2026 10:10:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuRxk-002Cgy-0C;
	Mon, 23 Feb 2026 10:10:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuRxl-000000014on-1LZM;
	Mon, 23 Feb 2026 10:10:45 +0100
Date: Mon, 23 Feb 2026 10:10:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aZwZleKy56aDEBRl@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
 <20260223-arm-mmu-v1-4-707d45f6f6e1@pengutronix.de>
 <d12e0757-a610-47fe-b99d-bbb8e2aaa4de@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d12e0757-a610-47fe-b99d-bbb8e2aaa4de@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011048_740731_540C38D6 
X-CRM114-Status: GOOD (  29.04  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] ARM: pbl: MMU: Make it callable multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 23, 2026 at 09:41:23AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 2/23/26 9:34 AM, Sascha Hauer wrote:
> > mmu_early_enable() is called in barebox_pbl_start() after a call to
> > setup_c(). setup_c() clears the BSS which means alloc_pte() starts at
> > index zero again when mmu_early_enable() has been called earlier
> > already.
> > 
> > Some boards might want to do exactly that: Call mmu_early_enable()
> > earlier to do for example otherwise expensive hashing of xloaded
> > binaries.
> > 
> > Make mmu_early_enable() safe to be called multiple times by moving the
> > PTE index out of the BSS.
> 
> How about making setup_c() safe for calling multiple times by having it
> check and modify a variable in the .data section?

Good idea.

> 
> Would that break anything?

I don't know. We might have code that relies on exactly the current
behaviour, but I am not aware of any.

Sascha

> 
> Cheers,
> Ahmad
> 
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_64.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > index 7f38473079..2f451b3c91 100644
> > --- a/arch/arm/cpu/mmu_64.c
> > +++ b/arch/arm/cpu/mmu_64.c
> > @@ -86,7 +86,10 @@ static void set_pte_range(unsigned level, uint64_t *virt, phys_addr_t phys,
> >  #ifdef __PBL__
> >  static uint64_t *alloc_pte(void)
> >  {
> > -	static unsigned int idx;
> > +	static int idx = -1;
> > +
> > +	if (idx == -1)
> > +		idx = 0;
> >  
> >  	idx++;
> >  
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


