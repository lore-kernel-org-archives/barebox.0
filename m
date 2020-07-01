Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDl-0004r2-W9
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:30 +0200
Message-Id: <20200701052340.9462-19-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 18/28] ARM: at91: add code for sama5 boot source detection
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

SAMA5 BootROM passes information about the boot source in the r4
register. Add functions to parse these. To make use of this, entry point
must back up the r4 register, because otherwise it's clobbered by local
variable use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../mach-at91/include/mach/sama5_bootsource.h | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5_bootsource.h

diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
new file mode 100644
index 000000000000..29354dcaf34d
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef AT91_SAMA5_BOOTSOURCE_H_
+#define AT91_SAMA5_BOOTSOURCE_H_
+
+#include <errno.h>
+#include <bootsource.h>
+#include <linux/bitops.h>
+#include <linux/bitfield.h>
+#include <mach/hardware.h>
+
+/* Boot modes stored by BootROM in r4 */
+#define SAMA5_BOOTSOURCE_SPI	0
+#define SAMA5_BOOTSOURCE_MCI	1
+#define SAMA5_BOOTSOURCE_SMC	2
+#define SAMA5_BOOTSOURCE_TWI	3
+#define SAMA5_BOOTSOURCE_QSPI	4
+#define SAMA5_BOOTSOURCE_SAM_BA	7
+
+#define SAMA5_BOOTSOURCE		GENMASK(3, 0)
+#define SAMA5_BOOTSOURCE_INSTANCE	GENMASK(7, 4)
+
+static inline int sama5_bootsource(u32 reg)
+{
+	u32 dev = FIELD_GET(SAMA5_BOOTSOURCE, reg);
+
+	switch(dev) {
+	case SAMA5_BOOTSOURCE_MCI:
+		return BOOTSOURCE_MMC;
+	case SAMA5_BOOTSOURCE_SPI:
+		return BOOTSOURCE_SPI_NOR;
+	case SAMA5_BOOTSOURCE_QSPI:
+		return BOOTSOURCE_SPI;
+	case SAMA5_BOOTSOURCE_SMC:
+		return BOOTSOURCE_NAND;
+	case SAMA5_BOOTSOURCE_SAM_BA:
+		return BOOTSOURCE_SERIAL;
+	}
+	return BOOTSOURCE_UNKNOWN;
+}
+
+static inline int sama5_bootsource_instance(u32 reg)
+{
+	return FIELD_GET(SAMA5_BOOTSOURCE_INSTANCE, reg);
+}
+
+#endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
