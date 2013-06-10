Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp47.i.mail.ru ([94.100.177.107])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlwIa-0002Oy-Ee
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 07:13:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 10 Jun 2013 11:13:18 +0400
Message-Id: <1370848400-10380-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: ccmx51: Export available module GPIOs to barebox
 userspace
To: barebox@lists.infradead.org

Patch will help to develop user devices connected to module, so
user can operate GPIOs in barebox console.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c   | 24 ++++++++++++++++++++++++
 arch/arm/boards/ccxmx51/ccxmx51js.c |  1 -
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 7f92043..d34759a 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -176,6 +176,30 @@ static iomux_v3_cfg_t ccxmx51_pads[] = {
 	MX51_PAD_GPIO1_7__GPIO1_7,
 	/* MMA7455LR IRQ2 (GPIO1.6) */
 	MX51_PAD_GPIO1_6__GPIO1_6,
+	/* User GPIOs */
+	MX51_PAD_GPIO1_0__GPIO1_0,
+	MX51_PAD_GPIO1_1__GPIO1_1,
+	MX51_PAD_GPIO1_8__GPIO1_8,
+	MX51_PAD_DI1_PIN11__GPIO3_0,
+	MX51_PAD_DI1_PIN12__GPIO3_1,
+	MX51_PAD_DI1_PIN13__GPIO3_2,
+	MX51_PAD_DI1_D0_CS__GPIO3_3,
+	MX51_PAD_DI1_D1_CS__GPIO3_4,
+	MX51_PAD_DISPB2_SER_DIN__GPIO3_5,
+	MX51_PAD_DISPB2_SER_DIO__GPIO3_6,
+	MX51_PAD_DISPB2_SER_CLK__GPIO3_7,
+	MX51_PAD_DISPB2_SER_RS__GPIO3_8,
+	MX51_PAD_NANDF_RB1__GPIO3_9,
+	MX51_PAD_NANDF_RB2__GPIO3_10,
+	MX51_PAD_NANDF_RB3__GPIO3_11,
+	MX51_PAD_CSI1_D8__GPIO3_12,
+	MX51_PAD_CSI1_D9__GPIO3_13,
+	MX51_PAD_NANDF_CS1__GPIO3_17,
+	MX51_PAD_NANDF_CS2__GPIO3_18,
+	MX51_PAD_NANDF_CS3__GPIO3_19,
+	MX51_PAD_NANDF_CS4__GPIO3_20,
+	MX51_PAD_NANDF_CS5__GPIO3_21,
+	MX51_PAD_NANDF_CS6__GPIO3_22,
 };
 
 #define CCXMX51_ECSPI1_CS0	IMX_GPIO_NR(4, 24)
diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index ae31caf..7d269c3 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -63,7 +63,6 @@ static iomux_v3_cfg_t ccxmx51js_pads[] = {
 	MX51_PAD_USBH1_DATA5__USBH1_DATA5,
 	MX51_PAD_USBH1_DATA6__USBH1_DATA6,
 	MX51_PAD_USBH1_DATA7__USBH1_DATA7,
-	MX51_PAD_DISPB2_SER_RS__GPIO3_8,	/* Reset */
 };
 
 static struct esdhc_platform_data sdhc1_pdata = {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
