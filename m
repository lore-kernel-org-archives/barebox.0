Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Th-1G
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:17 +0200
Message-Id: <1348483583-12586-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] ARM i.MX51: Use defines rather than hardcoded addresses
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 022614f..b1eeb0c 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -74,11 +74,11 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx31-gpt", 0, NULL, 0x73fa0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 0, NULL, 0x73f84000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 1, NULL, 0x73f88000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 2, NULL, 0x73f8c000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-gpio", 3, NULL, 0x73f90000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX51_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX51_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX51_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX51_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, MX51_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
