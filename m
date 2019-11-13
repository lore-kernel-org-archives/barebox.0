Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoxm-0001aj-Fb
 for barebox@lists.infradead.org; Wed, 13 Nov 2019 09:29:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Nov 2019 10:29:20 +0100
Message-Id: <20191113092920.22469-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-10-a.fatoum@pengutronix.de>
References: <20191112091956.26628-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! ARM: stm32mp: dk2: don't hard-code memory size
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While Linux doesn't have a device node for the DDR controller,
U-Boot and ARM TF-A do and they both use the st,stm32mp1-ddr compatible,
which encompasses both DDRCTRL and DDRPHY. Follow suit.
---
 arch/arm/dts/stm32mp157c.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index bd2aabe6343a..e416c89856a2 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -27,7 +27,7 @@
 
 	soc {
 		memory-controller@5a003000 {
-			compatible = "st,stm32-ddrctrl";
+			compatible = "st,stm32mp1-ddr";
 			reg = <0x5a003000 0x1000>;
 		};
 	};
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
