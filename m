Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCTuZ-00067W-0p
 for barebox@lists.infradead.org; Sat, 17 Jan 2015 13:59:37 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 17 Jan 2015 14:58:50 +0100
Message-Id: <1421503131-24840-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/2] ARM: pxa: RAM and console fixes for zylonite
To: barebox@lists.infradead.org

There is at least one zylonite variant with a PXA311 and only 64 MB of
memory, while the other variants have at least 128 MB.
As 64 MB is the smallest common denominator, tell barebox to use only
the 64 MB bytes.

At the same time, fix the kernel command line to use only these 64 MB,
and output log on the console.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/zylonite/board.c    | 2 +-
 arch/arm/boards/zylonite/env/config | 2 +-
 arch/arm/boards/zylonite/lowlevel.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index 96357a5..dabc6ff 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -95,7 +95,7 @@ coredevice_initcall(zylonite_coredevice_init);
 
 static int zylonite_mem_init(void)
 {
-	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
+	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
 	return 0;
 }
 mem_initcall(zylonite_mem_init);
diff --git a/arch/arm/boards/zylonite/env/config b/arch/arm/boards/zylonite/env/config
index 56ee90f..ee66e37 100644
--- a/arch/arm/boards/zylonite/env/config
+++ b/arch/arm/boards/zylonite/env/config
@@ -3,4 +3,4 @@
 autoboot_timeout=3
 
 mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
-bootargs="$bootargs mtdparts=pxa3xx-nand.0:$mtdparts ubi.mtd=6 rootfstype=ubifs root=ubi0:linux_root ro"
+bootargs="$bootargs mtdparts=pxa3xx_nand-0:$mtdparts ubi.mtd=5 rootfstype=ubifs root=ubi0:root ro ram=64M console=ttyS0,115200"
diff --git a/arch/arm/boards/zylonite/lowlevel.c b/arch/arm/boards/zylonite/lowlevel.c
index 5c43679..9f1aa66 100644
--- a/arch/arm/boards/zylonite/lowlevel.c
+++ b/arch/arm/boards/zylonite/lowlevel.c
@@ -6,5 +6,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
+	barebox_arm_entry(0x80000000, SZ_64M, NULL);
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
