Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0ANJ-0004An-Mv
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 14:10:08 +0000
Received: by mail-wg0-f47.google.com with SMTP id k14so3678209wgh.6
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 07:09:40 -0700 (PDT)
From: Christian Hemp <christian.hemp@gmail.com>
Date: Thu, 26 Jun 2014 16:09:17 +0200
Message-Id: <1403791757-11152-1-git-send-email-christian.hemp@gmail.com>
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
Subject: [PATCH] imx6:phyFLEX: Fix ENTRY_FUNCTION
To: barebox@lists.infradead.org
Cc: Christian Hemp <christian.hemp@gmail.com>

For some phyFLEX-i.MX6 modules the call __barebox_arm_head() was not removed.
With this function the barebox does not start.

Signed-off-by: Christian Hemp <christian.hemp@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |    6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 6c6f660..4350adb 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -93,8 +93,6 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 {
 	void *fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
@@ -108,8 +106,6 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 {
 	void *fdt;
 
-        __barebox_arm_head();
-
         arm_cpu_lowlevel_init();
 
         arm_setup_stack(0x00920000 - 8);
@@ -123,8 +119,6 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 {
 	void *fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
