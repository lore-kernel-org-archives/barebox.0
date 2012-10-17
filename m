Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027Y-Bj
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:20 +0200
Message-Id: <1350507817-7819-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/28] ARM PXA boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

All boards use hardcoded base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mioa701/Makefile       |    2 ++
 arch/arm/boards/mioa701/lowlevel.c     |   10 ++++++++++
 arch/arm/boards/pcm027/lowlevel_init.S |    7 +++++--
 3 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/lowlevel.c

diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/mioa701/Makefile
+++ b/arch/arm/boards/mioa701/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
new file mode 100644
index 0000000..6d48c97
--- /dev/null
+++ b/arch/arm/boards/mioa701/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0xa0000000, SZ_64M, 0);
+}
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
index cf5fcd9..b90682c 100644
--- a/arch/arm/boards/pcm027/lowlevel_init.S
+++ b/arch/arm/boards/pcm027/lowlevel_init.S
@@ -24,6 +24,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/pxa-regs.h>
 #include <mach/regs-ost.h>
 #include <mach/regs-intc.h>
@@ -452,5 +453,7 @@ initclks:
 	/* -------------------------------------------------------------------- */
 
 endlowlevel_init:
-	b board_init_lowlevel_return
-
+	mov	r0, #0xa0000000
+	mov	r1, #SZ_64M
+	mov	r2, #0
+	b	barebox_arm_entry
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
