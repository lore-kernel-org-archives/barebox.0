Delivery-date: Fri, 03 Mar 2023 10:24:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1e6-007NZk-QM
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1e4-0001FU-QJ
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1f8D1ISSim4CN9ADu5uNJENRYZSFOy1QcZmj2ygKxnA=; b=jRUTwblLbWFiM5FJ0Huy6pdvVS
	PcbN2e1DAKrqySskcoIFwTdXlwvDn70bnk7J9mN3/6riI/28G7/wjCiTAiEZoaokOz+6I784W4NVA
	stoq02HXTNcvCaTEYpfendz86UkPf2dwqa0phKbOVwVSBlxCFLHQ6rzyEAhL6b1aDOMYny5vsCcS0
	4m9SzvwQMF03RuwNk2o/R6jWwloP+s6wpGxJi5RikQa/J5rX6BEMYxzF7Rr35t/kSciI9QgL/nU0N
	6eocPT1Q3qGxOmFNXRmJOCZYpL0C9kcC8t08R7jxeYo0Jkeg2qZ0U6eP3RMTivjcTC7jaiJugpbXb
	vDAXpHHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ca-005exl-MT; Fri, 03 Mar 2023 09:22:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bf-005eLH-Qf
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-0000B0-IC; Fri, 03 Mar 2023 10:21:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-001Whj-Nf; Fri, 03 Mar 2023 10:21:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bZ-00F2cL-Uq; Fri, 03 Mar 2023 10:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:45 +0100
Message-Id: <20230303092131.3063587-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_267866_14269926 
X-CRM114-Status: GOOD (  14.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/50] ARM: mvebu: Move mach header files to include/mach/mvebu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
possible as there won't be a single mach anymore.

