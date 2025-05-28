Delivery-date: Wed, 28 May 2025 10:28:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKC9D-0017xw-3C
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 10:28:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKC9D-0004FG-BA
	for lore@pengutronix.de; Wed, 28 May 2025 10:28:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ADfWnF7ZFNvgmCPcWDN9ihBBs0xHZjsXT6Wonim8wVQ=; b=WF5YI1fKuviXsJjlRLx5gC3JWu
	ptwOJ2wYzGmJqs5bDXzh1ivlaouSkDCBBghh7bDru1WJ47XerGPFBZ8KqjNdmwlrC56+UXoiXlVZq
	q+hiAuXc3TvrT0G/YDVUUsq3Skq6juAKkO2lBB2Hr9jhJ9SYTUjbh6GLiOAIBI+sxfmvln9Wd1LK4
	tN6oSl9Eygc6ZJz+MB3KfAejx7KVNU9qbHyGnJ/3NmZ5ogOgTt8WLqjhnouEt4/YC6Aj7b1ny8Yda
	KnhKbBeFZSi3IVri0LEEsUcOoNnCb+PtaBWoHFwytc261YiH+FI/cZcdw9+7KtxXs828KzkKKJ86Z
	dGDUcR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKC8U-0000000CaAc-38lz;
	Wed, 28 May 2025 08:27:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKC4y-0000000CZUH-2URu
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 08:24:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uKC4w-0001pG-00; Wed, 28 May 2025 10:24:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uKC4v-000YUU-2d;
	Wed, 28 May 2025 10:24:01 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uKC4v-00EQuz-2D;
	Wed, 28 May 2025 10:24:01 +0200
Date: Wed, 28 May 2025 10:24:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDbIIWOQC4GzrUjR@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-5-5004995cbd03@pengutronix.de>
 <aDVejGiDNs1OXP0N@pengutronix.de>
 <aDV8Qmhm4NFc1QHb@pengutronix.de>
 <aDYITmRiE4yL7y90@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aDYITmRiE4yL7y90@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_012404_632821_6DCD43A4 
X-CRM114-Status: GOOD (  32.36  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] PBL: fdt: make minimum fdt size configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 27 May 2025 20:45:34 +0200, Sascha Hauer wrote:
> On Tue, May 27, 2025 at 10:48:02AM +0200, Michael Tretter wrote:
> > On Tue, 27 May 2025 08:41:16 +0200, Sascha Hauer wrote:
> > > On Mon, May 26, 2025 at 04:38:11PM +0200, Michael Tretter wrote:
> > > > Adding or modifying nodes in the fdt may change the size of the fdt.
> > > > This needs some reserved space in the fdt to avoid overriding memory
> > > > that comes after the fdt and is already used.
> > > > 
> > > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > > ---
> > > >  pbl/Kconfig          | 11 +++++++++++
> > > >  scripts/Makefile.lib |  2 ++
> > > >  2 files changed, 13 insertions(+)
> > > > 
> > > > diff --git a/pbl/Kconfig b/pbl/Kconfig
> > > > index 6e3581829d589c7b06ed878b09bf74e16a0c3086..489b2001a855d62e11a2159311332b0e67f3a754 100644
> > > > --- a/pbl/Kconfig
> > > > +++ b/pbl/Kconfig
> > > > @@ -60,6 +60,17 @@ config PBL_VERIFY_PIGGY
> > > >  config PBL_CLOCKSOURCE
> > > >  	bool
> > > >  
> > > > +config PBL_FDT_MIN_SIZE
> > > > +	hex
> > > > +	default 0x0
> > > > +	prompt "Minimum size of the FDT blob"
> > > > +	help
> > > > +	  The TF-A or OP-TEE may modify the FDT or add nodes to the FDT. This
> > > > +	  may increases the size of the device tree. This may override the
> > > > +	  barebox binary.
> > > > +
> > > > +	  The minimum size should be at least CFG_DTB_MAX_SIZE for OP-TEE.
> > > > +
> > > >  config BOARD_GENERIC_DT
> > > >  	bool
> > > >  	select LIBFDT
> > > > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > > > index b10119797686ea31fe927d29a7849ad525c8c835..f50006f57200a76a86c7e29175dd7e35ab138e26 100644
> > > > --- a/scripts/Makefile.lib
> > > > +++ b/scripts/Makefile.lib
> > > > @@ -396,6 +396,8 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
> > > >  DTC_FLAGS.dtb += -@
> > > >  endif
> > > >  
> > > > +DTC_FLAGS.dtb += --space $(CONFIG_PBL_FDT_MIN_SIZE)
> > > 
> > > --space sets the minimum fdt size. The fdt size will vary over time and
> > > different boards. Isn't --pad more suitable for what you want to
> > > archieve?
> > 
> > --pad would be more appropriate if it is used to reserve extra space for
> > the memory nodes added by barebox.
> > 
> > However, OP-TEE also adds properties and nodes to the passed fdt. During
> > initialization it does a fdt_open_into() with size CFG_DTB_MAX_SIZE on
> > the blob. This allows OP-TEE to write up to CFG_DTB_MAX_SIZE into the
> > blob.
> > 
> > Using --space with the same value as CFG_DTB_MAX_SIZE ensures that
> > barebox reserves enough space that a properly configured OP-TEE is not
> > able to accidentally override anything else by modifying the device
> > tree.
> 
> Makes sense. What's not so nice is that this --space option inflates all
> dtbs from all boards of the current config.
> 
> Would fdt_resize() be an option?

fdt_resize() still needs some space for resizing the fdt.

I don't like the reserved space in the binary at all, because it also
increases the size of the binary images.

In v2, I will reserve some extra space in the scratch area (and make its
size configurable), copy the fdt to the scratch area and modify it there
(or create a small new fdt).

This would also solve the issue that the fdt is in a rodata section and
may be compressed. Furthermore, this area could be passed to barebox
proper via handoff data and barebox could apply the dt modifications by
OPTEE to its own device tree.

The drawback of this solution is that the barebox PBL has to copy the
fdt while the mmu is off.

Michael


