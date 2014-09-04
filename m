Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPXOP-0007Wt-O5
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 13:48:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  4 Sep 2014 15:47:16 +0200
Message-Id: <1409838437-3625-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 3/4] DT: Add binding for Altera FPGAs in passive-serial mode
To: barebox@lists.infradead.org
Cc: devicetree@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Altera FPGAs that are programmed via SPI use the passive serial protocol.
Add a simple binding that describes the setup for this usecase.

Cc: devicetree@vger.kernel.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../devicetree/bindings/firmware/altr,passive-serial.txt    | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,passive-serial.txt

diff --git a/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
new file mode 100644
index 000000000000..1305901a4dd5
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
@@ -0,0 +1,13 @@
+Altera FPGAs in passive serial mode
+-----------------------------------
+
+This binding defines the control interface to Altera FPGAs in
+passive serial mode. This is used to upload the firmware and
+to start the FPGA.
+
+Required properties:
+- compatible: shall be "altr,fpga-passive-serial"
+- reg: SPI chip select
+- nstat-gpio: Specify GPIO for controlling the nstat pin
+- confd-gpio: Specify GPIO for controlling the confd pin
+- nconfig-gpio: Specify GPIO for controlling the nconfig pin
+
+Example:
+
+	fpga@0 {
+		compatible = "altr,fpga-passive-serial";
+		nstat-gpios = <&gpio4 18 0>;
+		confd-gpios = <&gpio4 19 0>;
+		nconfig-gpios = <&gpio4 20 0>;
+		spi-max-frequency = <10000000>;
+		reg = <0>;
+	};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
