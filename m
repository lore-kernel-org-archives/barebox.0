Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FJ-Dk
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:32 +0200
Message-Id: <1376731537-12102-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] ARM: i.MX23: Fix double include protection
To: barebox@lists.infradead.org

Using __ASM_MACH_IOMUX_H will break once we introduce a
iomux.h which uses exactly this string as double include
protection. Use a SoC specific string instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/iomux-imx23.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx23.h b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
index ebe0ac4..39d6981 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx23.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
@@ -27,8 +27,8 @@
  *            ^_____________________ initial output value if enabled as GPIO and configured as output
  *           ^______________________ Bit keeper present
  */
-#ifndef __ASM_MACH_IOMUX_H
-#define __ASM_MACH_IOMUX_H
+#ifndef __ASM_MACH_IOMUX_MX23_H
+#define __ASM_MACH_IOMUX_MX23_H
 
 /* control pad's function */
 #define FBIT_SHIFT (3)
@@ -422,4 +422,4 @@
 #define EMI_DQM0		(FUNC(0) | PORTF(7, 0) | SE | VE | PE)
 #define EMI_DQM0_DISABLED	(FUNC(3) | PORTF(7, 0) | SE | VE | PE)
 
-#endif /* __ASM_MACH_IOMUX_H */
+#endif /* __ASM_MACH_IOMUX_MX23_H */
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
