Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpeEJ-0001FR-Ql
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 17:02:57 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 19 Mar 2017 18:01:57 +0100
Message-Id: <1489942917-16190-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: i.MX7: Kconfig: ARCH_IMX7 selects PINCTRL_IMX_IOMUX_V3
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

fsl,imx7d-iomuxc is provided by selecting PINCTRL_IMX_IOMUX_V3. Select it
since a system without it will not be very usefull.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 831755c..e1459d2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -165,6 +165,7 @@ config ARCH_IMX6UL
 config ARCH_IMX7
 	bool
 	select CPU_V7
+	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
