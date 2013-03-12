Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLWy-0004wL-Tz
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:30:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Mar 2013 10:29:55 +0100
Message-Id: <1363080597-10510-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: head: Add some space behind the image header
To: barebox@lists.infradead.org

This adds 32bytes of space behind the image header (exception table
+ barebox magic) for board/SoC specific use. This can be used for
example to embed some extra information in a flashed image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 9d9b854..225a336 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -33,6 +33,13 @@ static inline void arm_cpu_lowlevel_init(void)
 	set_cr(r);
 }
 
+/*
+ * 32 bytes at this is offset is reserved in the barebox head for board/SoC
+ * usage
+ */
+#define ARM_HEAD_SPARE_OFS	0x30
+#define ARM_HEAD_SPARE_MARKER	0x55555555
+
 #ifdef CONFIG_HAVE_MACH_ARM_HEAD
 #include <mach/barebox-arm-head.h>
 #else
@@ -64,6 +71,9 @@ static inline void barebox_arm_head(void)
 							 * barebox can skip relocation
 							 */
 		".word _barebox_image_size\n"		/* image size to copy */
+		".rept 8\n"
+		".word 0x55555555\n"
+		".endr\n"
 	);
 }
 #endif
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
