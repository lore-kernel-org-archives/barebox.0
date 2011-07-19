Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBa-0005BZ-Di
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:28 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 75BE6FF987B
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:22 +0200
Message-Id: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/8] at91: add missing IORESOURCE_MEM flags to resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |    1 +
 arch/arm/boards/at91sam9261ek/init.c     |    2 ++
 arch/arm/boards/at91sam9263ek/init.c     |    1 +
 arch/arm/boards/mmccpu/init.c            |    1 +
 arch/arm/boards/pm9261/init.c            |    2 ++
 arch/arm/boards/pm9263/init.c            |    1 +
 arch/arm/mach-at91/at91rm9200_devices.c  |    7 +++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   10 ++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |    6 ++++++
 arch/arm/mach-at91/at91sam9263_devices.c |    8 ++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |    9 +++++++++
 11 files changed, 48 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index b21dc5f..2b16980 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -37,6 +37,7 @@
 static struct resource cfi_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_0,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 4e52ab8..4009523 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -97,10 +97,12 @@ static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_2,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_CHIPSELECT_2 + 4,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index fe69305..af8a1e1 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -91,6 +91,7 @@ static struct resource cfi_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_0,
 		.size	= 8 * 1024 * 1024,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index b79062e..8cc5f2c 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -40,6 +40,7 @@
 static struct resource cfi_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_0,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 4811c73..ad4fa9d 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -97,10 +97,12 @@ static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_2,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_CHIPSELECT_2 + 4,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 6544837..e21e8e3 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -90,6 +90,7 @@ static struct resource cfi_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_0,
 		.size	= 4 * 1024 * 1024,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index d0502ca..16c94a6 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -38,6 +38,7 @@ static struct resource eth_resources[] = {
 	[0] = {
 		.start	= AT91_VA_BASE_EMAC,
 		.size	= 0x1000,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -92,6 +93,7 @@ static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
 		.size	= 0x10,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -151,6 +153,7 @@ static struct resource dbgu_resources[] = {
 	[0] = {
 		.start	= AT91_BASE_SYS + AT91_DBGU,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -171,6 +174,7 @@ static struct resource uart0_resources[] = {
 	[0] = {
 		.start	= AT91RM9200_BASE_US0,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -202,6 +206,7 @@ static struct resource uart1_resources[] = {
 	[0] = {
 		.start	= AT91RM9200_BASE_US1,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -235,6 +240,7 @@ static struct resource uart2_resources[] = {
 	[0] = {
 		.start	= AT91RM9200_BASE_US2,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -260,6 +266,7 @@ static struct resource uart3_resources[] = {
 	[0] = {
 		.start	= AT91RM9200_BASE_US3,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 988dd92..3808c66 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -35,6 +35,7 @@ static struct resource eth_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_EMAC,
 		.size	= 0x1000,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -85,6 +86,7 @@ static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
 		.size	= 0x10,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -128,6 +130,7 @@ static struct resource dbgu_resources[] = {
 	[0] = {
 		.start	= AT91_BASE_SYS + AT91_DBGU,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -148,6 +151,7 @@ static struct resource uart0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US0,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -181,6 +185,7 @@ static struct resource uart1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US1,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -206,6 +211,7 @@ static struct resource uart2_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US2,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -231,6 +237,7 @@ static struct resource uart3_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US3,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -256,6 +263,7 @@ static struct resource uart4_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US4,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -276,6 +284,7 @@ static struct resource uart5_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_US5,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -340,6 +349,7 @@ static struct resource mci_resources[] = {
 	[0] = {
 		.start	= AT91SAM9260_BASE_MCI,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index e00c3e0..f2a0664 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -35,6 +35,7 @@ static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
 		.size	= 0x10,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -81,6 +82,7 @@ static struct resource dbgu_resources[] = {
 	[0] = {
 		.start	= (AT91_BASE_SYS + AT91_DBGU),
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -101,6 +103,7 @@ static struct resource uart0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9261_BASE_US0,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -126,6 +129,7 @@ static struct resource uart1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9261_BASE_US1,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -151,6 +155,7 @@ static struct resource uart2_resources[] = {
 	[0] = {
 		.start	= AT91SAM9261_BASE_US2,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -205,6 +210,7 @@ static struct resource mci_resources[] = {
 	[0] = {
 		.start	= AT91SAM9261_BASE_MCI,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 752f789..c951800 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -35,6 +35,7 @@ static struct resource eth_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_EMAC,
 		.size	= 0x1000,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -84,6 +85,7 @@ static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
 		.size	= 0x10,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -127,6 +129,7 @@ static struct resource dbgu_resources[] = {
 	[0] = {
 		.start	= (AT91_BASE_SYS + AT91_DBGU),
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -147,6 +150,7 @@ static struct resource uart0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_US0,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -172,6 +176,7 @@ static struct resource uart1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_US1,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -197,6 +202,7 @@ static struct resource uart2_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_US2,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -252,6 +258,7 @@ static struct resource mci0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_MCI0,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -266,6 +273,7 @@ static struct resource mci1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9263_BASE_MCI1,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 8a02c8d..4f5279f 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -35,6 +35,7 @@ static struct resource eth_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_EMAC,
 		.size	= 0x1000,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -85,6 +86,7 @@ static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
 		.size	= 0x10,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -131,6 +133,7 @@ static struct resource dbgu_resources[] = {
 	[0] = {
 		.start	= (AT91_BASE_SYS + AT91_DBGU),
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -151,6 +154,7 @@ static struct resource uart0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_US0,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -176,6 +180,7 @@ static struct resource uart1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_US1,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -201,6 +206,7 @@ static struct resource uart2_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_US2,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -226,6 +232,7 @@ static struct resource uart3_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_US3,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -286,6 +293,7 @@ static struct resource mci0_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_MCI0,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -300,6 +308,7 @@ static struct resource mci1_resources[] = {
 	[0] = {
 		.start	= AT91SAM9G45_BASE_MCI1,
 		.size	= SZ_16K,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
