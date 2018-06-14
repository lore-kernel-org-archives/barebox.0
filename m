Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTLk3-0000G6-IT
 for barebox@lists.infradead.org; Thu, 14 Jun 2018 06:28:21 +0000
Received: by mail-pg0-x243.google.com with SMTP id c9-v6so2437338pgf.5
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2018 23:28:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jun 2018 23:27:45 -0700
Message-Id: <20180614062751.29856-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180614062751.29856-1-andrew.smirnov@gmail.com>
References: <20180614062751.29856-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v6 04/10] ARM: i.MX8: Add DDRC PHY support code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add DDRC PHY support code needed to upload DDR training firwmare as
well as to wait for the training process to complete.

Those are needed to support board specific DDR initialization code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile                 |   1 +
 arch/arm/mach-imx/imx8-ddrc.c              | 107 +++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx8-ddrc.h |  66 +++++++++++++
 3 files changed, 174 insertions(+)
 create mode 100644 arch/arm/mach-imx/imx8-ddrc.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx8-ddrc.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 442039a27..28fe60dba 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -17,6 +17,7 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX8MQ) += imx8mq.o
+lwl-$(CONFIG_ARCH_IMX8MQ) += imx8-ddrc.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-ddrc.c
new file mode 100644
index 000000000..18454a915
--- /dev/null
+++ b/arch/arm/mach-imx/imx8-ddrc.c
@@ -0,0 +1,107 @@
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
index 000000000..d49e29f26
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8-ddrc.h
@@ -0,0 +1,66 @@
+#ifndef __IMX8_DDRC_H__
+#define __IMX8_DDRC_H__
+
+#include <mach/imx8mq-regs.h>
+#include <io.h>
+#include <firmware.h>
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
+#define DDRC_PHY_REG(x)	((x) * 4)
+
+void ddrc_phy_wait_training_complete(void __iomem *phy);
+
+
+/*
+ * i.MX8M DDR Tool compatibility layer
+ */
+
+#define reg32_write(a, v)	writel(v, a)
+#define reg32_read(a)		readl(a)
+
+static inline void wait_ddrphy_training_complete(void)
+{
+	ddrc_phy_wait_training_complete(IOMEM(MX8MQ_DDRC_PHY_BASE_ADDR));
+}
+
+#define __ddr_load_train_code(imem, dmem)				\
+	do {								\
+		const u16 *__mem;					\
+		size_t __size;						\
+									\
+		get_builtin_firmware(imem, &__mem, &__size);		\
+		ddrc_phy_load_firmware(IOMEM(MX8MQ_DDRC_PHY_BASE_ADDR),	\
+				       DDRC_PHY_IMEM, __mem, __size);	\
+									\
+		get_builtin_firmware(dmem, &__mem, &__size);		\
+		ddrc_phy_load_firmware(IOMEM(MX8MQ_DDRC_PHY_BASE_ADDR),	\
+				       DDRC_PHY_DMEM, __mem, __size);	\
+	} while (0)
+
+#define ddr_load_train_code(imem_dmem) __ddr_load_train_code(imem_dmem)
+
+#define DDRC_IPS_BASE_ADDR(X) (0x3d400000 + (X * 0x2000000))
+
+#define DDRC_STAT(X)             (DDRC_IPS_BASE_ADDR(X) + 0x04)
+#define DDRC_MRSTAT(X)           (DDRC_IPS_BASE_ADDR(X) + 0x18)
+#define DDRC_PWRCTL(X)           (DDRC_IPS_BASE_ADDR(X) + 0x30)
+#define DDRC_RFSHCTL3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x60)
+#define DDRC_CRCPARSTAT(X)       (DDRC_IPS_BASE_ADDR(X) + 0xcc)
+#define DDRC_DFIMISC(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1b0)
+#define DDRC_DFISTAT(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1bc)
+#define DDRC_SWCTL(X)            (DDRC_IPS_BASE_ADDR(X) + 0x320)
+#define DDRC_SWSTAT(X)           (DDRC_IPS_BASE_ADDR(X) + 0x324)
+#define DDRC_PCTRL_0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x490)
+
+#define IP2APB_DDRPHY_IPS_BASE_ADDR(X) (0x3c000000 + (X * 0x2000000))
+
+#endif
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
