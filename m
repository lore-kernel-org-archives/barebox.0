Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsmA5-0006Nl-4Z
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 08:39:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dsm9i-0005Jd-SY
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 10:39:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 15 Sep 2017 10:39:19 +0200
Message-Id: <20170915083922.25134-10-l.stach@pengutronix.de>
In-Reply-To: <20170915083922.25134-1-l.stach@pengutronix.de>
References: <20170915083922.25134-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/12] vexpress: use device tree provided by QEMU if available
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/vexpress/lowlevel.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
index 0a226b295c2a..9fe7c836b7b6 100644
--- a/arch/arm/boards/vexpress/lowlevel.c
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -9,18 +9,34 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/system_info.h>
+#include <asm/unaligned.h>
 #include <linux/amba/sp804.h>
 
 static inline void start_vexpress_common(void *internal_dt)
 {
 	void *fdt = internal_dt - get_runtime_offset();
+	unsigned long membase, memsize = SZ_512M;
 
 	arm_cpu_lowlevel_init();
 
 	if (amba_is_arm_sp804(IOMEM(0x10011000)))
-		barebox_arm_entry(0x60000000, SZ_512M, fdt);
+		membase = 0x60000000;
 	else
-		barebox_arm_entry(0x80000000, SZ_512M, fdt);
+		membase = 0x80000000;
+
+	/* QEMU may put a DTB at the start of RAM */
+	if (IS_ENABLED(CONFIG_OFDEVICE) &&
+	    get_unaligned_be32((void*)membase) == FDT_MAGIC) {
+		fdt = (void*)membase;
+		/*
+		 * Need to move membase a bit as the PBL wants to relocate
+		 * to the start of RAM, which would overwrite the DTB.
+		 */
+		membase += SZ_4M;
+		memsize -= SZ_4M;
+	}
+
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 extern char __dtb_vexpress_v2p_ca9_start[];
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
