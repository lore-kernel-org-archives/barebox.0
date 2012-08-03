Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxAvS-00071S-Q2
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 05:59:55 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9D087FFA577
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:06:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 07:59:53 +0200
Message-Id: <1343973593-23482-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343973593-23482-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803055701.GA21069@game.jcrosoft.org>
 <1343973593-23482-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] arm: at91: add custom barebox-arm-head
To: barebox@lists.infradead.org

On at91 we need to put the size to load is the sram at the 6th exception vector

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                                   |    1 +
 arch/arm/mach-at91/include/mach/barebox-arm-head.h |   33 ++++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm-head.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8b0a28d..ce32efb 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -27,6 +27,7 @@ config ARCH_AT91
 	select GENERIC_GPIO
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
new file mode 100644
index 0000000..a9c8dd4
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
@@ -0,0 +1,33 @@
+#ifndef __MACH_ARM_HEAD_H
+#define __MACH_ARM_HEAD_H
+
+#ifdef CONFIG_SHELL_NONE
+#define AT91_EXV6	".word _barebox_image_size\n"
+#else
+#define AT91_EXV6	".word _barebox_bare_init_size\n"
+#endif
+
+static inline void barebox_arm_head(void)
+{
+	__asm__ __volatile__ (
+#ifdef CONFIG_THUMB2_BAREBOX
+#error Thumb2 is not supported
+#else
+		"b reset\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		AT91_EXV6				/* image size to load by the bootrom */
+		"1: b 1b\n"
+		"1: b 1b\n"
+#endif
+		".asciz \"barebox\"\n"
+		".word _text\n"				/* text base. If copied there,
+							 * barebox can skip relocation
+							 */
+		".word _barebox_image_size\n"		/* image size to copy */
+	);
+}
+
+#endif /* __ASM_ARM_HEAD_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
