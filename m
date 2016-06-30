Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIY1U-00083I-43
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 09:12:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 30 Jun 2016 11:10:20 +0200
Message-Id: <1467277820-5558-2-git-send-email-akurz@blala.de>
In-Reply-To: <1467277820-5558-1-git-send-email-akurz@blala.de>
References: <1467277820-5558-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] ARM: i.MX: central SOC type definition
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Move the definition of iMX CPU types to an individual file to allow
on-purpose inclusion. Eliminate magic number CPU type encoding in the
scripts/imx subdir using the new include file.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/generic.h       | 11 +----------
 arch/arm/mach-imx/include/mach/imx_cpu_types.h | 14 ++++++++++++++
 scripts/imx/Makefile                           |  3 ++-
 scripts/imx/imx-image.c                        |  3 ++-
 scripts/imx/imx.c                              | 13 +++++++------
 5 files changed, 26 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx_cpu_types.h

diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 46fe388..0a4200b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -4,6 +4,7 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 #include <bootsource.h>
+#include <mach/imx_cpu_types.h>
 
 u64 imx_uid(void);
 
@@ -42,16 +43,6 @@ void imx6_cpu_lowlevel_init(void);
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
 
-#define IMX_CPU_IMX1	1
-#define IMX_CPU_IMX21	21
-#define IMX_CPU_IMX25	25
-#define IMX_CPU_IMX27	27
-#define IMX_CPU_IMX31	31
-#define IMX_CPU_IMX35	35
-#define IMX_CPU_IMX51	51
-#define IMX_CPU_IMX53	53
-#define IMX_CPU_IMX6	6
-
 extern unsigned int __imx_cpu_type;
 
 #ifdef CONFIG_ARCH_IMX1
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
new file mode 100644
index 0000000..781ab9f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -0,0 +1,14 @@
+#ifndef __MACH_IMX_CPU_TYPES_H
+#define __MACH_IMX_CPU_TYPES_H
+
+#define IMX_CPU_IMX1	1
+#define IMX_CPU_IMX21	21
+#define IMX_CPU_IMX25	25
+#define IMX_CPU_IMX27	27
+#define IMX_CPU_IMX31	31
+#define IMX_CPU_IMX35	35
+#define IMX_CPU_IMX51	51
+#define IMX_CPU_IMX53	53
+#define IMX_CPU_IMX6	6
+
+#endif /* __MACH_IMX_CPU_TYPES_H */
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index d9f0c51..335e3e6 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -6,7 +6,8 @@ always          := $(hostprogs-y)
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
-HOSTCFLAGS_imx-image.o = -I$(srctree)
+HOSTCFLAGS_imx.o = -I$(srctree)/arch/arm/mach-imx/include
+HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
 ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
 HOSTLOADLIBES_imx-image  = `pkg-config --libs openssl`
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 0d315a2..3f62228 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -29,6 +29,7 @@
 #include <endian.h>
 #include <linux/kernel.h>
 #include <sys/file.h>
+#include <mach/imx_cpu_types.h>
 
 #include "imx.h"
 
@@ -788,7 +789,7 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (data.cpu_type == 35) {
+	if (data.cpu_type == IMX_CPU_IMX35) {
 		ret = xwrite(outfd, buf, HEADER_LEN);
 		if (ret < 0) {
 			perror("write");
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index f1accc4..4ec8c89 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -23,6 +23,7 @@
 #include <stdint.h>
 #include <errno.h>
 #include <linux/kernel.h>
+#include <mach/imx_cpu_types.h>
 
 #include "imx.h"
 
@@ -216,11 +217,11 @@ struct soc_type {
 };
 
 static struct soc_type socs[] = {
-	{ .name = "imx25", .header_version = 1, .cpu_type = 25},
-	{ .name = "imx35", .header_version = 1, .cpu_type = 35 },
-	{ .name = "imx51", .header_version = 1, .cpu_type = 51 },
-	{ .name = "imx53", .header_version = 2, .cpu_type = 53 },
-	{ .name = "imx6", .header_version = 2, .cpu_type = 6 },
+	{ .name = "imx25", .header_version = 1, .cpu_type = IMX_CPU_IMX25 },
+	{ .name = "imx35", .header_version = 1, .cpu_type = IMX_CPU_IMX35 },
+	{ .name = "imx51", .header_version = 1, .cpu_type = IMX_CPU_IMX51 },
+	{ .name = "imx53", .header_version = 2, .cpu_type = IMX_CPU_IMX53 },
+	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
 };
 
 static int do_soc(struct config_data *data, int argc, char *argv[])
@@ -238,7 +239,7 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 			data->header_version = socs[i].header_version;
 			data->cpu_type = socs[i].cpu_type;
 
-			if (data->cpu_type == 35)
+			if (data->cpu_type == IMX_CPU_IMX35)
 				data->load_size += HEADER_LEN;
 
 			return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
