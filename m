Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAe7W-0002MW-Mc
 for barebox@lists.infradead.org; Sun, 09 Sep 2012 09:48:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  9 Sep 2012 11:47:54 +0200
Message-Id: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM lowlevel: Update function documentation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c   |    3 +++
 arch/arm/cpu/start-reset.c |    3 +++
 arch/arm/cpu/start.c       |    5 ++++-
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 932a3da..09a1940 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -36,6 +36,9 @@
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
+/*
+ * First instructions in the pbl image
+ */
 void __naked __section(.text_head_entry) pbl_start(void)
 {
 	barebox_arm_head();
diff --git a/arch/arm/cpu/start-reset.c b/arch/arm/cpu/start-reset.c
index e0df676..fcfdce6 100644
--- a/arch/arm/cpu/start-reset.c
+++ b/arch/arm/cpu/start-reset.c
@@ -29,6 +29,9 @@
 /*
  * The actual reset vector. This code is position independent and usually
  * does not run at the address it's linked at.
+ *
+ * This is either executed in the pbl image (if enabled) or in the regular
+ * image.
  */
 void __naked __bare_init reset(void)
 {
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 07e7dfe..e43ff9c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -30,7 +30,7 @@
 
 #ifdef CONFIG_PBL_IMAGE
 /*
- * First function in the pbl image. We get here from
+ * First function in the uncompressed image. We get here from
  * the pbl.
  */
 void __naked __section(.text_entry) start(void)
@@ -47,6 +47,9 @@ void __naked __section(.text_entry) start(void)
 }
 #else
 
+/*
+ * First function in the image without pbl support
+ */
 void __naked __section(.text_entry) start(void)
 {
 	barebox_arm_head();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
