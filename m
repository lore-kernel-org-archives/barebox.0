Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNbvl-0000XO-Jj
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 10:00:27 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat,  9 Dec 2017 10:59:35 +0100
Message-Id: <20171209095938.30160-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/4] MIPS: ar9331: add watchdog support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9331.dtsi | 6 ++++++
 drivers/watchdog/Kconfig  | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index b4b8b766b..42baae1e8 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -1,5 +1,11 @@
 / {
 	ahb {
+		wdt0: wdt@18060008 {
+			compatible = "qca,ar9331-wdt", "qca,ar9344-wdt";
+			reg = <0x18060008 0x8>;
+			clocks = <&pll ATH79_CLK_CPU>;
+		};
+
 		mac0: mac@19000000 {
 			compatible = "qca,ar9331-ge0";
 			reg = <0x18070000 0x00000100>,
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 1f04c7fba..a8f9492ac 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -12,7 +12,7 @@ if WATCHDOG
 
 config WATCHDOG_AR9344
 	bool "QCA AR9344"
-	depends on SOC_QCA_AR9344
+	depends on SOC_QCA_AR9344 || SOC_QCA_AR9331
 	help
 	  Add support for watchdog on the QCA AR9344 SoC.
 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
