Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTbOh-0002wJ-61
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 22:06:49 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id B308180380
 for <barebox@lists.infradead.org>; Sat,  8 Jul 2017 00:06:22 +0200 (CEST)
Date: Sat, 8 Jul 2017 00:06:21 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170707220621.GA28540@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 1/2] at91: sync mach/barebox-arm-head.h
To: Barebox List <barebox@lists.infradead.org>

From 308f9f62554feaffaf3e2a0c7203e57b6fde8abc Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri, 7 Jul 2017 17:53:59 +0200
Subject: [PATCH 1/2] at91: sync mach/barebox-arm-head.h

To prepare for multi image support synch the barebox-arm-head.h
header with the arm version.
This include the reservation of a small area for board specific use

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/include/mach/barebox-arm-head.h | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
index d4bb96f63..e0e07500a 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
@@ -7,13 +7,13 @@
 #define AT91_EXV6	".word _barebox_bare_init_size\n"
 #endif
 
-static inline void barebox_arm_head(void)
+static inline void __barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
 #ifdef CONFIG_THUMB2_BAREBOX
 #error Thumb2 is not supported
 #else
-		"b barebox_arm_reset_vector\n"
+		"b 2f\n"
 		"1: b 1b\n"
 		"1: b 1b\n"
 		"1: b 1b\n"
@@ -27,7 +27,19 @@ static inline void barebox_arm_head(void)
 							 * barebox can skip relocation
 							 */
 		".word _barebox_image_size\n"		/* image size to copy */
+		".rept 8\n"
+		".word 0x55555555\n"
+		".endr\n"
+		"2:\n"
+	);
+}
+
+static inline void barebox_arm_head(void)
+{
+	__barebox_arm_head();
+	__asm__ __volatile__ (
+		"b barebox_arm_reset_vector\n"
 	);
 }
 
-#endif /* __ASM_ARM_HEAD_H */
+#endif /* __MACH_ARM_HEAD_H */
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
