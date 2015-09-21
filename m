Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze1jZ-000533-Lg
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 14:06:23 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 21 Sep 2015 16:04:44 +0200
Message-Id: <1442844284-27870-5-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
References: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 4/4] socfpga dts: set have-hw-ecc-fixup for nand
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This enables the denali driver ecc fixup as it is enabled in the kernel
dts, too, and the tested MT29F8G08ABABAWP does not work properly
without it when having ecc fixup active in kernel.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 14c0654..e673541 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -540,6 +540,7 @@
 			interrupts = <0x0 0x90 0x4>;
 			dma-mask = <0xffffffff>;
 			clocks = <&nand_clk>;
+			have-hw-ecc-fixup;
 			status = "disabled";
 		};
 
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
