Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Oo-T3
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:28 +0200
Message-Id: <20190510062135.11534-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] ARM: Layerscape: ls1046a: Add bbu handlers
To: Barebox List <barebox@lists.infradead.org>

The barebox images can simply be written to the partitions, so we can
use bbu_register_std_file_update() for updating to MMC and QSPI.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/include/mach/bbu.h | 22 +++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/include/mach/bbu.h

diff --git a/arch/arm/mach-layerscape/include/mach/bbu.h b/arch/arm/mach-layerscape/include/mach/bbu.h
new file mode 100644
index 0000000000..1ea0cbb11f
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/bbu.h
@@ -0,0 +1,22 @@
+#ifndef __MACH_LAYERSCAPE_BBU_H
+#define __MACH_LAYERSCAPE_BBU_H
+
+#include <bbu.h>
+
+static inline int ls1046a_bbu_mmc_register_handler(const char *name,
+						   const char *devicefile,
+						   unsigned long flags)
+{
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_layerscape_image);
+}
+
+static inline int ls1046a_bbu_qspi_register_handler(const char *name,
+						    const char *devicefile,
+						    unsigned long flags)
+{
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_layerscape_qspi_image);
+}
+
+#endif /* __MACH_LAYERSCAPE_BBU_H */
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
