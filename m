Delivery-date: Thu, 02 Mar 2023 12:18:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgx1-006Uqp-VP
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:18:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgx0-0001wW-U2
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:18:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dSSmsVhYDUcRxW2yooHj3ioN9G2nrBbCCsqCbn6wyQ=; b=0u/ikToWlPOAivIusgGoxqbi+T
	nsnu7j+v1tUseNU+amv+wG4SYjQBeAFkZ9WrEJ5bk590oLzOPRVRhR5uzgfO54Um12yQF40QE/Nbr
	ZTbQh4vECBNuqCSlMF6wmIiOhckyAIOx6ImfBmJbTcIOWgy5EGG3D4NZ268G7B4Yhdykb6VJAFg/S
	MLyNIdGPRMinvuW7uP9ADHixj4+2vs5AhMtAlkhE65EkyP6j/eWenlMD2ah1n5BijPJ0wMz+aWees
	KV2tW7f+87NTG5yzqH051VNKoRcQRi0OTqe0Q0zOrclK5IXlBFHpb2EguTwFuq102x2elO46BdOFm
	1IVt7Rpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvm-001sks-8q; Thu, 02 Mar 2023 11:17:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXguy-001sGe-FQ
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgux-00019E-83; Thu, 02 Mar 2023 12:16:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-001JdZ-K4; Thu, 02 Mar 2023 12:16:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVI-Rn; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:55 +0100
Message-Id: <20230302111606.1054037-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031612_773786_9B13C2DD 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/13] ARM: mvebu: Use ENTRY_FUNCTION_HEAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use ENTRY_FUNCTION_HEAD in the mvebu boards to customize the barebox
image header without having to hook into a generic include file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                    |  1 -
 arch/arm/boards/globalscale-guruplug/lowlevel.c     |  4 ++--
 arch/arm/boards/globalscale-mirabox/lowlevel.c      |  4 ++--
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c          |  4 ++--
 arch/arm/boards/marvell-armada-xp-db/lowlevel.c     |  4 ++--
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c     |  4 ++--
 arch/arm/boards/netgear-rn104/lowlevel.c            |  4 ++--
 arch/arm/boards/netgear-rn2120/lowlevel.c           |  4 ++--
 arch/arm/boards/plathome-openblocks-a6/lowlevel.c   |  4 ++--
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c  |  4 ++--
 arch/arm/boards/solidrun-cubox/lowlevel.c           |  4 ++--
 arch/arm/boards/turris-omnia/lowlevel.c             |  4 ++--
 arch/arm/boards/usi-topkick/lowlevel.c              |  4 ++--
 arch/arm/mach-mvebu/include/mach/barebox-arm-head.h | 12 ++++--------
 14 files changed, 28 insertions(+), 33 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c5645c540e..1281b8be38 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -126,7 +126,6 @@ config ARCH_MVEBU
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HAS_DEBUG_LL
-	select HAVE_MACH_ARM_HEAD
 	select HAVE_PBL_MULTI_IMAGES
 	select HW_HAS_PCI
 	select MVEBU_MBUS
diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
index 964d3510ee..35b2150960 100644
--- a/arch/arm/boards/globalscale-guruplug/lowlevel.c
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_kirkwood_guruplug_server_plus_bb_start[];
 
