Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XoW-0003a9-U9
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:24:12 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 13:23:57 +0400
Message-Id: <1361697839-14310-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
References: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/7] ARM: i.MX27: Use DEVICE_ID_SINGLE for IIM, CCM and ESDCTL
To: barebox@lists.infradead.org

Only one of IIM, CCM or ESDCTL device is allowed, so use DEVICE_ID_SINGLE
for these devices.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx27.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 6d30276..e9d6197 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -103,12 +103,13 @@ static int imx27_init(void)
 
 	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
 
-	add_generic_device("imx_iim", 0, NULL, MX27_IIM_BASE_ADDR, SZ_4K,
-			IORESOURCE_MEM, NULL);
+	add_generic_device("imx_iim", DEVICE_ID_SINGLE, NULL,
+			   MX27_IIM_BASE_ADDR, SZ_4K, IORESOURCE_MEM, NULL);
 
 	imx27_init_max();
 
-	add_generic_device("imx27-ccm", 0, NULL, MX27_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx27-ccm", DEVICE_ID_SINGLE, NULL,
+			   MX27_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX27_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX27_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, MX27_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
@@ -117,7 +118,8 @@ static int imx27_init(void)
 	add_generic_device("imx1-gpio", 4, NULL, MX27_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 5, NULL, MX27_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX27_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx27-esdctl", 0, NULL, MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx27-esdctl", DEVICE_ID_SINGLE, NULL,
+			   MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx27-usb-misc", 0, NULL, MX27_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
