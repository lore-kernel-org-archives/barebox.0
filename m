Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQvGU-0007Mn-Tc
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 09:29:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  8 Sep 2014 11:29:11 +0200
Message-Id: <1410168551-6588-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1410168551-6588-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1410168551-6588-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v4 5/5] DT: Add binding for Altera SOCFPGA FPGA Manager
To: barebox@lists.infradead.org
Cc: devicetree@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Altera SOCFPGA have a FPGA Manager, that manages and monitors the FPGA portion
of the SoC.

Cc: devicetree@vger.kernel.org
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../bindings/firmware/altr,socfpga-fpga-mgr.txt       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt

diff --git a/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt
new file mode 100644
index 000000000000..70ec4abf25b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt
@@ -0,0 +1,19 @@
+Altera SOCFPGA FPGA Manager
+---------------------------
+
+This binding defines the FPGA Manager on Altera SOCFPGAs. This is used to upload
+the firmware to the FPGA part of the SoC.
+
+Required properties:
+- compatible: shall be "altr,socfpga-fpga-mgr"
+- reg: Must contain 2 register ranges:
+	1. The control address space of the FPGA manager.
+	2. The configuration data address space where the firmware data is written to.
+
+Example:
+
+	fpgamgr@ff706000 {
+		compatible = "altr,socfpga-fpga-mgr";
+		reg = <0xff706000 0x1000>,
+		      <0xffb90000 0x1000>;
+	};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
