Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051c-1k
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:09:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:42 +0100
Message-Id: <1355342991-549-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
References: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM i.MX31: Fix gpio device names
To: barebox@lists.infradead.org

Has to be imx31-gpio, not imx-gpio.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx31.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 52be541..2882675 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -34,9 +34,9 @@ static int imx31_init(void)
 	add_generic_device("imx31-iomux", 0, NULL, MX31_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-ccm", 0, NULL, MX31_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX31_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 0, NULL, MX31_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, MX31_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, MX31_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX31_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX31_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX31_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX31_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-esdctl", 0, NULL, MX31_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
