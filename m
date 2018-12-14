Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXkuB-0003ua-Dw
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 10:41:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 11:40:57 +0100
Message-Id: <20181214104100.6296-3-s.hauer@pengutronix.de>
In-Reply-To: <20181214104100.6296-1-s.hauer@pengutronix.de>
References: <20181214104100.6296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: AT91: remove unused function
To: Barebox List <barebox@lists.infradead.org>

at91rm9200_set_type() is unused. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/setup.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index adc614c42c..a2f594bbd0 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -24,17 +24,6 @@ void __initdata (*at91_boot_soc)(void);
 struct at91_socinfo at91_soc_initdata;
 EXPORT_SYMBOL(at91_soc_initdata);
 
-void __init at91rm9200_set_type(int type)
-{
-	if (type == ARCH_REVISON_9200_PQFP)
-		at91_soc_initdata.subtype = AT91_SOC_RM9200_PQFP;
-	else
-		at91_soc_initdata.subtype = AT91_SOC_RM9200_BGA;
-
-	pr_info("AT91: filled in soc subtype: %s\n",
-		at91_get_soc_subtype(&at91_soc_initdata));
-}
-
 static void __init soc_detect(u32 dbgu_base)
 {
 	u32 cidr, socid;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
