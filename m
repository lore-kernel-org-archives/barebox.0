Delivery-date: Wed, 12 Mar 2025 13:50:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLXv-00D7wh-2g
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 13:50:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLXu-0007Zv-Kf
	for lore@pengutronix.de; Wed, 12 Mar 2025 13:50:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/AofrCNho61AbnC9bootbWJuJ8VYijeQwADLJKhhfVU=; b=DMk9MZs35DfPkKOmEvnNSVD+AS
	1zOJ/lcm7/bh1YFJl10okyo+13LXE8fVsFZxbsNqyGOE6LC6jmsm6Hhxubl0JRob4gpxuyX2NVzYX
	O7QV2tGX/ubqEaQrOiwFc+7HZnRpFhfD0znPO6ImSFEVKhwxDTgvTMvd+4b1CT5e+hUUjp9/zBWge
	bulQOtRLqEo17+pW39EGv/bPk6IuGCMSJUx+8KAiOggCZaRoGto/eFxRK91D1wwjGP3IOFzIlkL/X
	juMxsClUUacdat1ZMu/tE+wge9t4PdUp53M239ULJ9QKuMX6y4Hxvak7oHhVQgsf2IVFqaDFU5Ddp
	N06SaJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLXK-00000008SiT-11R8;
	Wed, 12 Mar 2025 12:50:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKWQ-00000008Iyl-3LRD
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 11:45:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tsKWM-0000Za-Q7; Wed, 12 Mar 2025 12:45:10 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tsKWM-005LpS-1z;
	Wed, 12 Mar 2025 12:45:10 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tsKWM-009WSV-1d;
	Wed, 12 Mar 2025 12:45:10 +0100
Date: Wed, 12 Mar 2025 12:45:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250312114510.itqbgxwxd66ynumy@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
 <20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de>
 <20250311134207.x4o2ccin3jx6pdpj@pengutronix.de>
 <Z9FpzJGBShGoi0Ji@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z9FpzJGBShGoi0Ji@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_044514_832704_1DA119D7 
X-CRM114-Status: GOOD (  17.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/14] fip: rework fip_image_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-12, Sascha Hauer wrote:
> On Tue, Mar 11, 2025 at 02:42:07PM +0100, Marco Felsch wrote:
> > >  struct fip_state *fip_image_open(const char *filename, size_t offset)
> > >  {
> > > @@ -470,11 +466,13 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
> > >  	int ret;
> > >  	int fd;
> > >  	struct fip_state *fip_state;
> > > -	LIST_HEAD(entries);
> > >  	size_t fip_headers_size, total = 0;
> > > -	struct fip_image_desc *desc;
> > >  	off_t pos;
> > >  	int n_entries = 0;
> > > +	struct fip_toc_entry toc_entries[16];
> > 				 	 ^
> > Why did you used 16?
> 
> Okay okay, I allocated the entries dynamically now to support an
> arbitrary number of toc entries.

Nice, thanks :)

> 
> Sascha
> 
> -------------------------------8<------------------------------
> 
> From 87bc7468e698e3404345ee601885ec186de7f4fa Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 11 Mar 2025 13:25:18 +0100
> Subject: [PATCH] fip: rework fip_image_open()
> 
> fip_image_open() used to do all the parsing into a struct fip_state
> itself. Instead, only load the FIP image into a buffer and call
> fip_do_parse_buf() with this buffer. This has the advantage that we
> have all parsing of the FIP image in a single place. Also this helps
> with a followup patch which calculates a sha256 over a FIP image
> which can easily done when we have the whole FIP image in a contiguous
> buffer.
> 
> Link: https://lore.kernel.org/r/20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

if not already to late.


