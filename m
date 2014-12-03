Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22d.google.com ([2607:f8b0:400e:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XwANA-0000t3-8x
 for barebox@lists.infradead.org; Wed, 03 Dec 2014 13:53:41 +0000
Received: by mail-pa0-f45.google.com with SMTP id lj1so15824601pab.4
 for <barebox@lists.infradead.org>; Wed, 03 Dec 2014 05:53:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  3 Dec 2014 05:53:06 -0800
Message-Id: <1417614786-15460-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1417614786-15460-1-git-send-email-andrew.smirnov@gmail.com>
References: <1417614786-15460-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/2] i.MX6: phytec: Distil common code pattern into a macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Distil common code pattern for Phytec entry functions into a macro and
use it instead. This way a new board derivateve that differs only in device
tree file can be added with just one line.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c | 82 +++++++-------------------
 1 file changed, 22 insertions(+), 60 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index e8937b9..90e0969 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -54,16 +54,12 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-extern char __dtb_imx6q_phytec_pbab01_start[];
-extern char __dtb_imx6dl_phytec_pbab01_start[];
-extern char __dtb_imx6s_phytec_pbab01_start[];
-extern char __dtb_imx6q_phytec_phyboard_alcor_start[];
-extern char __dtb_imx6dl_phytec_phyboard_subra_start[];
+#define SZ_4G 0xEFFFFFF8
 
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
 
 static void __noreturn start_imx6_phytec_common(uint32_t size,
 						bool do_early_uart_config,
@@ -82,58 +78,24 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	barebox_arm_entry(0x10000000, size, fdt);
 }
 
-ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_1G);
-
-	start_imx6_phytec_common(SZ_1G, true,
-				 __dtb_imx6q_phytec_pbab01_start);
-}
-
-ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_2G);
-
-	start_imx6_phytec_common(SZ_2G, true,
-				 __dtb_imx6q_phytec_pbab01_start);
-}
-
-ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_4G);
+#define PHYTEC_ENTRY(name, fdt_name, memory_size, do_early_uart_config)	\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		extern char __dtb_##fdt_name##_start[];			\
+									\
+		IMD_USED(phyflex_mx6_memsize_##memory_size);		\
+									\
+		start_imx6_phytec_common(memory_size, do_early_uart_config, \
+					 __dtb_##fdt_name##_start);	\
+	}
 
-	start_imx6_phytec_common(0xEFFFFFF8, true,
-				 __dtb_imx6q_phytec_pbab01_start);
-}
+PHYTEC_ENTRY(start_phytec_pbab01_1gib, imx6q_phytec_pbab01, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
+PHYTEC_ENTRY(start_phytec_pbab01_4gib, imx6q_phytec_pbab01, SZ_4G, true);
+PHYTEC_ENTRY(start_phytec_pbab01dl_1gib, imx6dl_phytec_pbab01, SZ_1G, false);
+PHYTEC_ENTRY(start_phytec_pbab01s_512mb, imx6s_phytec_pbab01, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
+PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb, imx6dl_phytec_phyboard_subra, SZ_512M, false);
 
-ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_1G);
 
-	start_imx6_phytec_common(SZ_1G, false,
-				 __dtb_imx6dl_phytec_pbab01_start);
-}
 
-ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_512M);
-
-	start_imx6_phytec_common(SZ_512M, false,
-				 __dtb_imx6s_phytec_pbab01_start);
-}
-
-ENTRY_FUNCTION(start_phytec_phyboard_alcor_1gib, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_1G);
-
-	start_imx6_phytec_common(SZ_1G, false,
-				 __dtb_imx6q_phytec_phyboard_alcor_start);
-}
-
-ENTRY_FUNCTION(start_phytec_phyboard_subra_512mb, r0, r1, r2)
-{
-	IMD_USED(phyflex_mx6_memsize_512M);
-
-	start_imx6_phytec_common(SZ_512M, false,
-				 __dtb_imx6dl_phytec_phyboard_subra_start);
-}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
