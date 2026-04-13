Delivery-date: Mon, 13 Apr 2026 15:45:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHb7-00BjbR-1h
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 15:45:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHb6-0001Qa-TY
	for lore@pengutronix.de; Mon, 13 Apr 2026 15:45:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imVphnM+ailje7yUpHkohsJAibYwUIhTsBRpjWHwchw=; b=ig1OJfkglrGS+A9YvVjbEOeiOG
	F9zMtRlJfuEXqRVfr9w9f7W4PLBtwHwY6pFBO3TimoqDRVML4V4Vd3MgbZm2KDMdA9rakrpr5h+en
	UXWV3xNILJsNxSa8u3fGBp80OJVzG/dszmPFw7eqVy8JdFBLiwBaquSkxy7ZFxnrNorSxqwk4zg3b
	iKvqBSen3WH7S2NXHVnKND1fZ7IK2GG1/ap8XCuiBIaB7Mg0lx+skGEuxz2Zqa/Sb9M0mq2sReOze
	6H7UvrIOFjasHp4WNwNMOagYOaGSVXB0GTciPkhDmMUIJHyVTCSxRXrak3ErrL0lKooYdGxJ/kf+z
	2r/+0yRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHaZ-0000000FliO-07qk;
	Mon, 13 Apr 2026 13:44:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHaV-0000000Flhg-18in
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 13:44:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-0001Hi-Hc; Mon, 13 Apr 2026 15:44:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-005BIU-18;
	Mon, 13 Apr 2026 15:44:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-0000000Ex10-159J;
	Mon, 13 Apr 2026 15:44:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 15:43:53 +0200
Message-ID: <20260413134422.3562639-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
References: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_064427_331714_165B95E7 
X-CRM114-Status: GOOD (  12.99  )
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
Subject: [PATCH v2 2/2] sandbox: add a match.of_compatible directory to exercise the feature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The match.of_compatible feature is mostly meant to be used with
environments originating outside barebox.

Nevertheless, switch over sandbox to use it so it gets some coverage.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 arch/sandbox/board/defaultenv-sandbox/data/last-match           | 1 +
 .../match.of_compatible/barebox,not-sandbox/data/last-match     | 1 +
 .../match.of_compatible/barebox,not-sandbox/nv/autoboot         | 1 +
 .../match.of_compatible/barebox,sandbox/data/last-match         | 1 +
 .../match.of_compatible/barebox,sandbox/nv/autoboot             | 1 +
 arch/sandbox/board/defaultenv-sandbox/nv/autoboot               | 2 +-
 6 files changed, 6 insertions(+), 1 deletion(-)
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot

diff --git a/arch/sandbox/board/defaultenv-sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/data/last-match
new file mode 100644
index 000000000000..df967b96a579
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/data/last-match
@@ -0,0 +1 @@
+base
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
new file mode 100644
index 000000000000..b175a503912d
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
@@ -0,0 +1 @@
+barebox,not-sandbox
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
new file mode 100644
index 000000000000..36ef4c374d25
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
@@ -0,0 +1 @@
+boot
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
new file mode 100644
index 000000000000..80fdf1459eee
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
@@ -0,0 +1 @@
+barebox,sandbox
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot
new file mode 100644
index 000000000000..f7d13fd04662
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot
@@ -0,0 +1 @@
+abort
diff --git a/arch/sandbox/board/defaultenv-sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
index f7d13fd04662..36ef4c374d25 100644
--- a/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
+++ b/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
@@ -1 +1 @@
-abort
+boot
-- 
2.47.3



