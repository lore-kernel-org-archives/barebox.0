Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHEn8-00017F-3B
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 20:05:12 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 21 Nov 2017 21:04:34 +0100
Message-Id: <1511294675-14438-2-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
References: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/3] MIPS: dts: ar9344: add watchdog node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
index 0a7171b..009ff6f 100644
--- a/arch/mips/dts/ar9344.dtsi
+++ b/arch/mips/dts/ar9344.dtsi
@@ -58,6 +58,13 @@
 				#clock-cells = <1>;
 			};
 
+			wdt0: wdt@18060008 {
+				compatible = "qca,ar9344-wdt";
+				reg = <0x18060008 0x8>;
+				clocks = <&pll ATH79_CLK_CPU>;
+				status = "disabled";
+			};
+
 			spi: spi@1f000000 {
 				compatible = "qca,ar7100-spi", "qca,ar9344-spi";
 				reg = <0x1f000000 0x1c>;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
