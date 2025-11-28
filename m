Delivery-date: Fri, 28 Nov 2025 19:49:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-005sTj-20
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 19:49:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-0000T8-00
	for lore@pengutronix.de; Fri, 28 Nov 2025 19:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xtD3HP9ir6uD1njOSvfTCvjycmtXzm9+DbOc3b35xXE=; b=0/BsRqrtMjtNEB0lm3EqkmiDbU
	1Kt2aEMLgdwd0u4UMdsFa8mmw8UE0et4xBbOWTllCGaUhMB/Vb7YCtNoD/BoqO+EwddlmA7Dr/UNl
	0bn1H7yVGF21ilk8Yekd+ZNmTDzmfCOM4YMdR2BV25ycjiu6+zdNZF7yBOtDg5d6/bInQqoz5pMZ5
	eFwUzlDjk5afvMCEAF8NFf4aYiTquJliP6EojMY8QP/g6ORC73vewH/TovD08be95iE27S4r+w79A
	2UdaJJzIo3YPZMmxEtzxHsE+ISkr042GQqzSiBbaxqJ0daRimxI4ngyi7hoGhwGZ4dDOmEVoP+HZE
	zm7UlxyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X3-00000000nAE-2OrZ;
	Fri, 28 Nov 2025 18:49:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X1-00000000n8N-03pg
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 18:49:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-0000Fr-Cp; Fri, 28 Nov 2025 19:49:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-003011-0c;
	Fri, 28 Nov 2025 19:49:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-00000000SVQ-0Nkr;
	Fri, 28 Nov 2025 19:49:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 19:49:16 +0100
Message-ID: <20251128184920.109552-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128184920.109552-1-a.fatoum@pengutronix.de>
References: <20251128184920.109552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_104923_049192_8E3033B6 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] ci: add workflow to check documentation build is warning free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With latest changes, we have a warning-free documentation build.
Add a CI check that builds the docs and translates warnings to
annotations on Github.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/sphinx-docs.yml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 .github/workflows/sphinx-docs.yml

diff --git a/.github/workflows/sphinx-docs.yml b/.github/workflows/sphinx-docs.yml
new file mode 100644
index 000000000000..6d9745d9fd5a
--- /dev/null
+++ b/.github/workflows/sphinx-docs.yml
@@ -0,0 +1,17 @@
+name: Pull Request Docs Check
+
+on: [push, pull_request]
+
+jobs:
+  docs:
+    runs-on: ubuntu-latest
+
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v4
+
+    - name: Build docs
+      uses: ammaraskar/sphinx-action@master
+      with:
+        docs-folder: "Documentation/"
+        build-command: "make htmldocs"
-- 
2.47.3



