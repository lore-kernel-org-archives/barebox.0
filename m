Delivery-date: Tue, 24 Jun 2025 22:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9xD-00Ahj1-0g
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 22:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9xC-0006O2-KG
	for lore@pengutronix.de; Tue, 24 Jun 2025 22:09:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gDUicaHE8Yx933xWjgP6tXCEFm/a/7PtjdNivN7M6cs=; b=2VgRFzYYGFrAC1IDmeYOsuS0jn
	eidNdZx5rYWN8VPwhqEZI6CaXEFy7VFdyfFK3X9FIHq0YlI3J++Zdqr/m64o8pHuHCg4PWSAWyp+l
	7OEh6LpDnFqpYOT6bSSuvYMl+UHaV9k+GeBgehbwiRIBaW2U9atiKY+OpgeOt9ExNNjUzet0oXxqx
	/xdmnXDPrdQdZzUsfhHzCMrEXnK0Zb2COxScQuRk+42UczZ/Z9HmkdYiMfSmySNVZjTBq0I6sVIjD
	OASKYuzkbsoL7NFIBl+07D3Hm23qDv6daEzixiwLFXZecZ6WQ76O9/Queg/VGUM4YOAG6JTZhTcig
	jCwq+XTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU9wm-00000006jXP-1ST7;
	Tue, 24 Jun 2025 20:08:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU8YP-00000006Wry-2fdD
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 18:39:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8YO-0000t2-9V; Tue, 24 Jun 2025 20:39:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8YO-0059qi-0M;
	Tue, 24 Jun 2025 20:39:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU8YO-00BT4r-04;
	Tue, 24 Jun 2025 20:39:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Jun 2025 20:39:30 +0200
Message-Id: <20250624183930.2733353-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_113933_672622_825E8797 
X-CRM114-Status: GOOD (  11.28  )
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
Subject: [PATCH v2] ARM: vexpress: increase barebox partition size
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
v1 -> v2:
  - mention how much to reserve for barebox in migration guide
  - reserve state partition for CA15 as well
---
 .../migration-guides/migration-2025.08.0.rst          |  8 ++++++++
 arch/arm/dts/vexpress-v2p-ca15.dts                    | 11 ++++++++---
 arch/arm/dts/vexpress-v2p-ca9.dts                     | 10 +++++-----
 3 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
index da60132e7d8c..b40119ac672b 100644
--- a/Documentation/migration-guides/migration-2025.08.0.rst
+++ b/Documentation/migration-guides/migration-2025.08.0.rst
@@ -6,3 +6,11 @@ Bootchooser
 
 Bootchooser now interprets a top-level ``attempts_locked`` variable.
 For more information, see :ref:`attempts lock feature <bootchooser,attempts_lock>`
+
+Board support
+-------------
+
+The hardcoded Vexpress partition layout for barebox, its environment and state
+have been changed. The first 5M of the NOR flash should now be reserved for
+barebox use. barebox will, by default, fix up the new partition layout into
+the kernel device tree.
diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index 4c86f4acd80c..945d9496c231 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -21,12 +21,17 @@ partitions {
 
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
+		};
+
+		state_storage: partition@400000 {
+			label = "barebox-state";
+			reg = <0x400000 0x100000>;
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



