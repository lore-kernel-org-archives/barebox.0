Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cagxS-0004u7-8J
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 10:55:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 11:55:19 +0100
Message-Id: <20170206105519.5583-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX7: Add imx7s.dtsi
To: Barebox List <barebox@lists.infradead.org>

Needed for compiling the i.MX7 warp board which already includes this
file.

This file is necessary because the upstream dtsi file currently assigns
MX7D_CLK_DUMMY to the gpt1 clock we use, so we won't get a meaningful
clock rate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx7s.dtsi | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 arch/arm/dts/imx7s.dtsi

diff --git a/arch/arm/dts/imx7s.dtsi b/arch/arm/dts/imx7s.dtsi
new file mode 100644
index 000000000..95c790719
--- /dev/null
+++ b/arch/arm/dts/imx7s.dtsi
@@ -0,0 +1,4 @@
+&gpt1 {
+	clocks = <&clks IMX7D_GPT1_ROOT_CLK>,
+		 <&clks IMX7D_GPT1_ROOT_CLK>;
+};
\ No newline at end of file
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
