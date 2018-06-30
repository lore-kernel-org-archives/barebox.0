Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6sz-0003gM-Si
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:28 +0000
Received: by mail-pl0-x244.google.com with SMTP id c41-v6so5333371plj.10
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:53 -0700
Message-Id: <20180630034900.3324-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/11] ARM: i.MX8MQ: Add a macro to load BL31 ATF blob
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a macro containing all of the code needed to load and transfer
control to BL31 ATF blob on i.MX8M.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/atf.h | 63 ++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/atf.h

diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
new file mode 100644
index 000000000..0b5018459
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -0,0 +1,63 @@
+#ifndef __IMX_ATF_H__
+#define __IMX_ATF_H__
+
+#include <asm/system.h>
+
+#define MX8MQ_ATF_BL31_SIZE_LIMIT	SZ_64K
+#define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
+#define MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
+
+/**
+ * imx8mq_atf_load_bl31 - Load ATF BL31 blob and transfer contol to it
+ *
+ * @name:	Name of the BL31 blob
+ *
+ * This macro:
+
+ *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
+ *        expects to be placed
+ *
+ *     2. Sets up temporary stack pointer for EL2, which is execution
+ *        level that BL31 will drop us off at after it completes its
+ *        initialization routine
+ *
+ *     3. Transfers control to BL31
+ *
+ * NOTE: This has to be a macro in order delay the expansion of
+ * get_builtin_firmware(), otherwise it'll incorrectly interpret
+ * "name" literally
+ *
+ * NOTE: This function will do nothing if executed at any other EL
+ * than EL3. This is done intentionally to support single entry point
+ * initialization (see i.MX8M EVK for an example)
+ *
+ * NOTE: This function expects NXP's implementation of ATF that can be
+ * found at:
+ *     https://source.codeaurora.org/external/imx/imx-atf
+ *
+ * any other implementation may or may not work
+ *
+ */
+#define imx8mq_atf_load_bl31(name)					\
+	do {								\
+		void __noreturn (*bl31)(void) =				\
+			(void *)MX8MQ_ATF_BL31_BASE_ADDR;		\
+		size_t bl31_size;					\
+		const u8 *fw;						\
+									\
+		if (current_el() != 3)					\
+			break;						\
+									\
+		get_builtin_firmware(name, &fw, &bl31_size);		\
+		if (WARN_ON(bl31_size > MX8MQ_ATF_BL31_SIZE_LIMIT))	\
+			break;						\
+									\
+		memcpy(bl31, fw, bl31_size);				\
+		asm volatile("msr sp_el2, %0" : :			\
+			     "r" (MX8MQ_ATF_BL33_BASE_ADDR - 16) :	\
+			     "cc");					\
+									\
+		bl31();							\
+	} while (0)
+
+#endif
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
