Delivery-date: Fri, 17 Apr 2026 10:53:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDewo-00D83Q-04
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:53:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDewn-0006y1-EN
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:53:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JDx+UDsE7dilufK6Z+WISSdPfp6y4rs4SiBERbKOAsc=; b=nvgbZNU9V3HRbByMbbizaI7Pf4
	h82egZIoLJ7lOoQMXFJz4s6geYro13sgA86t57PoO4ISrzU4WSm8acrmMHox+CqZw0ahf7t5sbtac
	Mrw/He3eqF7uzYTNpcKoKuAn8CP4NDhApCtJxBRS0ZV0/1oT3gOfx3At1Q3tUm9/WhzDrsoelIZvH
	tA29C6tGnWKlLQVRraQxuWriPTBP1UWWz5X6n0jbbw9nh53CHemC9JZjhZ63LmM59SIzJ/OJo/s05
	qA4TplQ0erEOWCpo2REZiMXWMal9WfrulBvVDJqMvw6nX+H9ER6oN91D8mHpfeBX1aAKdyhgLLU44
	18oEoCfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewR-00000003iRQ-49NR;
	Fri, 17 Apr 2026 08:52:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewM-00000003iPK-27ZF
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0006gS-F7; Fri, 17 Apr 2026 10:52:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-005ot8-0u;
	Fri, 17 Apr 2026 10:52:39 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0000000FU1r-0gBI;
	Fri, 17 Apr 2026 10:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Apr 2026 10:52:24 +0200
Message-ID: <20260417085235.3689546-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_015242_541540_2BCA9811 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/4] Documentation: migration-guide: fix TQMA8MPxL section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This was erroneously a .md file, but we expect .rst files.
Rename the file and reformat the entry a bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-master.md  | 10 ----------
 Documentation/migration-guides/migration-master.rst | 11 +++++++++++
 2 files changed, 11 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/migration-guides/migration-master.md

diff --git a/Documentation/migration-guides/migration-master.md b/Documentation/migration-guides/migration-master.md
deleted file mode 100644
index 0cf45d071377..000000000000
--- a/Documentation/migration-guides/migration-master.md
+++ /dev/null
@@ -1,10 +0,0 @@
-:orphan:
-
-Boards
-------
-
-TQMA8MPxL
-^^^^^^^^^
-
-The config option has been renamed from MACH_TQ_MBA8MPXL to MACH_TQ_MBA8MPXX to
-accommodate the support for TQMA8MPxS boards with the same binary.
diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 026dbe85889c..32813ed7da2b 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,2 +1,13 @@
 :orphan:
 
+Boards
+------
+
+TQMA8MPxL
+^^^^^^^^^
+
+The config option has been renamed from ``CONFIG_MACH_TQ_MBA8MPXL`` to
+``CONFIG_MACH_TQ_MBA8MPXX`` to accommodate the support for TQMA8MPxS
+boards with the same binary.
+The binary has been renamed from ``barebox-tqma8mpxl.img``
+to ``barebox-tqma8mpxx.img``.
-- 
2.47.3



