Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiX-0002Kw-Uj
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:05:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id j26-v6so4932895pfi.10
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:27 -0700
Message-Id: <20180810190429.10823-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] ARM: i.MX8MQ: Replace magic numbers with named constants
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c              |  6 +++---
 arch/arm/mach-imx/include/mach/imx8mq.h | 11 ++++++++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index bc463ee75..95839f31d 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -47,13 +47,13 @@ core_initcall(imx8mq_init_syscnt_frequency);
 int imx8mq_init(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
-	uint32_t reg = readl(anatop + MX8MQ_ANATOP_DIGPROG);
-	uint32_t type = (reg >> 16) & 0xff;
+	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
+				  readl(anatop + MX8MQ_ANATOP_DIGPROG));
 	struct arm_smccc_res res;
 	const char *cputypestr;
 
 	switch (type) {
-	case 0x82:
+	case IMX8M_CPUTYPE_IMX8MQ:
 		cputypestr = "i.MX8MQ";
 		break;
 	default:
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index f51d4e664..f4a537d2b 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -5,18 +5,23 @@
 #include <mach/generic.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/revision.h>
+#include <linux/bitfield.h>
 
 #define IMX8MQ_ROM_VERSION_A0	0x800
 #define IMX8MQ_ROM_VERSION_B0	0x83C
 
 #define MX8MQ_ANATOP_DIGPROG	0x6c
 
+#define DIGPROG_MAJOR	GENMASK(23, 8)
+#define DIGPROG_MINOR	GENMASK(7, 0)
+
+#define IMX8M_CPUTYPE_IMX8MQ	0x8240
+
 static inline int imx8mq_cpu_revision(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
-	uint32_t revision = readl(anatop + MX8MQ_ANATOP_DIGPROG);
-
-	revision &= 0xff;
+	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
+				      readl(anatop + MX8MQ_ANATOP_DIGPROG));
 
 	if (revision == IMX_CHIP_REV_1_0) {
 		uint32_t rom_version;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