-ENTRY_FUNCTION(start_globalscale_guruplug, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_globalscale_guruplug, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
index 094792d461..9d03dfd418 100644
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_armada_370_mirabox_bb_start[];
 
-ENTRY_FUNCTION(start_globalscale_mirabox, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_globalscale_mirabox, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
index c0a695908f..2ca6c6b5f9 100644
--- a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
+++ b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
@@ -3,13 +3,13 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <linux/sizes.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_armada_xp_lenovo_ix4_300d_bb_start[];
 
-ENTRY_FUNCTION(start_lenovo_ix4_300d, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_lenovo_ix4_300d, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
index 4752bbf1b4..4850cf4c2f 100644
--- a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
@@ -7,13 +7,13 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 #include <io.h>
 
 extern char __dtb_armada_xp_db_bb_start[];
 
-ENTRY_FUNCTION(start_marvell_armada_xp_db, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_marvell_armada_xp_db, r0, r1, r2)
 {
 	void *fdt;
 	uint32_t reg;
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
index 43b1ba8c9a..e6242e36a7 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_armada_xp_gp_bb_start[];
 
-ENTRY_FUNCTION(start_marvell_armada_xp_gp, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_marvell_armada_xp_gp, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index c6c8e84023..5005129555 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -6,12 +6,12 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_armada_370_rn104_bb_start[];
 
-ENTRY_FUNCTION(start_netgear_rn104, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_netgear_rn104, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/netgear-rn2120/lowlevel.c b/arch/arm/boards/netgear-rn2120/lowlevel.c
index c78d3644b5..f88f46c037 100644
--- a/arch/arm/boards/netgear-rn2120/lowlevel.c
+++ b/arch/arm/boards/netgear-rn2120/lowlevel.c
@@ -3,14 +3,14 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/io.h>
 #include <mach/lowlevel.h>
 #include <mach/common.h>
 
 extern char __dtb_armada_xp_rn2120_bb_start[];
 
-ENTRY_FUNCTION(start_netgear_rn2120, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_netgear_rn2120, r0, r1, r2)
 {
 	void *fdt;
 	void __iomem *base = mvebu_get_initial_int_reg_base();
diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
index a480c966a4..daa482dd4f 100644
--- a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
@@ -3,12 +3,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_kirkwood_openblocks_a6_bb_start[];
 
-ENTRY_FUNCTION(start_plathome_openblocks_a6, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_plathome_openblocks_a6, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
index 42b291df9f..bab44590c7 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_armada_xp_openblocks_ax3_4_bb_start[];
 
-ENTRY_FUNCTION(start_plathome_openblocks_ax3, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_plathome_openblocks_ax3, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 94ed9a4fd7..5bcd0751fc 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -5,12 +5,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_dove_cubox_bb_start[];
 
-ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_solidrun_cubox, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/turris-omnia/lowlevel.c b/arch/arm/boards/turris-omnia/lowlevel.c
index b6520b5775..8ec2a0bf82 100644
--- a/arch/arm/boards/turris-omnia/lowlevel.c
+++ b/arch/arm/boards/turris-omnia/lowlevel.c
@@ -3,14 +3,14 @@
 
 #include <common.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 #include <asm/io.h>
 
 extern char __dtb_armada_385_turris_omnia_bb_start[];
 
-ENTRY_FUNCTION(start_turris_omnia, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_turris_omnia, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/usi-topkick/lowlevel.c b/arch/arm/boards/usi-topkick/lowlevel.c
index 0193deadbe..51aa29e047 100644
--- a/arch/arm/boards/usi-topkick/lowlevel.c
+++ b/arch/arm/boards/usi-topkick/lowlevel.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_kirkwood_topkick_bb_start[];
 
-ENTRY_FUNCTION(start_usi_topkick, r0, r1, r2)
+ENTRY_FUNCTION_MVEBU(start_usi_topkick, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h b/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
index 2ef3377402..72afd10005 100644
--- a/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-mvebu/include/mach/barebox-arm-head.h
@@ -3,7 +3,7 @@
 #include <linux/stringify.h>
 #include <mach/common.h>
 
-static inline void __barebox_arm_head(void)
+static inline void __barebox_mvebu_head(void)
 {
 	__asm__ __volatile__ (
 #ifdef CONFIG_THUMB2_BAREBOX
@@ -53,10 +53,6 @@ static inline void __barebox_arm_head(void)
 #endif
 	);
 }
-static inline void barebox_arm_head(void)
-{
-	__barebox_arm_head();
-	__asm__ __volatile__ (
-		"b barebox_arm_reset_vector\n"
-	);
-}
+
+#define ENTRY_FUNCTION_MVEBU(name, arg0, arg1, arg2) \
+	ENTRY_FUNCTION_HEAD(name, __barebox_mvebu_head, arg0, arg1, arg2)
-- 
2.30.2



