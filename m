Delivery-date: Fri, 27 Jun 2025 15:23:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV93Q-00Bd4F-2r
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 15:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV93Q-0005HI-6d
	for lore@pengutronix.de; Fri, 27 Jun 2025 15:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cb6QCHkC+C/4NqFonJK0QlcyfgaDtWBkyzdyVtp83RY=; b=vgOKoI+uX6L0E4IJLqqzlToniV
	F5gIZfXKfPh1bS9waLvJssdR2Fb7ZrhZccZu0y1xsQGJu0klWL8NO4SnOg8zlD9TqEve1QmMp7rmL
	cng7uFa4XGOdtJGOQhtHcsaELEQFf8pAE5DPontV0xmdk7dn8pAJhCdswBldCEnHy/nOMlKb+jPIb
	IlqdQsNjQJNDi8uF1ZiaNgn7Z4m+LT2Awh3bqM26+0x5oFDrsI7nJBri/NfLZDTCnyYHyG5Fw/SB5
	lH3GuZX4BHlfzwUkXs2lUDO/L5tYmKfjMn81SavXdG9tpIt5D4RdLl+zp98M31nUvMGfqwlHiYItR
	Jbb5Nn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV92w-0000000ElKi-1Pk2;
	Fri, 27 Jun 2025 13:23:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8Qd-0000000Efdw-163E
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 12:43:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8Qc-0006Bz-0e; Fri, 27 Jun 2025 14:43:38 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8Qb-005cFV-2h;
	Fri, 27 Jun 2025 14:43:37 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8Qb-003ZyC-2Q;
	Fri, 27 Jun 2025 14:43:37 +0200
Date: Fri, 27 Jun 2025 14:43:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aF6R-RbRmCgcp9AE@pengutronix.de>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
 <70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_054339_301033_A47A7873 
X-CRM114-Status: GOOD (  31.13  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 26, 2025 at 05:37:35PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 6/26/25 16:03, Sascha Hauer wrote:
> > Chainloading barebox when OP-TEE is enabled has multiple bugs, fix them.
> > 
> > When barebox starts we have to guess if we have to start OP-TEE or not.
> > As we can't detect the exception level on ARMv7 we do this by checking
> > if a first stage loader has passed us a device tree.
> > 
> > First of all the device tree is passed in r2, not in r0, so fix the
> > register we use.
> > 
> > Then we have to check if r2 is within the SDRAM. We check against
> > MX6_MMDC_P0_BASE_ADDR which is the base of the SDRAM controller. Use the
> > base address of the SDRAM instead.
> > 
> > Finally we manipulate the TZASC which we are obviously not allowed in
> > EL1, so move the manipulation to the code which is only executed in EL2.
> 
> EL1/EL2 are ARMv8-specific.

What's the correct term for ARMv7 then? Supervisor mode? My google foo
always points me to the ARMv8 terms.

> >  	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
> > -	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
> > -	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
> > +	    !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + SZ_256M)) {
> > +		/* Enable normal/secure r/w for TZC380 region0 */
> > +		writel(0xf0000000, 0x021D0108);
> 
> I think this is problematic:
> 
>   - robustness-wise: We have no guarantee that there isn't some lesser
>     used BootROM code path that happens to leave a suitable DRAM
>     look-alike address that would trick us here.
> 
>   - security wise, even if we check for FDT header if r2 points into
>     DRAM, a compromised OS could spray RAM with FDT magic,
>     trigger a warm reset that has the BootROM produce a DRAM lookalike
>     pointer in r2 and then OP-TEE loading is skipped and the kernel
>     starts in the highest privilege level.
> 
> To address this, we need some way to set a sticky bit that's cleared
> only on reset. One way, would be to set up an IVT and try to access the
> L2 cache controller while data_abort_mask() is active, like
> imx6_cannot_write_l2x0 is doing.

I'll send an updated series shortly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


