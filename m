Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6NRa-0002RQ-1l
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 15:43:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 16:43:19 +0100
Message-Id: <1360942999-7282-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360942999-7282-1-git-send-email-s.hauer@pengutronix.de>
References: <1360942999-7282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX21: Fix device names for gpio
To: barebox@lists.infradead.org

The i.MX21 has a imx1 gpio type. Change the name accordingly, otherwise
the gpio driver does not probe successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx21.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index cddf3c0..91cd4bd 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -30,12 +30,12 @@ static int imx21_init(void)
 
 	add_generic_device("imx21-ccm", 0, NULL, MX21_CCM_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX21_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, MX21_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, MX21_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, MX21_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 4, NULL, MX21_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 5, NULL, MX21_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, MX21_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, MX21_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, MX21_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 4, NULL, MX21_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 5, NULL, MX21_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX21_WDOG_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
