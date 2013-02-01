Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXL-000453-Ig
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 07:59:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:14 +0100
Message-Id: <1359705587-9762-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/34] ARM: Add new entry point for barebox
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
index f506792..f1ce2c5 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -183,3 +183,16 @@ void __naked board_init_lowlevel_return(void)
 
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
+void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
+{
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 793445a..0b7eee8 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -63,3 +63,16 @@ void __naked board_init_lowlevel_return(void)
 
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
+void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
+                uint32_t boarddata)
+{
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 993130d..4ccf938 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -39,5 +39,6 @@ void board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
 void setup_c(void);
+void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
 
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
