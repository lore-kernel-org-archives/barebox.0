Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027I-K5
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:13 +0200
Message-Id: <1350507817-7819-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/28] ARM: Add new entry point for barebox
To: barebox@lists.infradead.org

Memory is a precious resource, so it makes sense to make it available as
early as possible. By definition the lowlevel init code already knows where
to find memory because it's the lowlevel init code which sets up the memory.
Until all boards are converted this new entry is just a fallback to the old
entry point.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |   13 +++++++++++++
 arch/arm/cpu/start.c               |   13 +++++++++++++
 arch/arm/include/asm/barebox-arm.h |    1 +
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 609aedb..30877b4 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -200,3 +200,16 @@ void __naked board_init_lowlevel_return(void)
 
 	barebox_uncompress((void *)pg_start, pg_len);
 }
+
+/*
+ * Main ARM entry point in the compressed image. Call this with the memory
+ * region you can spare for barebox. This doesn't necessarily have to be the
+ * full SDRAM. The currently running binary can be inside or outside of this
+ * region. TEXT_BASE can be inside or outside of this region. boarddata will
+ * be preserved and can be accessed later with barebox_arm_boarddata().
+ */
+void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
+{
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index d47a9e9..79cb437 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -66,3 +66,16 @@ void __naked board_init_lowlevel_return(void)
 
 	start_barebox();
 }
+
+/*
+ * Main ARM entry point in the uncompressed image. Call this with the memory
+ * region you can spare for barebox. This doesn't necessarily have to be the
+ * full SDRAM. The currently running binary can be inside or outside of this
+ * region. TEXT_BASE can be inside or outside of this region. boarddata will
+ * be preserved and can be accessed later with barebox_arm_boarddata().
+ */
+void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
+                uint32_t boarddata)
+{
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 993130d..3eb28c0 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -39,5 +39,6 @@ void board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
 void setup_c(void);
+void barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
 
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
