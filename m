Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsDMM-0006E7-Cp
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 13:35:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsDMH-0008Ex-0D
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 15:35:05 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 15:34:49 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207201534.50481.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH/master] ARM/MXS: pull-up and bitkeeper must be handled
 differently
To: barebox@lists.infradead.org

Since commit 2f6b1f7690640f571f8e72fc2f2564acb2e13778 the pull-up and
bitkeeper handling for i.MX23/28 is correct. But now it is important to
distinguish these pin features as their programmed bit values are different.
With this patch the bitkeeper and pull-up enable/disable bits are now handled
separately.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx23.h b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
index 7b2883c..82362d7 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx23.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
@@ -22,13 +22,14 @@
  *                          ^^^^____ Bit offset
  *                        ^^________ Function
  *                       ^__________ Drive strength feature present
- *                      ^___________ Pull up / bit keeper present
+ *                      ^___________ Pull up present
  *                    ^^____________ Drive strength setting
  *                   ^______________ Pull up / bit keeper setting
  *                  ^_______________ Voltage select present
  *                 ^________________ Voltage selection
  *             ^____________________ direction if enabled as GPIO (1 = output)
  *            ^_____________________ initial output value if enabled as GPIO and configured as output
+ *           ^______________________ Bit keeper present
  */
 #ifndef __ASM_MACH_IOMUX_H
 #define __ASM_MACH_IOMUX_H
@@ -63,7 +64,7 @@
 
 /* control pad's pull up / bit keeper feature */
 #define PE (1 << 10)
-#define BK (1 << 11)	/* FIXME useful to distinguish? */
+#define BK (1 << 21)
 #define PE_PRESENT(x) (!!((x) & PE))
 #define BK_PRESENT(x) (!!((x) & BK))
 #define PULLUP(x) ((x) << 13)
diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
index ea1c3d8..82918cf 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
@@ -16,7 +16,7 @@
  *                         ^^^______ Register Number
  *                       ^^_________ Function
  *                      ^___________ Drive strength feature present
- *                     ^____________ Pull up / bit keeper present
+ *                     ^____________ Pull up present
  *                   ^^_____________ Drive strength setting
  *                  ^_______________ Pull up / bit keeper setting
  *                 ^________________ Voltage select present
@@ -24,6 +24,7 @@
  *            ^_____________________ direction if enabled as GPIO (1 = output)
  *           ^______________________ initial output value if enabled as GPIO
  *                                   and configured as output
+ *          ^_______________________ Bit keeper present
  */
 #ifndef __MACH_IOMUX_IMX28_H
 #define __MACH_IOMUX_IMX28_H
@@ -57,7 +58,7 @@
 
 /* control pad's pull up / bit keeper feature */
 #define PE (1 << 11)
-#define BK (1 << 11)	/* FIXME useful to distinguish? */
+#define BK (1 << 22)
 #define PE_PRESENT(x) (!!((x) & PE))
 #define BK_PRESENT(x) (!!((x) & BK))
 #define PULLUP(x) ((x) << 14)

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
