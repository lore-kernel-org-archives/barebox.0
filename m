Delivery-date: Tue, 27 May 2025 10:47:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpyM-000nco-0n
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 10:47:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpyL-0007FK-M8
	for lore@pengutronix.de; Tue, 27 May 2025 10:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TiVK4zQ28zDBRts7ORicSOVW0ZAHVjSf9g156TqCYgk=; b=dDSM7So/3vb/pI2sEEdWXOFTsG
	/mjnwY4jUMW45UsHTRGYo3bAjMFNMwKL7mm2BoKT4hJJ1Z0Qhy2T8wuvLH8g3hD3o0FDj5dDJZaH1
	wQ7NsWLeUY1dxOqHY/+bTQYK56e7chsDHxXhaETAfhKkP9SJV4vCnFsaDJIcyPiM7B2EKfyamgGcb
	VVyd9OypopdWqwU78bJvpwOnApOF6e+hUImo6NNct1Nbz+tQIH6S5m0VyT+69riGy7anIz9daWgsS
	Bo+uu0UarOWewesal59ElM8W37h2H6jLwd18tGDHx7dEa9ZPtfJZ+UNCakX8LejrlJkKPrzyt6L8A
	GogseArg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJpxr-0000000AIBS-3wff;
	Tue, 27 May 2025 08:47:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJppy-0000000AGuc-3Eon
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 08:39:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJppx-0005cz-Ki; Tue, 27 May 2025 10:39:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJppx-000OAL-1S;
	Tue, 27 May 2025 10:39:05 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJppx-00CSf2-19;
	Tue, 27 May 2025 10:39:05 +0200
Date: Tue, 27 May 2025 10:39:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDV6KY64BtlsTW9_@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-7-5004995cbd03@pengutronix.de>
 <20250526163328.66vokf3qcnsrtsjz@pengutronix.de>
 <aDVaw74bwPRNohgV@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aDVaw74bwPRNohgV@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_013906_807699_51F844C8 
X-CRM114-Status: GOOD (  19.31  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] ARM: rockchip: dmc: add rk3588_ram_sizes to get full
 ram size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 27 May 2025 08:25:07 +0200, Sascha Hauer wrote:
> On Mon, May 26, 2025 at 06:33:28PM +0200, Marco Felsch wrote:
> > On 25-05-26, Michael Tretter wrote:
> > > The PBL has to pass a full description of the SDRAM to OP-TEE to allow
> > > OP-TEE to handle dynamic shared memory in the entire SDRAM. Thus, the
> > > PBL needs to read the full memory configuration.
> > > 
> > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > ---
> > >  arch/arm/mach-rockchip/dmc.c | 37 ++++++++++++++++++++++++++++++++++---
> > >  include/mach/rockchip/dmc.h  |  2 ++
> > >  2 files changed, 36 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
> > > index 62a7ef8f1e38e989e84f08f6f4a6586be3e85532..260b8be9c7da9e8f83323822eab92a439ef4e2ef 100644
> > > --- a/arch/arm/mach-rockchip/dmc.c
> > > +++ b/arch/arm/mach-rockchip/dmc.c
> > > @@ -171,11 +171,12 @@ resource_size_t rk3568_ram0_size(void)
> > >  #define RK3588_PMUGRF_OS_REG4           0x210
> > >  #define RK3588_PMUGRF_OS_REG5           0x214
> > >  
> > > -resource_size_t rk3588_ram0_size(void)
> > > +size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
> > 
> > Nit: could be void since you don't check the return value.
> 
> The return value is used in a later patch. There the array size is
> passed in 'n' and the actually used array entries are returned from
> rk3588_ram_sizes().

I could add some error handling in rk3588_ram0_size(), but it's
pointless, since the caller of that function doesn't handle errors, too.

Michael


