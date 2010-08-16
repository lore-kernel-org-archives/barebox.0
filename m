Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P2-0000aP-LY
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:08 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:33 +0300
Message-Id: <2877284976393f4aa54f0c65c81ba668c944fbad.1281966840.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/6] imx: move IIM registers to their own header
To: barebox@lists.infradead.org

This allows the use of IIM registers from code which is not mx35 specific.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/imx35.c                   |    1 +
 arch/arm/mach-imx/include/mach/iim.h        |   42 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx35-regs.h |   18 -----------
 3 files changed, 43 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/iim.h

diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index d78a4c5..74d63eb 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -18,6 +18,7 @@
 #include <common.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
+#include <mach/iim.h>
 #include <mach/generic.h>
 
 #include "gpio.h"
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
new file mode 100644
index 0000000..6e13547
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -0,0 +1,42 @@
+/*
+ * (c) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __MACH_IMX_IIM_H
+#define __MACH_IMX_IIM_H
+
+#define IIM_STAT	0x0000
+#define IIM_STATM	0x0004
+#define IIM_ERR		0x0008
+#define IIM_EMASK	0x000C
+#define IIM_FCTL	0x0010
+#define IIM_UA		0x0014
+#define IIM_LA		0x0018
+#define IIM_SDAT	0x001C
+#define IIM_PREV	0x0020
+#define IIM_SREV	0x0024
+#define IIM_PREG_P	0x0028
+#define IIM_SCS0	0x002C
+#define IIM_SCS1	0x0030
+#define IIM_SCS2	0x0034
+#define IIM_SCS3	0x0038
+
+#endif /* __MACH_IMX_IIM_H */
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 899e57b..c394a2a 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -76,24 +76,6 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
-
-#define IIM_STAT	0x0000
-#define IIM_STATM	0x0004
-#define IIM_ERR		0x0008
-#define IIM_EMASK	0x000C
-#define IIM_FCTL	0x0010
-#define IIM_UA		0x0014
-#define IIM_LA		0x0018
-#define IIM_SDAT	0x001C
-#define IIM_PREV	0x0020
-#define IIM_SREV	0x0024
-#define IIM_PREG_P	0x0028
-#define IIM_SCS0	0x002C
-#define IIM_SCS1	0x0030
-#define IIM_SCS2	0x0034
-#define IIM_SCS3	0x0038
-
-
 /*
  * Adresses and ranges of the external chip select lines
  */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
