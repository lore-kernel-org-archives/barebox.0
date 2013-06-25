Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRA-0000I1-0E
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:41 +0200
Message-Id: <1372152052-5463-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] ARM: split barebox_arm_head in two separate functions
To: barebox@lists.infradead.org

This adds a new function __barebox_arm_head() which defines an
the regular barebox ARM header, but which jumps to the end of
the function so that this can be embedded into another function.
barebox_arm_head() now just uses it and jumps to barebox_arm_reset_vector
just like it did before.

This makes it possible to define board specific entry points.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 9a8cc87..af7164a 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -43,7 +43,7 @@ static inline void arm_cpu_lowlevel_init(void)
 #ifdef CONFIG_HAVE_MACH_ARM_HEAD
 #include <mach/barebox-arm-head.h>
 #else
-static inline void barebox_arm_head(void)
+static inline void __barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
 #ifdef CONFIG_THUMB2_BAREBOX
@@ -52,12 +52,12 @@ static inline void barebox_arm_head(void)
 		"bx r9\n"
 		".thumb\n"
 		"1:\n"
-		"bl barebox_arm_reset_vector\n"
+		"bl 2f\n"
 		".rept 10\n"
 		"1: b 1b\n"
 		".endr\n"
 #else
-		"b barebox_arm_reset_vector\n"
+		"b 2f\n"
 		"1: b 1b\n"
 		"1: b 1b\n"
 		"1: b 1b\n"
@@ -74,6 +74,14 @@ static inline void barebox_arm_head(void)
 		".rept 8\n"
 		".word 0x55555555\n"
 		".endr\n"
+		"2:\n"
+	);
+}
+static inline void barebox_arm_head(void)
+{
+	__barebox_arm_head();
+	__asm__ __volatile__ (
+		"b barebox_arm_reset_vector\n"
 	);
 }
 #endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
