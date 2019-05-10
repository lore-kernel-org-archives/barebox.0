Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Oj-Sj
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:27 +0200
Message-Id: <20190510062135.11534-7-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] ARM: Layerscape: ls1046a: Add automatic bootsource
 detection xload function
To: Barebox List <barebox@lists.infradead.org>

Add a helper function which continues booting from the detected
boot source.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile             |  2 +-
 arch/arm/mach-layerscape/include/mach/xload.h |  2 ++
 arch/arm/mach-layerscape/xload.c              | 24 +++++++++++++++++++
 3 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-layerscape/xload.c

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 4705154fb1..73cd61a7cf 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -3,4 +3,4 @@ lwl-y += lowlevel.o errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
 obj-y += icid.o
 obj-pbl-y += boot.o
-pbl-y += xload-qspi.o
+pbl-y += xload-qspi.o xload.o
diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/arch/arm/mach-layerscape/include/mach/xload.h
index 94756ed13d..eb2d998865 100644
--- a/arch/arm/mach-layerscape/include/mach/xload.h
+++ b/arch/arm/mach-layerscape/include/mach/xload.h
@@ -4,5 +4,7 @@
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
 int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 					     unsigned long r2);
+int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2);
 
 #endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-layerscape/xload.c b/arch/arm/mach-layerscape/xload.c
new file mode 100644
index 0000000000..54495d7f97
--- /dev/null
+++ b/arch/arm/mach-layerscape/xload.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <bootsource.h>
+#include <mach/layerscape.h>
+#include <mach/xload.h>
+
+int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
+			      unsigned long r2)
+{
+	enum bootsource src;
+
+	src = ls1046_bootsource_get();
+
+	switch (src) {
+	case BOOTSOURCE_SPI_NOR:
+		return ls1046a_qspi_start_image(r0, r1, r2);
+	case BOOTSOURCE_MMC:
+		return ls1046a_esdhc_start_image(r0, r1, r2);
+	default:
+		pr_err("Unknown bootsource\n");
+		return -EINVAL;
+	}
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
