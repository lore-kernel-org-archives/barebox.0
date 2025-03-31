Delivery-date: Mon, 31 Mar 2025 09:30:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9b8-006TbJ-2K
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:30:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9b7-0005TQ-0d
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:30:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JdTtRFITDaZcxpmPoObeFckKxgO0mMmq3N49kawHk0E=; b=V+okG4kodfwQVvQ8ompWuatzZi
	hYomFdtdnMizrgY1KWjErtVGycd6gny7XJiuE2o20rcYAU3QZ1AqcVUcloXE+mziHDvChVGnWbel5
	ALK2B0vUtmQOKulW4TmHnAfwyuhkFf2ChGM5FwWTOlh+uYMRspuUUqyZb8RDEHsArpvMsi+wOtinz
	Q/nGP3yPb1KO5i3JhagUZ2fDe9kAaI2rgGJTcnu8niVFiT3IsghrJ7pJKIW/ziSsQqUBXMM4ROpkt
	CtHpFwtP4Q7aTPe5ZMO4Adg30yIiAP28aef56rmFcM8AUsiZRwIyGz+7/ww8ouiv0pzWWd5S6nU0e
	5aEWqG5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9ag-0000000HChg-09mx;
	Mon, 31 Mar 2025 07:29:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9ac-0000000HCfw-394G
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:29:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-0005IJ-H8; Mon, 31 Mar 2025 09:29:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-002YUG-0r;
	Mon, 31 Mar 2025 09:29:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-001IdT-0d;
	Mon, 31 Mar 2025 09:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250327113753.361094-1-a.fatoum@pengutronix.de>
References: <20250327113753.361094-1-a.fatoum@pengutronix.de>
Message-Id: <174340618519.309912.5605281670349590453.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:29:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_002946_787823_81ECD2DC 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: make TLSF the default allocator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 12:37:53 +0100, Ahmad Fatoum wrote:
> Going by the most used defconfigs (multi_*_defconfig), TLSF is the most
> used allocator and it supports features absent in dlmalloc like
> multiple pools (used on ARMv7-R) and has KASAN integration, so there's
> even less reason to use dlmalloc nowadays.
> 
> In preparation for possible removal of dlmalloc in future, switch the
> default away from dlmalloc.
> 
> [...]

Applied, thanks!

[1/1] common: make TLSF the default allocator
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1552409af30 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



