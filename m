Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008F3-PB
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:37 +0100
Message-Id: <1385132083-7484-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/16] ARM: am335x: Add reg-shift property to uarts
To: barebox@lists.infradead.org

Since we use the generic ns16550 driver we need the regshift property
to correcty access the UART.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am33xx.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/am33xx.dtsi b/arch/arm/dts/am33xx.dtsi
index f6d8ffe..a9ca40c 100644
--- a/arch/arm/dts/am33xx.dtsi
+++ b/arch/arm/dts/am33xx.dtsi
@@ -171,6 +171,7 @@
 			ti,hwmods = "uart1";
 			clock-frequency = <48000000>;
 			reg = <0x44e09000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <72>;
 			status = "disabled";
 		};
@@ -180,6 +181,7 @@
 			ti,hwmods = "uart2";
 			clock-frequency = <48000000>;
 			reg = <0x48022000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <73>;
 			status = "disabled";
 		};
@@ -189,6 +191,7 @@
 			ti,hwmods = "uart3";
 			clock-frequency = <48000000>;
 			reg = <0x48024000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <74>;
 			status = "disabled";
 		};
@@ -198,6 +201,7 @@
 			ti,hwmods = "uart4";
 			clock-frequency = <48000000>;
 			reg = <0x481a6000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <44>;
 			status = "disabled";
 		};
@@ -207,6 +211,7 @@
 			ti,hwmods = "uart5";
 			clock-frequency = <48000000>;
 			reg = <0x481a8000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <45>;
 			status = "disabled";
 		};
@@ -216,6 +221,7 @@
 			ti,hwmods = "uart6";
 			clock-frequency = <48000000>;
 			reg = <0x481aa000 0x2000>;
+			reg-shift = <2>;
 			interrupts = <46>;
 			status = "disabled";
 		};
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
