Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgF0i-0007f0-Pv
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 15:31:40 +0100
Message-Id: <1384266701-12608-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
References: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] DT: Add binding for Altera FPGAs in passive-serial mode
To: barebox@lists.infradead.org
Cc: devicetree@vger.kernel.org, jbe@pengutronix.de

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: devicetree@vger.kernel.org
---
 .../devicetree/bindings/firmware/altr,passive-serial.txt    | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,passive-serial.txt

diff --git a/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
new file mode 100644
index 0000000..6d40c91
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
+- compatible: shall be "altr,passive-serial"
+- reg: SPI chip select
+- nstat-gpio: Specify GPIO for controlling the nstat pin
+- confd-gpio: Specify GPIO for controlling the confd pin
+- nconfig-gpio: Specify GPIO for controlling the nconfig pin
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
