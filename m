Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqa-0002q7-4g
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:45 +0000
Received: by mail-pl0-x241.google.com with SMTP id e11-v6so4391661plb.3
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:55 -0700
Message-Id: <20180720010357.22822-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/12] ARM: i.MX8MQ: Query and display ATF fimware hash if
 availible
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index dbcf4fa59..152f07bc1 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -20,11 +20,16 @@
 #include <mach/revision.h>
 #include <mach/imx8mq-regs.h>
 
+#include <linux/arm-smccc.h>
+
 #define IMX8MQ_ROM_VERSION_A0	0x800
 #define IMX8MQ_ROM_VERSION_B0	0x83C
 
 #define MX8MQ_ANATOP_DIGPROG	0x6c
 
+#define FSL_SIP_BUILDINFO			0xC2000003
+#define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
+
 static void imx8mq_silicon_revision(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
@@ -81,7 +86,17 @@ core_initcall(imx8mq_init_syscnt_frequency);
 
 int imx8mq_init(void)
 {
+	struct arm_smccc_res res;
+
 	imx8mq_silicon_revision();
 
+	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
+	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+		arm_smccc_smc(FSL_SIP_BUILDINFO,
+			      FSL_SIP_BUILDINFO_GET_COMMITHASH,
+			      0, 0, 0, 0, 0, 0, &res);
+		pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
+	}
+
 	return 0;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
