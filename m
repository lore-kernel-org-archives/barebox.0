Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg63-0005yI-Ap
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:28 +0000
Received: by mail-pl0-x242.google.com with SMTP id w19-v6so5022338plq.4
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:39 -0700
Message-Id: <20180526204451.16530-37-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 36/48] ARM: i.MX8: Add DDRC PHY support code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add DDRC PHY support code needed to upload DDR training firwmare as
well as to wait for the training process to complete.

Those are needed to support board specific DDR initialization code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile                 |   1 +
 arch/arm/mach-imx/imx8-ddrc.c              | 114 +++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx8-ddrc.h |  35 +++++++
 3 files changed, 150 insertions(+)
 create mode 100644 arch/arm/mach-imx/imx8-ddrc.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx8-ddrc.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index a6385ff90..621062e47 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -16,6 +16,7 @@ CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_IMX8MQ) += imx8mq.o
+lwl-$(CONFIG_ARCH_IMX8MQ) += imx8-ddrc.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-ddrc.c
new file mode 100644
index 000000000..5a9a78876
--- /dev/null
+++ b/arch/arm/mach-imx/imx8-ddrc.c
@@ -0,0 +1,114 @@
+/*
+ * Define dummy get_time_ns() in order to be able to use
+ * readl_poll_timeout(). This has to happen before inclusion of
+ * <clock.h> which will happen in <common.h>
+ */
+#define get_time_ns()	0
+
+#include <common.h>
+#include <linux/iopoll.h>
+#include <mach/imx8-ddrc.h>
+#include <debug_ll.h>
+
+void ddrc_phy_load_firmware(void __iomem *phy,
+			    enum ddrc_phy_firmware_offset offset,
+			    const u16 *blob, size_t size)
+{
+	while (size) {
+		writew(*blob++, phy + DDRC_PHY_REG(offset));
+		offset++;
+		size -= sizeof(*blob);
+	}
+}
+
+enum pmc_constants {
+	PMC_MESSAGE_ID,
+	PMC_MESSAGE_STREAM,
+
+	PMC_TRAIN_SUCCESS	= 0x07,
+	PMC_TRAIN_STREAM_START	= 0x08,
+	PMC_TRAIN_FAIL		= 0xff,
+};
+
+static u32 ddrc_phy_get_message(void __iomem *phy, int type)
+{
+	u32 r, message;
+
+	/*
+	 * When BIT0 set to 0, the PMU has a message for the user
+	 * 10ms seems not enough for poll message, so use 1s here.
+	 */
+	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
+			   r, !(r & BIT(0)), 0);
+
+	switch (type) {
+	case PMC_MESSAGE_ID:
+		/*
+		 * Get the major message ID
+		 */
+		message = readl(phy + DDRC_PHY_REG(0xd0032));
+		break;
+	case PMC_MESSAGE_STREAM:
+		message = readl(phy + DDRC_PHY_REG(0xd0034));
+		message <<= 16;
+		message |= readl(phy + DDRC_PHY_REG(0xd0032));
+		break;
+	}
+
+	/*
+	 * By setting this register to 0, the user acknowledges the
+	 * receipt of the message.
+	 */
+	writel(0x00000000, phy + DDRC_PHY_REG(0xd0031));
+	/*
+	 * When BIT0 set to 0, the PMU has a message for the user
+	 */
+	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
+			   r, r & BIT(0), 0);
+
+	writel(0x00000001, phy + DDRC_PHY_REG(0xd0031));
+
+	return message;
+}
+
+static void ddrc_phy_fetch_streaming_message(void __iomem *phy)
+{
+	const u16 index = ddrc_phy_get_message(phy, PMC_MESSAGE_STREAM);
+	u16 i;
+
+	putc_ll('|');
+	puthex_ll(index);
+
+	for (i = 0; i < index; i++) {
+		const u32 arg = ddrc_phy_get_message(phy, PMC_MESSAGE_STREAM);
+
+		putc_ll('|');
+		puthex_ll(arg);
+	}
+}
+
+void ddrc_phy_wait_training_complete(void __iomem *phy)
+{
+	for (;;) {
+		const u32 m = ddrc_phy_get_message(phy, PMC_MESSAGE_ID);
+
+		puthex_ll(m);
+
+		switch (m) {
+		case PMC_TRAIN_STREAM_START:
+			ddrc_phy_fetch_streaming_message(phy);
+			break;
+		case PMC_TRAIN_SUCCESS:
+			putc_ll('P');
+			putc_ll('\r');
+			putc_ll('\n');
+			return;
+		case PMC_TRAIN_FAIL:
+			putc_ll('F');
+			hang();
+		}
+
+		putc_ll('\r');
+		putc_ll('\n');
+	}
+}
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/imx8-ddrc.h b/arch/arm/mach-imx/include/mach/imx8-ddrc.h
new file mode 100644
index 000000000..8342d903e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8-ddrc.h
@@ -0,0 +1,35 @@
+#ifndef __IMX8_DDRC_H__
+#define __IMX8_DDRC_H__
+
+#include <linux/compiler.h>
+
+enum ddrc_phy_firmware_offset {
+	DDRC_PHY_IMEM = 0x00050000U,
+	DDRC_PHY_DMEM = 0x00054000U,
+};
+
+void ddrc_phy_load_firmware(void __iomem *,
+			    enum ddrc_phy_firmware_offset,
+			    const u16 *, size_t);
+
+#define __DDRC_PHY_FIRMWARE_PAIR(f) \
+	__ddr_phy_fw_##f##_start, __ddr_phy_fw_##f##_end
+
+#define ___DDRC_PHY_FIRMWARE(s, e) \
+	s, ((size_t)((ptrdiff_t)e - (ptrdiff_t)s))
+#define __DDRC_PHY_FIRMWARE(f)	___DDRC_PHY_FIRMWARE(f)
+#define DDRC_PHY_FIRMWARE(f) \
+	__DDRC_PHY_FIRMWARE(__DDRC_PHY_FIRMWARE_PAIR(f))
+
+#define ___DDRC_PHY_FIRMWARE_DECLARE(s, e)	\
+	extern const u16 s[];			\
+	extern const u16 e[]
+#define __DDRC_PHY_FIRMWARE_DECLARE(f) ___DDRC_PHY_FIRMWARE_DECLARE(f)
+#define DDRC_PHY_FIRMWARE_DECLARE(f) \
+	__DDRC_PHY_FIRMWARE_DECLARE(__DDRC_PHY_FIRMWARE_PAIR(f))
+
+#define DDRC_PHY_REG(x)	((x) * 4)
+
+void ddrc_phy_wait_training_complete(void __iomem *phy);
+
+#endif
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
