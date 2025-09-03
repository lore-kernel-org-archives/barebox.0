Delivery-date: Wed, 03 Sep 2025 16:49:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utone-007gQd-16
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 16:49:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utond-0006qS-2A
	for lore@pengutronix.de; Wed, 03 Sep 2025 16:49:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nk3GPnCP6yS2/kgd0oxu0LdjAr+mU2R0+tSanOGZmL0=; b=UDJrx+zpH55axVeZS9g908jVle
	fkLbZcmMY62kwx1dZBOmbgfweIUtEPojcm3zyV7PfcdLl6uN6ye//XA9XMGEPNcaPTav0BkA1A4d4
	sD2UwdwTVIOzO9Z7P+Fr5KyACRGug/h+CdA56+NZ4yrtsJPwZ1XLcBR0ISsRviy6bFnSKHHVmFvC3
	6stCd0Fx6GXCoip6prLAjaBFjj2EA7fud69sn9P3vahPaH5qXAE5hDAd3hFd4fKTgK+6LKQ6Kqm2l
	WOEo8H1LXOmCF+jdr8+K+V0advlYD9d4ID5j/H4ORvzHnkpAPt+mTnQnlixP1trkMAwkR+eKW0/kG
	hZLGvrmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomv-00000006m4B-0qqF;
	Wed, 03 Sep 2025 14:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmnr-00000006QPm-0PQi
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 12:41:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1utmnp-00013U-R1; Wed, 03 Sep 2025 14:41:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1utmnp-003Ys0-26;
	Wed, 03 Sep 2025 14:41:29 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1utmnp-0000Mh-1j;
	Wed, 03 Sep 2025 14:41:29 +0200
Date: Wed, 3 Sep 2025 14:41:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250903124129.w3lpvwlzy2opu6pv@pengutronix.de>
References: <20250901103039.914774-1-m.felsch@pengutronix.de>
 <aLf0NoQRdkCrYJhX@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aLf0NoQRdkCrYJhX@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_054131_132240_314723E5 
X-CRM114-Status: GOOD (  27.77  )
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

On 25-09-03, Sascha Hauer wrote:
> On Mon, Sep 01, 2025 at 12:29:37PM +0200, Marco Felsch wrote:
> > The TZC-380 region 0 is the TZC default (fallback) region. This region
> > is used if access to a certain DRAM address was done which isn't
> > configured by any other region (see [1] for more information). Region 0
> > covers the complete AXI space from 0x0 to AXI-bus width. The access is
> > secure-only after reset.
> > 
> > The TZC-380 is not memory alias aware (see [1] for more information) and
> > due to the DDR controller, the i.MX8M allows memory alias access.
> > 
> > Configuring region 0 as secure + non-secure RW access opens the
> > potential security risk of allowing access to secure only memory e.g.
> > TEE memory area if the TEE didn't configure all memory aliases for its
> > memory. Because in such case region 0 could be used as fallback if an
> > attackers access the TEE memory via memory aliases.
> > 
> > Don't reconfigure TZC-380 default region 0 to allow secure and
> > non-secure access and instead setup an early non-secure region 1 which
> > covers the complete ram <= 4G size to fix this.
> > 
> > [1] https://developer.arm.com/documentation/ddi0431/c
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/tzasc.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> > index 0fe7f6eb7f4a..31664bbf2b39 100644
> > --- a/arch/arm/mach-imx/tzasc.c
> > +++ b/arch/arm/mach-imx/tzasc.c
> > @@ -345,6 +345,7 @@ bool imx6_can_access_tzasc(void)
> >  void imx8m_tzc380_init(void)
> >  {
> >  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> > +	resource_size_t ram_sz;
> >  
> >  	/* Enable TZASC and lock setting */
> >  	setbits_le32(&gpr[10], GPR_TZASC_EN);
> > @@ -364,13 +365,21 @@ void imx8m_tzc380_init(void)
> >  	if (cpu_is_mx8mn() || cpu_is_mx8mp())
> >  		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
> >  
> > +	/* All i.MX8M do have a 32-bit bus width except for the i.MX8M Nano */
> > +	ram_sz = imx8m_barebox_earlymem_size(32);
> > +	if (cpu_is_mx8mn())
> > +		ram_sz = imx8m_barebox_earlymem_size(16);
> 
> earlymem_size is limited to the 32bit address space. What about the DRAM
> above the 32bit address space? Don't we make this inaccessible with this
> patch?

A problem would arise if the USB Core uses memory above 4G. I've tested
the i.MX8MP USB download and it's still working with this patch. I
assume that the USB-Core is only 32-bit capable.

The problem would also arise if the barebox <-> OP-TEE exchange data
location would be above 4G. Right now barebox doesn't exachange any data
with OP-TEE in case of i.MX8M platforms.

For possible exchange the barebox-scratch area could be used, which is
at end of the RAM, right? Is there a way to read-back the configured RAM
size?

Regards,
  Marco


