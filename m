Delivery-date: Fri, 03 Mar 2023 11:32:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY2hw-007Qy2-79
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 11:32:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY2hv-0005pQ-Mk
	for lore@pengutronix.de; Fri, 03 Mar 2023 11:32:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pz9djB+GEjY5GQNIP3n41TxxgWlU4Hj3VzwfaUtCrlI=; b=Qs0vIsukPoQfdzLDegq4uErlcy
	E5a91tk2yFC+PMylrlT1FIU1OLDUNyhwEZwz/c+kth+Bj+FTPWC8EeN3BGewuOU+MP4TSTWPyCEWf
	9k3ivz/O10H4T4DnfKRQa1rzYY+QYw+L1dEJi9d6o0Lxx3LkVz6JBLZ5Wxr5Nuwf8bcoFovXQ/cWn
	n8Q4LoBw9w3ICor0Gcm//VRrIe/qyin6IFLT7zsb5fRIC4vZDrTEwRiHfRKUvf61nDOsR6mWVIWkD
	CPZvMXY8iAj6zUBoU7/dHh/qtb6vaWmfvqcQTI+vYQH5C/VYTvzcQ0Z3qGFVz9713PVqdlqzSQU02
	hEpOBdcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY2ge-00618y-Dq; Fri, 03 Mar 2023 10:30:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bc-005eJV-QZ
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00008r-Jk; Fri, 03 Mar 2023 10:21:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-001Wh7-P5; Fri, 03 Mar 2023 10:21:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bZ-00F2bo-T2; Fri, 03 Mar 2023 10:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:44 +0100
Message-Id: <20230303092131.3063587-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012137_066178_74F59905 
X-CRM114-Status: GOOD (  11.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/50] ARM: Zynqmp: Move mach header files to include/mach/zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
possible as there won't be a single mach anymore.

Move all Zynqmp specific header files to include/mach/zynqmp/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/xilinx-zcu104/board.c                           | 2 +-
 arch/arm/boards/xilinx-zcu106/board.c                           | 2 +-
 arch/arm/include/asm/debug_ll.h                                 | 2 ++
 arch/arm/mach-zynqmp/firmware-zynqmp.c                          | 2 +-
 arch/arm/mach-zynqmp/zynqmp-bbu.c                               | 2 +-
 drivers/clk/zynqmp/clk-divider-zynqmp.c                         | 2 +-
 drivers/clk/zynqmp/clk-gate-zynqmp.c                            | 2 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c                             | 2 +-
 drivers/clk/zynqmp/clk-pll-zynqmp.c                             | 2 +-
 drivers/clk/zynqmp/clkc.c                                       | 2 +-
 drivers/firmware/zynqmp-fpga.c                                  | 2 +-
 .../mach-zynqmp/include/mach => include/mach/zynqmp}/debug_ll.h | 0
 .../include/mach => include/mach/zynqmp}/firmware-zynqmp.h      | 0
 .../include/mach => include/mach/zynqmp}/zynqmp-bbu.h           | 0
 14 files changed, 12 insertions(+), 10 deletions(-)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/debug_ll.h (100%)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/firmware-zynqmp.h (100%)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/zynqmp-bbu.h (100%)

diff --git a/arch/arm/boards/xilinx-zcu104/board.c b/arch/arm/boards/xilinx-zcu104/board.c
index 7654d2bfac..26dc6c9613 100644
--- a/arch/arm/boards/xilinx-zcu104/board.c
+++ b/arch/arm/boards/xilinx-zcu104/board.c
@@ -5,7 +5,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/zynqmp-bbu.h>
+#include <mach/zynqmp/zynqmp-bbu.h>
 
 static int zcu104_register_update_handler(void)
 {
diff --git a/arch/arm/boards/xilinx-zcu106/board.c b/arch/arm/boards/xilinx-zcu106/board.c
index 0cb5ce86ea..3c8c3d21f2 100644
--- a/arch/arm/boards/xilinx-zcu106/board.c
+++ b/arch/arm/boards/xilinx-zcu106/board.c
@@ -8,7 +8,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/zynqmp-bbu.h>
+#include <mach/zynqmp/zynqmp-bbu.h>
 
 static int zcu106_register_update_handler(void)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index d3933ae508..61d66e7bc1 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -10,6 +10,8 @@
 #include <mach/imx/debug_ll.h>
 #elif defined CONFIG_ARCH_ROCKCHIP
 #include <mach/rockchip/debug_ll.h>
+#elif defined CONFIG_ARCH_ZYNQMP
+#include <mach/zynqmp/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 0406e66c5d..521a70bac4 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -16,7 +16,7 @@
 #include <init.h>
 #include <linux/arm-smccc.h>
 
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #define ZYNQMP_TZ_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
 
diff --git a/arch/arm/mach-zynqmp/zynqmp-bbu.c b/arch/arm/mach-zynqmp/zynqmp-bbu.c
index 7ac8c2b8a9..3c5e2fe885 100644
--- a/arch/arm/mach-zynqmp/zynqmp-bbu.c
+++ b/arch/arm/mach-zynqmp/zynqmp-bbu.c
@@ -4,7 +4,7 @@
  */
 
 #include <common.h>
-#include <mach/zynqmp-bbu.h>
+#include <mach/zynqmp/zynqmp-bbu.h>
 
 int zynqmp_bbu_register_handler(const char *name, char *devicefile,
 				unsigned long flags)
diff --git a/drivers/clk/zynqmp/clk-divider-zynqmp.c b/drivers/clk/zynqmp/clk-divider-zynqmp.c
index 38c7baa0c6..d78cda38b7 100644
--- a/drivers/clk/zynqmp/clk-divider-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-divider-zynqmp.c
@@ -11,7 +11,7 @@
 
 #include <common.h>
 #include <linux/clk.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "clk-zynqmp.h"
 
diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 7b5a432aa8..daa17c34b8 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -11,7 +11,7 @@
 
 #include <common.h>
 #include <linux/clk.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "clk-zynqmp.h"
 
diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
index 29bd9e6ef0..fe31cff4b6 100644
--- a/drivers/clk/zynqmp/clk-mux-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -11,7 +11,7 @@
 
 #include <common.h>
 #include <linux/clk.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "clk-zynqmp.h"
 
diff --git a/drivers/clk/zynqmp/clk-pll-zynqmp.c b/drivers/clk/zynqmp/clk-pll-zynqmp.c
index 791f31a5a5..b386780f18 100644
--- a/drivers/clk/zynqmp/clk-pll-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-pll-zynqmp.c
@@ -11,7 +11,7 @@
 
 #include <common.h>
 #include <linux/clk.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "clk-zynqmp.h"
 
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index afa6693caf..9dd58a2db3 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -14,7 +14,7 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "clk-zynqmp.h"
 
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index f4e8456843..2544d015d6 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -15,7 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <dma.h>
-#include <mach/firmware-zynqmp.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
 #define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
diff --git a/arch/arm/mach-zynqmp/include/mach/debug_ll.h b/include/mach/zynqmp/debug_ll.h
similarity index 100%
rename from arch/arm/mach-zynqmp/include/mach/debug_ll.h
rename to include/mach/zynqmp/debug_ll.h
diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
similarity index 100%
rename from arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
rename to include/mach/zynqmp/firmware-zynqmp.h
diff --git a/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h b/include/mach/zynqmp/zynqmp-bbu.h
similarity index 100%
rename from arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
rename to include/mach/zynqmp/zynqmp-bbu.h
-- 
2.30.2



