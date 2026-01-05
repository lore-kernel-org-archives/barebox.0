Delivery-date: Mon, 05 Jan 2026 16:43:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmkR-001ZIn-0f
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 16:43:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmkQ-0005yr-M4
	for lore@pengutronix.de; Mon, 05 Jan 2026 16:43:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gAkW3CrBc75MBpfu65hRQFxRTKvHrwdSzOpGwggRP+A=; b=SmN8y+xyL5MVji5HyE/52V21xc
	5la007WdZ1xUhDYy6670smrL2EnKcRWAOK1o3WHYo9uhJHACWYFXIiO+pCSPuqs3ohSkZUHVXf/IO
	BDIA+rPYwERifz4mI82qj/6rY8sMuo+QTfD1NZjVS/2syT8iatzN7PTBctuYhFumpWnM1Sm9prmfw
	IVNLAZoyN/HttqCndKs/+nB+wOBwbilkcApvBu3GEL7rl2aIKPSc+ZyY5QIqOIJldJZ+/Zbl5sK7b
	loigheoH6gEHPoVES1g/Ow+B5JwR3OCtu5fVDu2dQ2PnM2dfqgZyy7s7u8cWLjksspiaVuqUk5Ght
	ifXEESEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmjo-0000000Bcws-3u1S;
	Mon, 05 Jan 2026 15:43:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmjm-0000000BcwS-2MHg
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 15:43:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vcmjk-0005pP-Q1; Mon, 05 Jan 2026 16:43:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcmjk-009CLH-1u;
	Mon, 05 Jan 2026 16:43:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcmjk-00CUt5-1d;
	Mon, 05 Jan 2026 16:43:16 +0100
Date: Mon, 5 Jan 2026 16:43:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVvcFFLvuiXzR9lc@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-8-e97853f98232@pengutronix.de>
 <b86f471c-0813-49d8-a46b-6df823cd6d67@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b86f471c-0813-49d8-a46b-6df823cd6d67@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_074318_600658_0C5EBF12 
X-CRM114-Status: GOOD (  15.72  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/19] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 01:22:40PM +0100, Ahmad Fatoum wrote:
> >  .SECONDEXPANSION:
> >  $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
> > @@ -1091,6 +1094,17 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
> >  barebox.srec: barebox
> >  	$(OBJCOPY) -O srec $< $@
> >  
> > +OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
> 
> --strip-section-headers goes the farthest I think.

The objcopy from the toolchain I used (binutils-2.40) doesn't support
this option. A newer one I just upgraded to indeed does.

Sascha

> OBJCOPYFLAGS_$@ = $your_options.
> 
> 
> Sidenote: We should add --error-rwx-segments depending on
> CONFIG_PBL_IMAGE_ELF.

Is this a objcopy option? My objcopy doesn't seem to support this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


