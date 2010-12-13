Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020A-Sb
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:48 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qq-TL
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Ia-Q8
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:29 +0100
Message-Id: <1292237617-7064-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/14] STM378x: Separate i.MX23 clock handling
To: barebox@lists.infradead.org

Separate i.MX23 clock handling to simplify the addition of the upcoming i.MX28.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/clock-imx23.h |   26 ++++++++++++++++++++++++++
 arch/arm/mach-stm/include/mach/clock.h       |   19 ++++++-------------
 2 files changed, 32 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx23.h

diff --git a/arch/arm/mach-stm/include/mach/clock-imx23.h b/arch/arm/mach-stm/include/mach/clock-imx23.h
new file mode 100644
index 0000000..bb499f2
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/clock-imx23.h
@@ -0,0 +1,26 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef MACH_CLOCK_IMX23_H
+# define MACH_CLOCK_IMX23_H
+
+unsigned imx_get_mpllclk(void);
+unsigned imx_get_emiclk(void);
+unsigned imx_get_ioclk(void);
+unsigned imx_get_armclk(void);
+unsigned imx_get_hclk(void);
+unsigned imx_get_xclk(void);
+unsigned imx_get_sspclk(unsigned);
+unsigned imx_set_sspclk(unsigned, unsigned, int);
+unsigned imx_set_ioclk(unsigned);
+
+#endif /* MACH_CLOCK_IMX23_H */
diff --git a/arch/arm/mach-stm/include/mach/clock.h b/arch/arm/mach-stm/include/mach/clock.h
index 0e1a6d6..5200e89 100644
--- a/arch/arm/mach-stm/include/mach/clock.h
+++ b/arch/arm/mach-stm/include/mach/clock.h
@@ -17,18 +17,11 @@
  * MA 02111-1307 USA
  */
 
-#ifndef ASM_ARCH_CLOCK_IMX23_H
-#define ASM_ARCH_CLOCK_IMX23_H
+#ifndef __MACH_CLOCK_H
+# define __MACH_CLOCK_H
 
-unsigned imx_get_mpllclk(void);
-unsigned imx_get_emiclk(void);
-unsigned imx_get_ioclk(void);
-unsigned imx_get_armclk(void);
-unsigned imx_get_hclk(void);
-unsigned imx_get_xclk(void);
-unsigned imx_get_sspclk(unsigned);
-unsigned imx_set_sspclk(unsigned, unsigned, int);
-unsigned imx_set_ioclk(unsigned);
-
-#endif /* ASM_ARCH_CLOCK_IMX23_H */
+#if defined CONFIG_ARCH_IMX23
+# include <mach/clock-imx23.h>
+#endif
 
+#endif /* __MACH_CLOCK_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
