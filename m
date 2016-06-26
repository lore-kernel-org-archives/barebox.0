Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHAoW-0003Aq-QB
 for barebox@lists.infradead.org; Sun, 26 Jun 2016 14:13:35 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Jun 2016 16:11:16 +0200
Message-Id: <1466950276-16649-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: imx_v7_defconfig: enable LED_GPIO_OF
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

GPIO leds are widely used in imx_v7 related dts files. Enable support
to parse this data and enable blinking LED by defconfig on e.g. iMX35qsb.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 5ab3433..8594965 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -164,6 +164,7 @@ CONFIG_MFD_MC9SDZ60=y
 CONFIG_MFD_STMPE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
