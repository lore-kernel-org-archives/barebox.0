Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtNvs-00087m-7M
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 02:36:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id f90so514592plb.10
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 18:36:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 18:36:17 -0800
Message-Id: <20190212023617.28291-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Subject: [PATCH] ARM: i.MX8MQ: Add code to report HDMI/eDP firmware version
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port code found in cdn_dp_load_firmware() in Linux kernel to check if
HDMI firmware is running and, if so, report its version.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 4d00da5f0..18822333c 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -21,6 +21,7 @@
 #include <mach/imx8mq.h>
 #include <mach/reset-reason.h>
 
+#include <linux/iopoll.h>
 #include <linux/arm-smccc.h>
 
 #define FSL_SIP_BUILDINFO			0xC2000003
@@ -81,3 +82,39 @@ int imx8mq_init(void)
 
 	return 0;
 }
+
+#define KEEP_ALIVE			0x18
+#define VER_L				0x1c
+#define VER_H				0x20
+#define VER_LIB_L_ADDR			0x24
+#define VER_LIB_H_ADDR			0x28
+#define FW_ALIVE_TIMEOUT_US		100000
+
+static int imx8mq_report_hdmi_firmware(void)
+{
+	void __iomem *hdmi = IOMEM(MX8MQ_HDMI_CTRL_BASE_ADDR);
+	u16 ver_lib, ver;
+	u32 reg;
+	int ret;
+
+	/* check the keep alive register to make sure fw working */
+	ret = readl_poll_timeout(hdmi + KEEP_ALIVE,
+				 reg, reg, FW_ALIVE_TIMEOUT_US);
+	if (ret < 0) {
+		pr_info("HDMI firmware is not running\n");
+		return 0;
+	}
+
+	ver = readl(hdmi + VER_H) & 0xff;
+	ver <<= 8;
+	ver |= readl(hdmi + VER_L) & 0xff;
+
+	ver_lib = readl(hdmi + VER_LIB_H_ADDR) & 0xff;
+	ver_lib <<= 8;
+	ver_lib |= readl(hdmi + VER_LIB_L_ADDR) & 0xff;
+
+	pr_info("HDMI firmware ver: %d ver_lib: %d\n", ver, ver_lib);
+
+	return 0;
+}
+console_initcall(imx8mq_report_hdmi_firmware);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
