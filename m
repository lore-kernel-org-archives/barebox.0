Delivery-date: Mon, 16 Jun 2025 17:27:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBkM-007xlL-17
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 17:27:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBkL-0008Ge-NO
	for lore@pengutronix.de; Mon, 16 Jun 2025 17:27:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I9FiIy0tY8fHNAUJBDqcSKTq6gpYqYrNTfMSWM68P1o=; b=ya+KqCzqZHKvLrrQCqAmcMC8Kb
	i/ebBvvzK74ou7pth88SmH7DLfWiFccdFHBl/lAKZN+G8m0U3lK+nbBNj1itViik5frd7tCyW4lBU
	YsNkwMi+1iatGSL0uYLy1ITC43BTjGaiTIENf7+qobGgDFFd9mwwm3KKgQM98/C3jc1yW5UQZpmF+
	83vYtYIEbxk4zk/0vQnlAOD8TYVdlspSUQu/0Fgfv51jpEUKaCt7LT0sTs2r2WH4iHPR6ozHZR0jL
	Ca5C5s/sxo6+VWb45oSTzJ2S/xAyNr0G70yYtCxt3rKyNr1x/UbrrB81V3ADx+4qMuHvBhPety86k
	f+KIlEwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBji-00000004qN2-410b;
	Mon, 16 Jun 2025 15:27:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9gx-00000004Vi9-18rU
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 13:16:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR9gv-0000mO-Rj; Mon, 16 Jun 2025 15:16:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR9gv-003oW1-1x;
	Mon, 16 Jun 2025 15:16:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR9gv-003bB9-1f;
	Mon, 16 Jun 2025 15:16:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jun 2025 15:16:00 +0200
Message-Id: <20250616131600.857797-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_061603_307678_A0050A16 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: migration-2025.08.0: add new empty file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

New features added now will likely first appear in v2025.08.0.
Add an empty file to hold any future migration notes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/index.rst               | 1 +
 Documentation/migration-guides/migration-2025.08.0.rst | 3 +++
 2 files changed, 4 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2025.08.0.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 2eb8af84afa2..2dfa7f05bb40 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -13,3 +13,4 @@ cause build errors are generally out-of-scope for these documents.
    migration-2025.05.0
    migration-2025.06.0
    migration-2025.07.0
+   migration-2025.08.0
diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
new file mode 100644
index 000000000000..d13d5c770d5e
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.08.0.rst
@@ -0,0 +1,3 @@
+Release v2025.08.0
+==================
+
-- 
2.39.5



