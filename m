Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw2hX-0005eZ-HI
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 07:51:16 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Oct 2016 09:50:52 +0200
Message-Id: <20161017075052.30802-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20161017075052.30802-1-s.trumtrar@pengutronix.de>
References: <20161017075052.30802-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 3/3] ARM: socfpga: dtsi: add dw-wdt reset lines
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index d16758fdab46..66d7f21dc6a3 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -49,3 +49,13 @@
 &f2s_sdram_ref_clk {
 	clock-frequency = <0>;
 };
+
+&watchdog0 {
+	resets = <&rst L4WD0_RESET>;
+	reset-names = "dw-wdt";
+};
+
+&watchdog1 {
+	resets = <&rst L4WD1_RESET>;
+	reset-names = "dw-wdt";
+};
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
