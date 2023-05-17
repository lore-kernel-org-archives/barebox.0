Delivery-date: Wed, 17 May 2023 16:45:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIP1-004PGB-1S
	for lore@lore.pengutronix.de; Wed, 17 May 2023 16:45:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIOy-0001Bk-Lo
	for lore@pengutronix.de; Wed, 17 May 2023 16:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RKgflrNO3Zt3Tzw1jyLV9Rw1SCCXrXYdwOzlPruEpxY=; b=EscgfgbrnC8Vo46zjrcd8JXBC0
	UDbe3PYj30F+QBTYaZ4Hodu6FyXjWLrwtaJ0VKQm6pVBOZolcDYkZMY/9S2ji0QGUwMZlPUs5DCBR
	f9n70fpS95dQcxEYUvoiE2ysZ5EFfrNCUTBToQDRmpUoZP5ZfZSJnBunpB4GCCfXe4YqfXBR/9l94
	4kxjvaPxCilpznWTAFprcbr27QWbIgrsjtDJ8RVPxu8lQsPstYmFt2a5+LXVWvnJAOovJaYDQ1Vgs
	Iy4JLkpD9A1DQdI/imkj7FqAS+psHHRmVgQ5zZXQhgKWrRcn/NkH+UkWN6uCSEknoYOY23Bo4zMxQ
	GHFhs5Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzINw-00AAeX-2k;
	Wed, 17 May 2023 14:44:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzINs-00AAcU-2c
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 14:44:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzINr-0000sn-IF; Wed, 17 May 2023 16:44:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzINq-0001OQ-N6; Wed, 17 May 2023 16:44:06 +0200
Date: Wed, 17 May 2023 16:44:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230517144406.GC29365@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-29-s.hauer@pengutronix.de>
 <bfd18996-6881-c9b8-8d3e-2842dfc67368@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfd18996-6881-c9b8-8d3e-2842dfc67368@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_074408_870676_B9F80320 
X-CRM114-Status: GOOD (  21.52  )
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
Subject: Re: [PATCH v2 28/34] ARM: mmu32: Add pte_flags_to_pmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 17, 2023 at 03:43:51PM +0200, Ahmad Fatoum wrote:
> On 17.05.23 11:03, Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_32.c | 35 +++++++++++++++++++++++++++++------
> >  1 file changed, 29 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> > index 4abaab7d87..0af89ac39c 100644
> > --- a/arch/arm/cpu/mmu_32.c
> > +++ b/arch/arm/cpu/mmu_32.c
> > @@ -187,30 +187,53 @@ static u32 pmd_flags_to_pte(u32 pmd)
> >  	return pte;
> >  }
> >  
> > +static u32 pte_flags_to_pmd(u32 pte)
> > +{
> > +	u32 pmd = 0;
> > +
> > +	if (pte & PTE_BUFFERABLE)
> > +		pmd |= PMD_SECT_BUFFERABLE;
> > +	if (pte & PTE_CACHEABLE)
> > +		pmd |= PMD_SECT_CACHEABLE;
> > +
> > +	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
> > +		if (pte & PTE_EXT_NG)
> > +			pmd |= PMD_SECT_nG;
> > +		if (pte & PTE_EXT_XN)
> > +			pmd |= PMD_SECT_XN;
> 
> Note that at least,  <asm/pgtable.h> claims these bits are v6+:
> 
> #define PTE_EXT_XN		(1 << 0)	/* v6 */
> #define PMD_SECT_nG		(1 << 17)	/* v6 */

Yes, I know. We only seem to use them on ARMv7+ though, so I decided to
honour these flags on ARMv7+ only.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


