Delivery-date: Fri, 13 Jun 2025 17:21:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dz-006wD7-1R
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 17:21:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dy-0007kG-U1
	for lore@pengutronix.de; Fri, 13 Jun 2025 17:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2yzJuuci9g63G6eg12C462BrYymtOntV7AETZL8+52M=; b=47n5S8dJEKsZbKmAN4YPtslyc7
	50aO7jc7Ve9yUii/OaBTuRn5uYcXQ6jYZ0tXXz5VuOAx+xx887CyDcuZfgg7lzzmK0PVB8NGccguz
	/HMDWeFHSNGfvNkwfBHpGTNqHqN34V9Sei5tiE+yDgTof/6Kws981kulNR0nX6H1doBoJCn8TgtAd
	HBPwXFKRkjikCXZGiaP+AVEjcIX70NmNrzW+z5qDP0kyzqKi5L13oETwmg5ZlTjhso2j/4TNFv+6s
	ZNcdnOOKrxQ2aFy3GpCzq448jOh+uyHmLDY+qmReai5aNbSJuLEid8EuMMeCuQNVMJ4uPDUvwIux2
	fdlQ1Uhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6DM-0000000Gqw4-0YFR;
	Fri, 13 Jun 2025 15:21:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ54m-0000000GcyL-3MDs
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 14:08:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54k-00075g-6m; Fri, 13 Jun 2025 16:08:10 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54k-003IuS-05;
	Fri, 13 Jun 2025 16:08:10 +0200
Received: from lsc by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54j-005AG9-36;
	Fri, 13 Jun 2025 16:08:09 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Fri, 13 Jun 2025 16:08:01 +0200
Message-Id: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_070812_835800_C399EEFA 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Add boot slot locking to bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch series adds an option to lock slots to bootchooser.
When slots are locked, the remaining_attempts counter will not
get counted down. It is optional, so when not set, it does not 
have any effect on the counter. The choice of which slot to boot
is also not affected.

Lars Schmidt (4):
  bootchooser: implement locking of boot slots
  bootchooser: extend cmd tool by option to set slot locking
  Documentation: bootchooser: add information about slots_locked
  Documentation: migration-2025.07.0: add information about slots_locked

 Documentation/migration-guides/index.rst      |  1 +
 .../migration-guides/migration-2025.07.0.rst  |  8 +++
 Documentation/user/bootchooser.rst            | 26 +++++++++
 commands/bootchooser.c                        | 16 +++++-
 common/bootchooser.c                          | 55 +++++++++++++++++--
 include/bootchooser.h                         |  1 +
 6 files changed, 101 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-2025.07.0.rst

-- 
2.39.5



