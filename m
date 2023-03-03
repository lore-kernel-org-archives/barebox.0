Delivery-date: Fri, 03 Mar 2023 10:23:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1di-007NXs-Dv
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dh-00011o-QE
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OKCqClnU63ZoLBXlIFU8pXnRJfrrQwK4o7gdkYhWK30=; b=cgN0jr2y/aA2GnGdHVktVY3aP5
	vgd7H3JMImoptXPblViNffqfFbdQDtQObQ5B+Qnq9gHdi3qqoGgA0xVLpFjYb/MIrdault3GmGpzK
	E74SKiMSvL6NnyMTj17ES3t3XZHjjK5VBjJNNnDMYMh/+u3Fm75cbQ6Im8c5X19zWBzrYtL9kow6e
	/YxBjHvKtP/AmktoOLe2KL9BnxsaVJGiWMVEfFxdFESGh9Y+/fs+osjdbM5XBMVbBKbuOLUC0WPTL
	4sr6EeV3LbeXiA4j0ztFsRdH9oedle5V23ucxCvyzdWvId3tRxM9qm9LabVI7O+VL8NKQQvY5GgmP
	6a5t4k7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cO-005epp-UI; Fri, 03 Mar 2023 09:22:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bg-005eLg-59
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-0000B3-Rl; Fri, 03 Mar 2023 10:21:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001Whw-1a; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gJ-EB; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:58 +0100
Message-Id: <20230303092131.3063587-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_261800_D7D6B697 
X-CRM114-Status: GOOD (  12.48  )
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
Subject: [PATCH 17/50] ARM: nomadik: Move mach header files to include/mach/nomadik
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all nomadik specific header files to include/mach/nomadik/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nhk8815/setup.c                           | 8 ++++----
 arch/arm/include/asm/debug_ll.h                           | 2 ++
 arch/arm/mach-nomadik/8815.c                              | 4 ++--
 arch/arm/mach-nomadik/reset.c                             | 2 +-
 arch/arm/mach-nomadik/timer.c                             | 2 +-
 drivers/mtd/nand/nomadik_nand.c                           | 4 ++--
 .../include/mach => include/mach/nomadik}/board.h         | 0
 .../include/mach => include/mach/nomadik}/fsmc.h          | 2 +-
 .../include/mach => include/mach/nomadik}/hardware.h      | 0
 .../include/mach => include/mach/nomadik}/nand.h          | 0
 10 files changed, 13 insertions(+), 11 deletions(-)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/board.h (100%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/fsmc.h (96%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/hardware.h (100%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/nand.h (100%)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 90ec33f710..42165c06c0 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -11,10 +11,10 @@
 #include <io.h>
 #include <envfs.h>
 
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/nand.h>
-#include <mach/fsmc.h>
+#include <mach/nomadik/hardware.h>
+#include <mach/nomadik/board.h>
+#include <mach/nomadik/nand.h>
+#include <mach/nomadik/fsmc.h>
 
 static int nhk8815_nand_init(void)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 25f7559527..1c021acf6f 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -38,6 +38,8 @@
 #include <mach/pxa/debug_ll.h>
 #elif defined CONFIG_ARCH_OMAP
 #include <mach/omap/debug_ll.h>
+#elif defined CONFIG_ARCH_NOMADIK
+#include <mach/nomadik/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 9f9c0342b4..d911de38c4 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -17,8 +17,8 @@
 #include <common.h>
 #include <init.h>
 #include <linux/clkdev.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
+#include <mach/nomadik/hardware.h>
+#include <mach/nomadik/board.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/amba/bus.h>
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
index d5266068e2..d3d54de07e 100644
--- a/arch/arm/mach-nomadik/reset.c
+++ b/arch/arm/mach-nomadik/reset.c
@@ -18,7 +18,7 @@
 #include <init.h>
 #include <io.h>
 #include <restart.h>
-#include <mach/hardware.h>
+#include <mach/nomadik/hardware.h>
 
 static void __noreturn nomadik_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
index 0b8dc866eb..73abbe9b91 100644
--- a/arch/arm/mach-nomadik/timer.c
+++ b/arch/arm/mach-nomadik/timer.c
@@ -11,7 +11,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/nomadik/hardware.h>
 
 /* Initial value for SRC control register: all timers use MXTAL/8 source */
 #define SRC_CR_INIT_MASK	0x00007fff
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index ef8df3ef80..940ed9809e 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -24,8 +24,8 @@
 #include <linux/mtd/rawnand.h>
 
 #include <io.h>
-#include <mach/nand.h>
-#include <mach/fsmc.h>
+#include <mach/nomadik/nand.h>
+#include <mach/nomadik/fsmc.h>
 
 #include <errno.h>
 
diff --git a/arch/arm/mach-nomadik/include/mach/board.h b/include/mach/nomadik/board.h
similarity index 100%
rename from arch/arm/mach-nomadik/include/mach/board.h
rename to include/mach/nomadik/board.h
diff --git a/arch/arm/mach-nomadik/include/mach/fsmc.h b/include/mach/nomadik/fsmc.h
similarity index 96%
rename from arch/arm/mach-nomadik/include/mach/fsmc.h
rename to include/mach/nomadik/fsmc.h
index 3d46eb2a47..be0f9569b5 100644
--- a/arch/arm/mach-nomadik/include/mach/fsmc.h
+++ b/include/mach/nomadik/fsmc.h
@@ -5,7 +5,7 @@
 #ifndef __ASM_ARCH_FSMC_H
 #define __ASM_ARCH_FSMC_H
 
-#include <mach/hardware.h>
+#include <mach/nomadik/hardware.h>
 /*
  * Register list
  */
diff --git a/arch/arm/mach-nomadik/include/mach/hardware.h b/include/mach/nomadik/hardware.h
similarity index 100%
rename from arch/arm/mach-nomadik/include/mach/hardware.h
rename to include/mach/nomadik/hardware.h
diff --git a/arch/arm/mach-nomadik/include/mach/nand.h b/include/mach/nomadik/nand.h
similarity index 100%
rename from arch/arm/mach-nomadik/include/mach/nand.h
rename to include/mach/nomadik/nand.h
-- 
2.30.2



