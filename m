Delivery-date: Thu, 27 Feb 2025 10:53:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnaZx-007aJY-0V
	for lore@lore.pengutronix.de;
	Thu, 27 Feb 2025 10:53:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnaZv-0000Kf-TA
	for lore@pengutronix.de; Thu, 27 Feb 2025 10:53:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3+EC4siDhUA6zHmuDSiq00ltvpS5UY6lBkyNcQSaZs=; b=Y+IkAe+DMuFY7ZsBSzLSsMTaJw
	2lmulWpxpMIKAqMlgOl2ysPi7ZnotpnRkUQqJn45v/dq6nTTmFVxbYmq6OeZwYrBfWZLDZLMqC9VR
	ItQ4X4/p67F5kf0WYWnrmOh2Xxncm5yjuHns4EeHiQnYqsSaVUxkPrikX6KZZ0RckI1CGkkGevAGp
	eGNpq86wZbo+Iy+MFm7ob+6f6XnsHXaeytPCXmHrd/hBDSeNJomtI+xBn7137HKsrdHJPMiWzYeec
	1qHGzh4S/Hz5gwMaNosagIZzu1I5nSmOskx5wCEKkpSlX5j1QGiub+BRjHv9YiY359qCDX46hQ6sg
	A0lFOCkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnaZH-00000006uyN-2qID;
	Thu, 27 Feb 2025 09:52:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnaJX-00000006slp-1rih
	for barebox@lists.infradead.org;
	Thu, 27 Feb 2025 09:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tnaJU-0006LL-30; Thu, 27 Feb 2025 10:36:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tnaJT-0036MM-2t;
	Thu, 27 Feb 2025 10:36:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tnaJT-003Mee-2Y;
	Thu, 27 Feb 2025 10:36:15 +0100
Date: Thu, 27 Feb 2025 10:36:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Bar Or <jonathanbaror@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z8AyD_cHzW_Wxcqz@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <174012323334.2354255.16758545638294107895.b4-ty@pengutronix.de>
 <CABMsoEGDcxSCSfdnV0B1dKvvJaQYBYhpAu2R_t31j5g_Q8fVBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CABMsoEGDcxSCSfdnV0B1dKvvJaQYBYhpAu2R_t31j5g_Q8fVBg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_013619_480296_A8623BD1 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Feb 22, 2025 at 12:46:18PM -0800, Jonathan Bar Or wrote:
> Those are awesome, thank you.
> We intend to publicly disclose March 19th, is that okay?

Well, this is a public list, so they are already disclosed...

Sascha

> 
> Jonathan
> 
> On Thu, Feb 20, 2025 at 11:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> >
> > On Wed, 19 Feb 2025 15:18:39 +0100, Sascha Hauer wrote:
> > > These are some fixes for memory corruptions that can occur on corrupted
> > > or manipulated filesystems.
> > >
> > > In case you use one of the affected filesystems in a secure boot chain
> > > you should apply these patches.
> > >
> > > Normally you shouldn't use a barebox filesystem in a secure boot chain,
> > > but instead use FIT images on a raw partition. We never made this explicit
> > > though. Ahmad has done this recently:
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode length
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=6281a871e2c6 (link may not be stable)
> > [2/5] CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer overflow issues
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=f86e528c8fba (link may not be stable)
> > [3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow issues
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=51eea5c16fd2 (link may not be stable)
> > [4/5] CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow issues
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=e7397340359d (link may not be stable)
> > [5/5] CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer overflow issues
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=7563f5722dfd (link may not be stable)
> >
> > Best regards,
> > --
> > Sascha Hauer <s.hauer@pengutronix.de>
> >
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


