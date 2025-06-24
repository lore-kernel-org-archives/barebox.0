Delivery-date: Tue, 24 Jun 2025 22:09:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9xE-00AhjQ-0p
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 22:09:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9xD-0006Z9-M0
	for lore@pengutronix.de; Tue, 24 Jun 2025 22:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GBVSiTmwCtJvbPKNgRzu/kMT4f99bTriR8e8i9QjQNw=; b=VQ5dtHTwkQrv0g3CXgogDMORtB
	p0k51nT0Wr5nrftmNcJvBFe946KcRmFLW6bG0LrvKQgTOZbiVIcHOF1VohQvkJFHo4ssxClp5M2Hc
	8aAoZ7fxVCuYHJ2xkP67zKTcE+h+G6pmvNzujdpST27ZyJ1+k92wRHZy0q0cybkxmRQ5lXt19eSYH
	0sMh+V5kEtucuB+P0fI90KWl8hOJ29nNdyrukhHjpe/dZ+GKLThbWw/b5lPhsDBOjX/EXjW6KH0qk
	XlQ2YfjY9SdZ8SOt1gDOx9iPRRPsOGUidHzy97gLQ2TdcI7v1sZDQ1FbXcseG6H2AYxp4+Jr12GqA
	T8mIWEpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU9wl-00000006jXH-3P1y;
	Tue, 24 Jun 2025 20:08:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU8Um-00000006WLe-0cLs
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 18:35:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8Uk-0002wQ-5n; Tue, 24 Jun 2025 20:35:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8Uj-0059qQ-3A;
	Tue, 24 Jun 2025 20:35:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8Uj-00BSHG-2r;
	Tue, 24 Jun 2025 20:35:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Jun 2025 20:35:45 +0200
Message-Id: <20250624183545.2730294-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_113548_189696_255E667B 
X-CRM114-Status: UNSURE (   9.18  )
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
Subject: [PATCH] ARM: vexpress: increase barebox partition size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 3630fa400be5 ("ARM: remove vexpress_defconfig") made
multi_v7_defconfig the go-to defconfig for vexpress.

The multi defconfig enables a lot of drivers and functionality though
increasing the image size from 300K to 1.2M, which causes barebox to
extend beyond the previously configured 512K barebox partition.

Fix this by giving each of barebox and its environment 2M of space,
which should be enough for many years to come.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.08.0.rst |  6 ++++++
 arch/arm/dts/vexpress-v2p-ca15.dts                     |  6 +++---
 arch/arm/dts/vexpress-v2p-ca9.dts                      | 10 +++++-----
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
index da60132e7d8c..fd9b74804f63 100644
--- a/Documentation/migration-guides/migration-2025.08.0.rst
+++ b/Documentation/migration-guides/migration-2025.08.0.rst
@@ -6,3 +6,9 @@ Bootchooser
 
 Bootchooser now interprets a top-level ``attempts_locked`` variable.
 For more information, see :ref:`attempts lock feature <bootchooser,attempts_lock>`
+
+Board support
+-------------
+
+The hardcoded Vexpress partition layout for barebox, its environment and state
+have been changed.
diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index 4c86f4acd80c..33abf1cf80b1 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -21,12 +21,12 @@ partitions {
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x80000>;
+			reg = <0x0 0x200000>;
 		};
 
-		barebox_env: partition@80000 {
+		barebox_env: partition@200000 {
 			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			reg = <0x200000 0x200000>;
 		};
 	};
 };
diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index 51ae830a95fb..742e0ab17a36 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -79,17 +79,17 @@ partitions {
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x80000>;
+			reg = <0x0 0x200000>;
 		};
 
-		barebox_env: partition@80000 {
+		barebox_env: partition@200000 {
 			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			reg = <0x200000 0x200000>;
 		};
 
-		state_storage: partition@100000 {
+		state_storage: partition@400000 {
 			label = "barebox-state";
-			reg = <0x100000 0x100000>;
+			reg = <0x400000 0x100000>;
 		};
 	};
 };
-- 
2.39.5



