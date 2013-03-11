Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0a-0005nP-Js
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:39 +0400
Message-Id: <1362994003-22653-9-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 09/13] ARM: clps711x: Migrate to using DEFINE_RES_MEM macro
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c |  108 ++++++-------------------------------
 1 files changed, 18 insertions(+), 90 deletions(-)

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index f94b584..fba0159 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -51,49 +51,17 @@ void clps711x_setup_memcfg(int bank, u32 val)
 }
 
 static struct resource uart0_resources[] = {
-	{
-		.start	= UBRLCR1,
-		.end	= UBRLCR1,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= SYSCON1,
-		.end	= SYSCON1,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= SYSFLG1,
-		.end	= SYSFLG1,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= UARTDR1,
-		.end	= UARTDR1,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(UBRLCR1, SZ_4),
+	DEFINE_RES_MEM(SYSCON1, SZ_4),
+	DEFINE_RES_MEM(SYSFLG1, SZ_4),
+	DEFINE_RES_MEM(UARTDR1, SZ_4),
 };
 
 static struct resource uart1_resources[] = {
-	{
-		.start	= UBRLCR2,
-		.end	= UBRLCR2,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= SYSCON2,
-		.end	= SYSCON2,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= SYSFLG2,
-		.end	= SYSFLG2,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= UARTDR2,
-		.end	= UARTDR2,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(UBRLCR2, SZ_4),
+	DEFINE_RES_MEM(SYSCON2, SZ_4),
+	DEFINE_RES_MEM(SYSFLG2, SZ_4),
+	DEFINE_RES_MEM(UARTDR2, SZ_4),
 };
 
 void clps711x_add_uart(unsigned int id)
@@ -113,68 +81,28 @@ void clps711x_add_uart(unsigned int id)
 }
 
 static struct resource gpio0_resources[] = {
-	{
-		.start	= PADR,
-		.end	= PADR,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= PADDR,
-		.end	= PADDR,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(PADR, SZ_1),
+	DEFINE_RES_MEM(PADDR, SZ_1),
 };
 
 static struct resource gpio1_resources[] = {
-	{
-		.start	= PBDR,
-		.end	= PBDR,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= PBDDR,
-		.end	= PBDDR,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(PBDR, SZ_1),
+	DEFINE_RES_MEM(PBDDR, SZ_1),
 };
 
 static struct resource gpio2_resources[] = {
-	{
-		.start	= PCDR,
-		.end	= PCDR,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= PCDDR,
-		.end	= PCDDR,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(PCDR, SZ_1),
+	DEFINE_RES_MEM(PCDDR, SZ_1),
 };
 
 static struct resource gpio3_resources[] = {
-	{
-		.start	= PDDR,
-		.end	= PDDR,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= PDDDR,
-		.end	= PDDDR,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(PDDR, SZ_1),
+	DEFINE_RES_MEM(PDDDR, SZ_1),
 };
 
 static struct resource gpio4_resources[] = {
-	{
-		.start	= PEDR,
-		.end	= PEDR,
-		.flags	= IORESOURCE_MEM,
-	},
-	{
-		.start	= PEDDR,
-		.end	= PEDDR,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(PEDR, SZ_1),
+	DEFINE_RES_MEM(PEDDR, SZ_1),
 };
 
 static __init int clps711x_gpio_init(void)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
