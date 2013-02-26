Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAE6s-00067W-JY
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 06:33:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 26 Feb 2013 10:33:48 +0400
Message-Id: <1361860428-4193-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: i.MX: Replace numbers with predefined constants in
 several places
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/esdctl.c |    2 +-
 arch/arm/mach-imx/imx53.c  |    2 +-
 arch/arm/mach-imx/imx6.c   |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 3585e27..cc2bdc1 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -355,7 +355,7 @@ void __naked __noreturn imx1_barebox_entry(uint32_t boarddata)
 	unsigned long base;
 	unsigned long size;
 
-	base = 0x08000000;
+	base = MX1_CSD0_BASE_ADDR;
 
 	size = imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0);
 	if (size == SZ_64M)
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 52fb8f7..3135ada 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -60,7 +60,7 @@ static int imx53_init(void)
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX53_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx53-ccm", 0, NULL, MX53_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpt", 0, NULL, 0X53fa0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX53_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX53_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index b62f412..7a7ce15 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -59,7 +59,7 @@ static int imx6_init(void)
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx6-ccm", 0, NULL, MX6_CCM_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpt", 0, NULL, 0x02098000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX6_GPT_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX6_GPIO2_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX6_GPIO3_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
