Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqS-0002pM-BE
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id r1-v6so5274661pgp.11
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:49 -0700
Message-Id: <20180720010357.22822-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180720010357.22822-1-andrew.smirnov@gmail.com>
References: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/12] ARM: i.MX8MQ: Add code to load BL31 ATF blob
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add imx8mq_atf_load_bl31() containing all of the code needed to load
and transfer control to BL31 ATF blob on i.MX8M.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile           |  2 +-
 arch/arm/mach-imx/atf.c              | 41 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/atf.h | 13 +++++++++
 3 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/atf.c
 create mode 100644 arch/arm/mach-imx/include/mach/atf.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 28fe60dba..595a7512c 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -17,7 +17,7 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX8MQ) += imx8mq.o
-lwl-$(CONFIG_ARCH_IMX8MQ) += imx8-ddrc.o
+lwl-$(CONFIG_ARCH_IMX8MQ) += imx8-ddrc.o atf.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
new file mode 100644
index 000000000..2b956b6bd
--- /dev/null
+++ b/arch/arm/mach-imx/atf.c
@@ -0,0 +1,41 @@
+#include <common.h>
+#include <mach/atf.h>
+
+/**
+ * imx8mq_atf_load_bl31 - Load ATF BL31 blob and transfer contol to it
+ *
+ * @fw:		Pointer to the BL31 blob
+ * @fw_size:	Size of the BL31 blob
+ *
+ * This function:
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
+ * NOTE: This function expects NXP's implementation of ATF that can be
+ * found at:
+ *     https://source.codeaurora.org/external/imx/imx-atf
+ *
+ * any other implementation may or may not work
+ *
+ */
+void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
+{
+	void __noreturn (*bl31)(void) = (void *)MX8MQ_ATF_BL31_BASE_ADDR;
+
+	if (WARN_ON(fw_size > MX8MQ_ATF_BL31_SIZE_LIMIT))
+		return;
+
+	memcpy(bl31, fw, fw_size);
+
+	asm volatile("msr sp_el2, %0" : :
+		     "r" (MX8MQ_ATF_BL33_BASE_ADDR - 16) :
+		     "cc");
+	bl31();
+}
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
new file mode 100644
index 000000000..aeb24bad0
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -0,0 +1,13 @@
+#ifndef __IMX_ATF_H__
+#define __IMX_ATF_H__
+
+#include <linux/sizes.h>
+#include <asm/system.h>
+
+#define MX8MQ_ATF_BL31_SIZE_LIMIT	SZ_64K
+#define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
+#define MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
+
+void imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
+
+#endif
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