Move all mvebu specific header files to include/mach/mvebu/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/globalscale-guruplug/lowlevel.c             | 4 ++--
 arch/arm/boards/globalscale-mirabox/lowlevel.c              | 4 ++--
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c                  | 4 ++--
 arch/arm/boards/marvell-armada-xp-db/lowlevel.c             | 4 ++--
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c             | 4 ++--
 arch/arm/boards/netgear-rn104/lowlevel.c                    | 4 ++--
 arch/arm/boards/netgear-rn2120/lowlevel.c                   | 6 +++---
 arch/arm/boards/plathome-openblocks-a6/lowlevel.c           | 4 ++--
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c          | 4 ++--
 arch/arm/boards/solidrun-cubox/board.c                      | 2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c                   | 4 ++--
 arch/arm/boards/turris-omnia/lowlevel.c                     | 4 ++--
 arch/arm/boards/usi-topkick/lowlevel.c                      | 4 ++--
 arch/arm/include/asm/debug_ll.h                             | 2 ++
 arch/arm/mach-mvebu/armada-370-xp.c                         | 4 ++--
 arch/arm/mach-mvebu/common.c                                | 6 +++---
 arch/arm/mach-mvebu/dove.c                                  | 2 +-
 arch/arm/mach-mvebu/kirkwood.c                              | 2 +-
 arch/arm/mach-mvebu/kwb_bbu.c                               | 2 +-
 arch/arm/mach-mvebu/kwbootimage.c                           | 2 +-
 drivers/bus/mvebu-mbus.c                                    | 2 +-
 .../mach => include/mach/mvebu}/armada-370-xp-regs.h        | 2 +-
 .../include/mach => include/mach/mvebu}/barebox-arm-head.h  | 2 +-
 .../mach-mvebu/include/mach => include/mach/mvebu}/bbu.h    | 0
 .../mach-mvebu/include/mach => include/mach/mvebu}/common.h | 0
 .../include/mach => include/mach/mvebu}/debug_ll.h          | 0
 .../include/mach => include/mach/mvebu}/dove-regs.h         | 2 +-
 .../include/mach => include/mach/mvebu}/kirkwood-regs.h     | 2 +-
 .../include/mach => include/mach/mvebu}/lowlevel.h          | 0
 .../mach-mvebu/include/mach => include/mach/mvebu}/socid.h  | 0
 30 files changed, 42 insertions(+), 40 deletions(-)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/armada-370-xp-regs.h (98%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/barebox-arm-head.h (97%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/bbu.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/common.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/debug_ll.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/dove-regs.h (98%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/kirkwood-regs.h (97%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/lowlevel.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/socid.h (100%)

diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
index 35b2150960..a54d848c04 100644
--- a/arch/arm/boards/globalscale-guruplug/lowlevel.c
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_kirkwood_guruplug_server_plus_bb_start[];
 
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
index 9d03dfd418..da08e80d74 100644
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_armada_370_mirabox_bb_start[];
 
diff --git a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
index 2ca6c6b5f9..d76e4af30d 100644
--- a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
+++ b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
@@ -3,9 +3,9 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
+#include <mach/mvebu/barebox-arm-head.h>
 #include <linux/sizes.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_armada_xp_lenovo_ix4_300d_bb_start[];
 
diff --git a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
index 4850cf4c2f..14059fe8c5 100644
--- a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
@@ -7,8 +7,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 #include <io.h>
 
 extern char __dtb_armada_xp_db_bb_start[];
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
index e6242e36a7..ae5ad2822a 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_armada_xp_gp_bb_start[];
 
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index 5005129555..e693d13993 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -6,8 +6,8 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_armada_370_rn104_bb_start[];
 
diff --git a/arch/arm/boards/netgear-rn2120/lowlevel.c b/arch/arm/boards/netgear-rn2120/lowlevel.c
index f88f46c037..f923be5a27 100644
--- a/arch/arm/boards/netgear-rn2120/lowlevel.c
+++ b/arch/arm/boards/netgear-rn2120/lowlevel.c
@@ -3,10 +3,10 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
+#include <mach/mvebu/barebox-arm-head.h>
 #include <asm/io.h>
-#include <mach/lowlevel.h>
-#include <mach/common.h>
+#include <mach/mvebu/lowlevel.h>
+#include <mach/mvebu/common.h>
 
 extern char __dtb_armada_xp_rn2120_bb_start[];
 
diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
index daa482dd4f..8a58d692d8 100644
--- a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
@@ -3,8 +3,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_kirkwood_openblocks_a6_bb_start[];
 
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
index bab44590c7..35888a0b83 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_armada_xp_openblocks_ax3_4_bb_start[];
 
diff --git a/arch/arm/boards/solidrun-cubox/board.c b/arch/arm/boards/solidrun-cubox/board.c
index f3cb5c92f5..3c12c28594 100644
--- a/arch/arm/boards/solidrun-cubox/board.c
+++ b/arch/arm/boards/solidrun-cubox/board.c
@@ -3,7 +3,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/mvebu/bbu.h>
 
 static int cubox_devices_init(void)
 {
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 5bcd0751fc..8f1515e3b2 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -5,8 +5,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_dove_cubox_bb_start[];
 
diff --git a/arch/arm/boards/turris-omnia/lowlevel.c b/arch/arm/boards/turris-omnia/lowlevel.c
index 8ec2a0bf82..97d57e6ce0 100644
--- a/arch/arm/boards/turris-omnia/lowlevel.c
+++ b/arch/arm/boards/turris-omnia/lowlevel.c
@@ -3,8 +3,8 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 #include <asm/io.h>
 
diff --git a/arch/arm/boards/usi-topkick/lowlevel.c b/arch/arm/boards/usi-topkick/lowlevel.c
index 51aa29e047..d9118f5d2c 100644
--- a/arch/arm/boards/usi-topkick/lowlevel.c
+++ b/arch/arm/boards/usi-topkick/lowlevel.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <mach/barebox-arm-head.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/lowlevel.h>
 
 extern char __dtb_kirkwood_topkick_bb_start[];
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 61d66e7bc1..37c40219bc 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -12,6 +12,8 @@
 #include <mach/rockchip/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQMP
 #include <mach/zynqmp/debug_ll.h>
+#elif defined CONFIG_ARCH_MVEBU
+#include <mach/mvebu/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 0b40754231..0a0a1160fc 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -9,8 +9,8 @@
 #include <of_address.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
-#include <mach/armada-370-xp-regs.h>
-#include <mach/socid.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
+#include <mach/mvebu/socid.h>
 
 static const struct of_device_id armada_370_xp_pcie_of_ids[] = {
 	{ .compatible = "marvell,armada-xp-pcie", },
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index ed0745c62a..aea2c43849 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -8,11 +8,11 @@
 #include <of.h>
 #include <of_address.h>
 #include <linux/clk.h>
-#include <mach/common.h>
-#include <mach/socid.h>
+#include <mach/mvebu/common.h>
+#include <mach/mvebu/socid.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
-#include <mach/lowlevel.h>
+#include <mach/mvebu/lowlevel.h>
 
 /*
  * The different SoC headers containing register definitions (mach/dove-regs.h,
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index d085894d19..2dd461c5c3 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -7,7 +7,7 @@
 #include <restart.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
-#include <mach/dove-regs.h>
+#include <mach/mvebu/dove-regs.h>
 
 static void __noreturn dove_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index d311058a61..4b5d1b716b 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -7,7 +7,7 @@
 #include <restart.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
-#include <mach/kirkwood-regs.h>
+#include <mach/mvebu/kirkwood-regs.h>
 
 static void __noreturn kirkwood_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-mvebu/kwb_bbu.c b/arch/arm/mach-mvebu/kwb_bbu.c
index eb205b2799..0fde9abb57 100644
--- a/arch/arm/mach-mvebu/kwb_bbu.c
+++ b/arch/arm/mach-mvebu/kwb_bbu.c
@@ -4,7 +4,7 @@
 #include <libfile.h>
 #include <linux/printk.h>
 
-#include <mach/bbu.h>
+#include <mach/mvebu/bbu.h>
 
 struct mvebu_bbu_handler {
 	struct bbu_handler bbuh;
diff --git a/arch/arm/mach-mvebu/kwbootimage.c b/arch/arm/mach-mvebu/kwbootimage.c
index 7189faa751..2bcc42fe57 100644
--- a/arch/arm/mach-mvebu/kwbootimage.c
+++ b/arch/arm/mach-mvebu/kwbootimage.c
@@ -10,7 +10,7 @@
 #include <restart.h>
 #include <unistd.h>
 #include <asm/unaligned.h>
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 static int do_bootm_kwbimage_v0_v1(struct image_data *data)
 {
diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 46fe5dd398..5d4dbeb4df 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -60,7 +60,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <linux/mbus.h>
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 /* DDR target is the same on all platforms */
 #define TARGET_DDR		0
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/include/mach/mvebu/armada-370-xp-regs.h
similarity index 98%
rename from arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
rename to include/mach/mvebu/armada-370-xp-regs.h
index bed2239aa3..c9edb8cbf0 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/include/mach/mvebu/armada-370-xp-regs.h
@@ -4,7 +4,7 @@
 #ifndef __MACH_MVEBU_ARMADA_370_XP_REGS_H
 #define __MACH_MVEBU_ARMADA_370_XP_REGS_H
 
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 #define ARMADA_370_XP_INT_REGS_BASE	IOMEM(MVEBU_REMAP_INT_REG_BASE)
 #define ARMADA_370_XP_UART_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x12000)
diff --git a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h b/include/mach/mvebu/barebox-arm-head.h
similarity index 97%
rename from arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
rename to include/mach/mvebu/barebox-arm-head.h
index 72afd10005..76e426e3b8 100644
--- a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
+++ b/include/mach/mvebu/barebox-arm-head.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <linux/stringify.h>
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 static inline void __barebox_mvebu_head(void)
 {
diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/include/mach/mvebu/bbu.h
similarity index 100%
rename from arch/arm/mach-mvebu/include/mach/bbu.h
rename to include/mach/mvebu/bbu.h
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/include/mach/mvebu/common.h
similarity index 100%
rename from arch/arm/mach-mvebu/include/mach/common.h
rename to include/mach/mvebu/common.h
diff --git a/arch/arm/mach-mvebu/include/mach/debug_ll.h b/include/mach/mvebu/debug_ll.h
similarity index 100%
rename from arch/arm/mach-mvebu/include/mach/debug_ll.h
rename to include/mach/mvebu/debug_ll.h
diff --git a/arch/arm/mach-mvebu/include/mach/dove-regs.h b/include/mach/mvebu/dove-regs.h
similarity index 98%
rename from arch/arm/mach-mvebu/include/mach/dove-regs.h
rename to include/mach/mvebu/dove-regs.h
index a1335154be..3fbb3dd720 100644
--- a/arch/arm/mach-mvebu/include/mach/dove-regs.h
+++ b/include/mach/mvebu/dove-regs.h
@@ -4,7 +4,7 @@
 #ifndef __MACH_MVEBU_DOVE_REGS_H
 #define __MACH_MVEBU_DOVE_REGS_H
 
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 /*
  * Even after MVEBU SoC internal register base remap. Dove MC
diff --git a/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h b/include/mach/mvebu/kirkwood-regs.h
similarity index 97%
rename from arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
rename to include/mach/mvebu/kirkwood-regs.h
index 5e21c4a587..e47882cfd8 100644
--- a/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
+++ b/include/mach/mvebu/kirkwood-regs.h
@@ -4,7 +4,7 @@
 #ifndef __MACH_MVEBU_KIRKWOOD_REGS_H
 #define __MACH_MVEBU_KIRKWOOD_REGS_H
 
-#include <mach/common.h>
+#include <mach/mvebu/common.h>
 
 #define KIRKWOOD_INT_REGS_BASE	IOMEM(MVEBU_REMAP_INT_REG_BASE)
 
diff --git a/arch/arm/mach-mvebu/include/mach/lowlevel.h b/include/mach/mvebu/lowlevel.h
similarity index 100%
rename from arch/arm/mach-mvebu/include/mach/lowlevel.h
rename to include/mach/mvebu/lowlevel.h
diff --git a/arch/arm/mach-mvebu/include/mach/socid.h b/include/mach/mvebu/socid.h
similarity index 100%
rename from arch/arm/mach-mvebu/include/mach/socid.h
rename to include/mach/mvebu/socid.h
-- 
2.30.2



