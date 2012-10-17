Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamN-0007SG-L0
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:32 +0200
Message-Id: <1350507817-7819-24-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/28] ARM start: Add barebox_arm_boarddata function
To: barebox@lists.infradead.org

The board specific lowlevel init code may wish to pass data from
the lowlevel code to the running barebox. This allows to pass data
on and to pick it up later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               |   14 ++++++++++++++
 arch/arm/include/asm/barebox-arm.h |    2 ++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index ee351bb..901dc6d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,6 +26,18 @@
 #include <asm/cache.h>
 #include <memory.h>
 
+static uint32_t __barebox_arm_boarddata;
+
+/*
+ * the board specific lowlevel init code can pass a pointer or
+ * data value to barebox_arm_entry() and pick it up later with
+ * this function.
+ */
+uint32_t barebox_arm_boarddata(void)
+{
+	return __barebox_arm_boarddata;
+}
+
 static noinline void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
@@ -34,6 +46,8 @@ static noinline void __start(uint32_t membase, uint32_t memsize,
 	mem_malloc_init((void *)MALLOC_BASE,
 			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 
+	__barebox_arm_boarddata = boarddata;
+
 	start_barebox();
 }
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index ce1eb47..e7355bb 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -39,4 +39,6 @@ uint32_t get_runtime_offset(void);
 void setup_c(void);
 void barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
 
+uint32_t barebox_arm_boarddata(void);
+
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
