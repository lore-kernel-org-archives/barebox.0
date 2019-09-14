Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i919G-0006vk-B1
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:03:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so14245180plr.1
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:03:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:02:47 -0700
Message-Id: <20190914060247.23673-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190914060247.23673-1-andrew.smirnov@gmail.com>
References: <20190914060247.23673-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX8MQ: Display UID information on boot
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx8mq.c              | 7 +++++++
 arch/arm/mach-imx/include/mach/imx8mq.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 089344528d..d06ba098c3 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -20,6 +20,7 @@
 #include <mach/revision.h>
 #include <mach/imx8mq.h>
 #include <mach/reset-reason.h>
+#include <mach/ocotp.h>
 
 #include <linux/iopoll.h>
 #include <linux/arm-smccc.h>
@@ -27,6 +28,11 @@
 #define FSL_SIP_BUILDINFO			0xC2000003
 #define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
 
+u64 imx8mq_uid(void)
+{
+	return imx_ocotp_read_uid(IOMEM(MX8MQ_OCOTP_BASE_ADDR));
+}
+
 int imx8mq_init(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
@@ -52,6 +58,7 @@ int imx8mq_init(void)
 	 * Reset reasons seem to be identical to that of i.MX7
 	 */
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
+	pr_info("%s unique ID: %llx\n", cputypestr, imx8mq_uid());
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
 	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index 08dc06fdb4..c085894ef7 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -49,4 +49,6 @@ static inline int imx8mq_cpu_revision(void)
 	return revision;
 }
 
+u64 imx8mq_uid(void);
+
 #endif /* __MACH_IMX8_H */
\ No newline at end of file
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
