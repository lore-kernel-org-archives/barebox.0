Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005RD-9L
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:16 +0200
Message-Id: <20201012062619.20400-9-a.fatoum@pengutronix.de>
In-Reply-To: <20201012062619.20400-1-a.fatoum@pengutronix.de>
References: <20201012062619.20400-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 09/12] sandbox: dts: implement reboot mode
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Having a default reboot mode in the device tree allows testing the
functionality out of sandbox without prior setup.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/dts/sandbox.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 93824cba9da5..be96745b4274 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -8,6 +8,7 @@
 	#size-cells = <2>;
 
 	aliases {
+		bmode = &bmode;
 	};
 
 	chosen {
@@ -23,8 +24,17 @@
 	};
 
 	stickypage: stickypage {
-		compatible = "barebox,hostfile", "syscon";
+		compatible = "barebox,hostfile", "syscon", "simple-mfd";
 		reg = <0 0 0 4096>;
+		barebox,cdev; /* no caching allowed */
+
+		bmode: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0>;
+			mask = <0xffffff00>;
+			mode-normal = <0x00000000>;
+			mode-loader = <0xbbbbbb00>;
+		};
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
