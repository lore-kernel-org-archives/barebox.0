Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJIgt-0002E7-Gw
 for barebox@lists.infradead.org; Sat, 02 Jul 2016 11:02:29 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat,  2 Jul 2016 13:00:12 +0200
Message-Id: <1467457212-8979-2-git-send-email-akurz@blala.de>
In-Reply-To: <1467457212-8979-1-git-send-email-akurz@blala.de>
References: <1467457212-8979-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] ARM i.MX31 iomux: remove duplicates with alternate name
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Three iomux were accessinble with two distinct names, typo?
Remove the unused duplicates.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx31.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx31.h b/arch/arm/mach-imx/include/mach/iomux-mx31.h
index 0cad793..c814c15 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx31.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx31.h
@@ -573,10 +573,7 @@ enum iomux_pins {
 #define MX31_PIN_CONTRAST__CONTRAST	IOMUX_MODE(MX31_PIN_CONTRAST, IOMUX_CONFIG_FUNC)
 #define MX31_PIN_D3_SPL__D3_SPL		IOMUX_MODE(MX31_PIN_D3_SPL, IOMUX_CONFIG_FUNC)
 #define MX31_PIN_D3_CLS__D3_CLS		IOMUX_MODE(MX31_PIN_D3_CLS, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_LCS0__GPI03_23		IOMUX_MODE(MX31_PIN_LCS0, IOMUX_CONFIG_GPIO)
 #define MX31_PIN_GPIO1_1__GPIO          IOMUX_MODE(MX31_PIN_GPIO1_1, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_I2C_CLK__SCL		IOMUX_MODE(MX31_PIN_I2C_CLK, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_I2C_DAT__SDA		IOMUX_MODE(MX31_PIN_I2C_DAT, IOMUX_CONFIG_FUNC)
 #define MX31_PIN_DCD_DTE1__I2C2_SDA	IOMUX_MODE(MX31_PIN_DCD_DTE1, IOMUX_CONFIG_ALT2)
 #define MX31_PIN_RI_DTE1__I2C2_SCL	IOMUX_MODE(MX31_PIN_RI_DTE1, IOMUX_CONFIG_ALT2)
 #define MX31_PIN_CSPI2_SS2__I2C3_SDA	IOMUX_MODE(MX31_PIN_CSPI2_SS2, IOMUX_CONFIG_ALT1)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
