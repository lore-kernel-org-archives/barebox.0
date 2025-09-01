Delivery-date: Tue, 02 Sep 2025 01:12:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhe-0074ko-1A
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 01:12:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhd-0006Mf-1J
	for lore@pengutronix.de; Tue, 02 Sep 2025 01:12:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LkNhjMD+yCH7pvKE2zrqY66yRuagBu3T44esdkLOX9A=; b=CdnHlaaKiJF1tntAhBaHgaK4jQ
	97gAOn7MxqYsV8cMB4pbpalcuGn48KdMFPY734Sus/WaKPPVrgGHWIsWh7VjnkHZoojfgzffdsVlJ
	UFWMU+P+pfhPyP59oub2/8zHQkdmL/eJwBvnmELRodZbTbdnk2yIrcPOXmzgWZYcqj2NvhsZEnp1O
	o/fuzQ1f09PlD0FCqEwxubKsIRikq2jOPaJMURXYOrezVeqJirHMCTNw4lbLeDlT0vn9gBPMtpbV1
	cykGytLgeasLCjGGZRgaIPL6dBkb3Aj2NEENR+Qu/9LeITO6i2mjtrRgmFwqr0JW7Q+kDs4JAP9iu
	mT7QAxMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDh1-0000000EDwI-2j3r;
	Mon, 01 Sep 2025 23:12:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut6cR-0000000D8iV-2R6h
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 15:38:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0006YU-Be
	for barebox@lists.infradead.org; Mon, 01 Sep 2025 17:38:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-003FNj-0U
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 17:38:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0000000AlDQ-0EDm
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 17:38:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Sep 2025 17:38:02 +0200
Message-ID: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_083855_617524_00ED7169 
X-CRM114-Status: UNSURE (   7.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ci: update to Trixie to use make --shuffle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Debian Trixie ships with GNU make v4.4.1.

v4.4 introduced a new --shuffle option that shuffles goal and prerequisite
ordering to hopefully catch issues around non-deterministic build order
in parallel makefiles.

Let's enable this option for all our defconfig builds. When a build
fails, make will also print to stderr a shuffle=<integer> line.

The integer can be passed to --shuffle locally when trying to reproduce
the breakage.

Ahmad Fatoum (3):
  ci: container: update components installed on top to newest versions
  ci: container: update to Debian Trixie
  ci: build: shuffle goal and prerequisite ordering

 .github/workflows/build-defconfigs.yml |  2 ++
 test/Containerfile                     | 21 ++++++++++-----------
 2 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.47.2



