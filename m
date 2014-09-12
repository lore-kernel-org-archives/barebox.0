Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzS-0003uE-8K
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DAD67A00603
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:42 +0200
Message-Id: <1410528827-12722-5-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
References: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 05/10] ARM:imx6:pfla02: Remove redundant code
To: barebox@lists.infradead.org

Move redundant code to a common function.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |   46 ++++++++++--------------
 1 files changed, 19 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 1d08f05..84014d7 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -63,7 +63,7 @@ BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024
 BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
 BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
 
-ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
+static void __noreturn start_imx6q_phytec_pbab01_common(uint32_t size)
 {
 	void *fdt;
 
@@ -71,17 +71,16 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	IMD_USED(phyflex_mx6_memsize_1G);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
 	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	barebox_arm_entry(0x10000000, size, fdt);
 }
 
-ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
+
+static void __noreturn start_imx6dl_phytec_pbab01_common(uint32_t size)
 {
 	void *fdt;
 
@@ -89,44 +88,37 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	IMD_USED(phyflex_mx6_memsize_2G);
+	fdt = __dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
+	barebox_arm_entry(0x10000000, size, fdt);
+}
 
-	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
+{
+	IMD_USED(phyflex_mx6_memsize_1G);
 
-	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+	start_imx6q_phytec_pbab01_common(SZ_1G);
 }
 
-ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
+ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 {
-	void *fdt;
-
-	imx6_cpu_lowlevel_init();
+	IMD_USED(phyflex_mx6_memsize_2G);
 
-	arm_setup_stack(0x00920000 - 8);
+	start_imx6q_phytec_pbab01_common(SZ_2G);
+}
 
+ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
+{
 	IMD_USED(phyflex_mx6_memsize_4G);
 
-	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
-
-	barebox_arm_entry(0x10000000, 0xEFFFFFF8, fdt);
+	start_imx6q_phytec_pbab01_common(0xEFFFFFF8);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 {
-	void *fdt;
-
-	imx6_cpu_lowlevel_init();
-
-	arm_setup_stack(0x00920000 - 8);
-
 	IMD_USED(phyflex_mx6_memsize_1G);
 
-	fdt = __dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
-
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	start_imx6dl_phytec_pbab01_common(SZ_1G);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
