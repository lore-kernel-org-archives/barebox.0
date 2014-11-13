Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xp3lh-0001qf-4j
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 23:25:37 +0000
Received: by mail-pa0-f41.google.com with SMTP id rd3so1705762pab.0
 for <barebox@lists.infradead.org>; Thu, 13 Nov 2014 15:25:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 13 Nov 2014 15:24:57 -0800
Message-Id: <1415921097-26063-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX6: esdctl: Fix a bug in memory probing code
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

Old version of imx6_mmdc_add_mem did not use 64-bit arithmetic and
thus was prone to overflow on systems with 4GB of memory. It also did
not take into account the fact that i.MX6 does not support more than
3.8GB of memory and would report incorrect memory size. This commit
fixes both issues.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index f0d2b5b..566ec54 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -38,6 +38,13 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 
+
+#define MIN(a,b)				\
+	({ __typeof__ (a) _a = (a);		\
+		__typeof__ (b) _b = (b);	\
+		_a < _b ? _a : _b; })
+
+
 struct imx_esdctl_data {
 	unsigned long base0;
 	unsigned long base1;
@@ -280,11 +287,28 @@ static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data
 			data->base1, imx_v4_sdram_size(esdctlbase, 1));
 }
 
+/*
+  On i.MX6 the adress space reserved for SDRAM is 0x10000000 to 0xFFFFFFFF
+  which makse the maximum supported RAM size to be 0xF0000000
+ */
+#define IMX6_MAX_SDRAM_SIZE (0xF0000000)
+
 static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
+	/* It is possible to have a configuration in which both chip
+	 * selects of the memory controller have 2GB of memory. To
+	 * account for this case we need to use 64-bit arithmetic and
+	 * also make sure we do not report more than
+	 * IMX6_MAX_SDRAM_SIZE bytes of memory availible */
+
+	u64 size_cs0 = imx6_mmdc_sdram_size(mmdcbase, 0);
+	u64 size_cs1 = imx6_mmdc_sdram_size(mmdcbase, 1);
+	u64 total    = size_cs0 + size_cs1;
+
+	resource_size_t size = MIN(total, IMX6_MAX_SDRAM_SIZE);
+
 	arm_add_mem_device("ram0", data->base0,
-			imx6_mmdc_sdram_size(mmdcbase, 0) +
-			imx6_mmdc_sdram_size(mmdcbase, 1));
+			size);
 }
 
 static int imx_esdctl_probe(struct device_d *dev)
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
