Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Of-Sg
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:24 +0200
Message-Id: <20190510062135.11534-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] ARM: Layerscape: ls1046a: Add bootsource detection
 support
To: Barebox List <barebox@lists.infradead.org>

Not much to do, there are only a few boot sources supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile             |  1 +
 arch/arm/mach-layerscape/boot.c               | 39 +++++++++++++++++++
 .../mach-layerscape/include/mach/layerscape.h |  2 +
 3 files changed, 42 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/boot.c

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 269839254b..ad4e2f7af3 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -2,3 +2,4 @@ obj- := __dummy__.o
 lwl-y += lowlevel.o errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
 obj-y += icid.o
+obj-pbl-y += boot.o
diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boot.c
new file mode 100644
index 0000000000..c804977d22
--- /dev/null
+++ b/arch/arm/mach-layerscape/boot.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <init.h>
+#include <bootsource.h>
+#include <mach/layerscape.h>
+#include <soc/fsl/immap_lsch2.h>
+
+enum bootsource ls1046_bootsource_get(void)
+{
+	void __iomem *dcfg = IOMEM(LSCH2_DCFG_ADDR);
+	uint32_t rcw_src;
+
+	rcw_src = in_be32(dcfg) >> 23;
+
+	if (rcw_src == 0x40)
+		return BOOTSOURCE_MMC;
+	if ((rcw_src & 0x1fe) == 0x44)
+		return BOOTSOURCE_SPI_NOR;
+	if ((rcw_src & 0x1f0) == 0x10)
+		/* 8bit NOR Flash */
+		return BOOTSOURCE_NOR;
+	if ((rcw_src & 0x1f0) == 0x20)
+		/* 16bit NOR Flash */
+		return BOOTSOURCE_NOR;
+
+	return BOOTSOURCE_UNKNOWN;
+}
+
+static int ls1046a_bootsource_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1046a"))
+		return 0;
+
+	bootsource_set(ls1046_bootsource_get());
+
+	return 0;
+}
+coredevice_initcall(ls1046a_bootsource_init);
\ No newline at end of file
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
index 55e0b7bc96..3366e7f258 100644
--- a/arch/arm/mach-layerscape/include/mach/layerscape.h
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -4,4 +4,6 @@
 #define LS1046A_DDR_SDRAM_BASE	0x80000000
 #define LS1046A_DDR_FREQ	2100000000
 
+enum bootsource ls1046_bootsource_get(void);
+
 #endif /* __MACH_LAYERSCAPE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
