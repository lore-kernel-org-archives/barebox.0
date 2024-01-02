Delivery-date: Tue, 02 Jan 2024 12:02:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXb-000Unj-0l
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:02:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXa-0002la-1H
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:02:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NIfplWVTvBA2x05VhD5rEt8SFTNyFLYAnmWUJeQEtWY=; b=2nYGOqBuTpG69L17Wrtt86qiE7
	AWdbKMP/6W2FJgjMG9aJ07rG/aXP4+gy7pJmGZl0HLpiVjDSY6o5Wc9c43v68HnBpPWvDbNbe1Spo
	kGVL8MysvtbXirdGjxuRm4wfLiJfqTsC0FSHmF+eqRnqtz7yRIaZwj5CagSY1K+ZLROWX9M1+pwRt
	zHW6sUZJI4MHN5Vb2bUPScF47R5Gi9IsAgS15k9xXraPGDFztIBKFQLCZRWSHrNh1c0F8BDmr4Bwi
	meqS+YktF2FCzw8Vi/n4i9rNsIGakovg/RAmn/j4Q+YsVqJPKBJ8xCDuieC3SomsM8I3wsLrxUCwj
	j7XQM1sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWZ-007f6G-2o;
	Tue, 02 Jan 2024 11:01:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWV-007f4J-2X
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:01:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rKcWU-0002Cz-F2
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:01:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Jan 2024 12:01:15 +0100
Message-Id: <20240102110118.280032-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030127_852282_FDF0040B 
X-CRM114-Status: UNSURE (   7.74  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] ARM: boards: i.MX8M: add HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The gencsf header is required to build HAB (secure-boot) compatible
images. This commit add the support for this for all i.MX8M boards.

To finally build HAB compatible images the CONFIG_HABV4 and
CONFIG_HABV4_IMAGE_SIGNED must be enabled.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg | 2 ++
 .../flash-header-imx8mm-phyboard-polis-rdk.imxcfg               | 2 ++
 .../boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg | 2 ++
 arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 2 ++
 arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg       | 2 ++
 arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg     | 2 ++
 arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg         | 2 ++
 .../flash-header-imx8mp-dart.imxcfg                             | 2 ++
 .../boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg    | 2 ++
 9 files changed, 18 insertions(+)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg b/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
index 10606ce29c96..8aff991618ec 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
@@ -5,3 +5,5 @@ soc imx8mm
 loadaddr 0x007e1000
 max_load_size 0x3f000
 ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg b/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
index 10606ce29c96..8aff991618ec 100644
--- a/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
+++ b/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
@@ -5,3 +5,5 @@ soc imx8mm
 loadaddr 0x007e1000
 max_load_size 0x3f000
 ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
index 93cf14f26ba5..f82759f8499a 100644
--- a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
+++ b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
@@ -5,3 +5,5 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
index 663bd102e9a2..6ea2e6c68ed7 100644
--- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
+++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
@@ -5,3 +5,5 @@ soc imx8mp
 loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
index 10606ce29c96..8aff991618ec 100644
--- a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
+++ b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
@@ -5,3 +5,5 @@ soc imx8mm
 loadaddr 0x007e1000
 max_load_size 0x3f000
 ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg b/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
index 663bd102e9a2..6ea2e6c68ed7 100644
--- a/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
+++ b/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
@@ -5,3 +5,5 @@ soc imx8mp
 loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg b/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
index 663bd102e9a2..6ea2e6c68ed7 100644
--- a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
+++ b/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
@@ -5,3 +5,5 @@ soc imx8mp
 loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
index 2b104edfb741..c3149a197f7d 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
@@ -5,3 +5,5 @@ soc imx8mp
 loadaddr 0x918000
 max_load_size 0x3f000
 ivtofs 0x0
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
index 93cf14f26ba5..f82759f8499a 100644
--- a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
+++ b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
@@ -5,3 +5,5 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
+
+#include <mach/imx/habv4-imx8-gencsf.h>
-- 
2.39.2



