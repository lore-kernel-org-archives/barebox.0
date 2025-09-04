Delivery-date: Thu, 04 Sep 2025 08:47:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3kx-007wHT-1B
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 08:47:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3kw-0002x5-2x
	for lore@pengutronix.de; Thu, 04 Sep 2025 08:47:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Wz+kKvLHd2U2zDd5S/o7Gc1onXmQWAM4WmMBt9ua3I=; b=LMPdQe/YE0mcdOTGV4x6xlUWK1
	gki1iQ7aIEsQTPhO0koyBkvPXQ+b1coydqXfWSQPbHPQYxeVOCKmdOSCk5BzJYcQVfpjXnBqCG+Mx
	fDOqwSZG9ApyLN06A+N0Xd7j6uGx7uIBAgd6HpIyb1zvI6sHpugyJciX57TuXd5kyBVZgq+2q9LY6
	l1it2DkgujLSAYTiEYTFGrWb9MTeVr1ncpZjJvzWtQngEOYeTRJI2T68S0QKGUYnR0NMWp55nwtQW
	Hk7RVE7JB3kTONTuSK+0H8ewq6eKZj+ETrfOjGgLE5yeslONXRZ1T5COeHVuxfJdBnAdzwLyv1hgt
	kHKWEeJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3kK-00000009d9i-07dc;
	Thu, 04 Sep 2025 06:47:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3ht-00000009cZX-1DZ8
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 06:44:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3hr-0002KQ-W5; Thu, 04 Sep 2025 08:44:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3hr-003gUz-2Z;
	Thu, 04 Sep 2025 08:44:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3hr-0023hK-27;
	Thu, 04 Sep 2025 08:44:27 +0200
Date: Thu, 4 Sep 2025 08:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aLk1SzMf0P6jVWYF@pengutronix.de>
References: <20250901103039.914774-1-m.felsch@pengutronix.de>
 <aLf0NoQRdkCrYJhX@pengutronix.de>
 <20250903124129.w3lpvwlzy2opu6pv@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903124129.w3lpvwlzy2opu6pv@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_234429_327227_38193FCA 
X-CRM114-Status: GOOD (  32.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: mach-imx: tzasc: keep default region 0 secure
 settings for i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 03, 2025 at 02:41:29PM +0200, Marco Felsch wrote:
> On 25-09-03, Sascha Hauer wrote:
> > On Mon, Sep 01, 2025 at 12:29:37PM +0200, Marco Felsch wrote:
> > > The TZC-380 region 0 is the TZC default (fallback) region. This region
> > > is used if access to a certain DRAM address was done which isn't
> > > configured by any other region (see [1] for more information). Region 0
> > > covers the complete AXI space from 0x0 to AXI-bus width. The access is
> > > secure-only after reset.
> > > 
> > > The TZC-380 is not memory alias aware (see [1] for more information) and
> > > due to the DDR controller, the i.MX8M allows memory alias access.
> > > 
> > > Configuring region 0 as secure + non-secure RW access opens the
> > > potential security risk of allowing access to secure only memory e.g.
> > > TEE memory area if the TEE didn't configure all memory aliases for its
> > > memory. Because in such case region 0 could be used as fallback if an
> > > attackers access the TEE memory via memory aliases.
> > > 
> > > Don't reconfigure TZC-380 default region 0 to allow secure and
> > > non-secure access and instead setup an early non-secure region 1 which
> > > covers the complete ram <= 4G size to fix this.
> > > 
> > > [1] https://developer.arm.com/documentation/ddi0431/c
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  arch/arm/mach-imx/tzasc.c | 19 ++++++++++++++-----
> > >  1 file changed, 14 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> > > index 0fe7f6eb7f4a..31664bbf2b39 100644
> > > --- a/arch/arm/mach-imx/tzasc.c
> > > +++ b/arch/arm/mach-imx/tzasc.c
> > > @@ -345,6 +345,7 @@ bool imx6_can_access_tzasc(void)
> > >  void imx8m_tzc380_init(void)
> > >  {
> > >  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> > > +	resource_size_t ram_sz;
> > >  
> > >  	/* Enable TZASC and lock setting */
> > >  	setbits_le32(&gpr[10], GPR_TZASC_EN);
> > > @@ -364,13 +365,21 @@ void imx8m_tzc380_init(void)
> > >  	if (cpu_is_mx8mn() || cpu_is_mx8mp())
> > >  		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
> > >  
> > > +	/* All i.MX8M do have a 32-bit bus width except for the i.MX8M Nano */
> > > +	ram_sz = imx8m_barebox_earlymem_size(32);
> > > +	if (cpu_is_mx8mn())
> > > +		ram_sz = imx8m_barebox_earlymem_size(16);
> > 
> > earlymem_size is limited to the 32bit address space. What about the DRAM
> > above the 32bit address space? Don't we make this inaccessible with this
> > patch?
> 
> A problem would arise if the USB Core uses memory above 4G. I've tested
> the i.MX8MP USB download and it's still working with this patch. I
> assume that the USB-Core is only 32-bit capable.

What about other bus masters, like LCDIF, SDMA, SDHCI?

barebox itself won't be affected anyway because it only uses the 32bit
space, but Linux uses the full address space.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


