Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BI-NP
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:43 +0100
Message-Id: <20180316125354.23462-68-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 67/78] ARM: aarch64: Add barebox head support
To: Barebox List <barebox@lists.infradead.org>

Allow aarch64 images to use the same image header as arm32 images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index bd9c9b1c4f..4d0da6c491 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -21,6 +21,7 @@ void cortex_a7_lowlevel_init(void);
 static inline void __barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
+#ifdef CONFIG_CPU_32
 #ifdef CONFIG_THUMB2_BAREBOX
 		".arm\n"
 		"adr r9, 1f + 1\n"
@@ -40,11 +41,23 @@ static inline void __barebox_arm_head(void)
 		"1: b 1b\n"
 		"1: b 1b\n"
 		"1: b 1b\n"
+#endif
+#else
+		"b 2f\n"
+		"nop\n"
+		"nop\n"
+		"nop\n"
+		"nop\n"
+		"nop\n"
 #endif
 		".asciz \"barebox\"\n"
+#ifdef CONFIG_CPU_32
 		".word _text\n"				/* text base. If copied there,
 							 * barebox can skip relocation
 							 */
+#else
+		".word 0xffffffff\n"
+#endif
 		".word _barebox_image_size\n"		/* image size to copy */
 		".rept 8\n"
 		".word 0x55555555\n"
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
