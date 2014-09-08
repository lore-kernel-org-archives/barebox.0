Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspn-0004mv-AX
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:56 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so1931140lbd.1
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:06 +0400
Message-Id: <1410159189-17328-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/7] openrisc: dts: import or1ksim.dts from linux-3.16
To: barebox@lists.infradead.org

There are some minor changes with original linux-3.16 file:

  * the 'model' attribute is added (it used for barebox banner board name);
  * all "opencores,*-rtlsvn*" 'compatible' attribute values are dropped;
    these values are not actually used in the device drivers.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/dts/or1ksim.dts | 51 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/openrisc/dts/or1ksim.dts b/arch/openrisc/dts/or1ksim.dts
new file mode 100644
index 0000000..7316cc6
--- /dev/null
+++ b/arch/openrisc/dts/or1ksim.dts
@@ -0,0 +1,51 @@
+/dts-v1/;
+/ {
+	model = "or1ksim";
+	compatible = "opencores,or1ksim";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	interrupt-parent = <&pic>;
+
+	chosen {
+		bootargs = "console=uart,mmio,0x90000000,115200";
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x02000000>;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		cpu@0 {
+			compatible = "opencores,or1200-rtlsvn481";
+			reg = <0>;
+			clock-frequency = <20000000>;
+		};
+	};
+
+	/*
+	 * OR1K PIC is built into CPU and accessed via special purpose
+	 * registers.  It is not addressable and, hence, has no 'reg'
+	 * property.
+	 */
+	pic: pic {
+		compatible = "opencores,or1k-pic";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	serial0: serial@90000000 {
+		compatible = "ns16550a";
+		reg = <0x90000000 0x100>;
+		interrupts = <2>;
+		clock-frequency = <50000000>;
+	};
+
+	enet0: ethoc@92000000 {
+		compatible = "opencores,ethoc";
+		reg = <0x92000000 0x100>;
+		interrupts = <4>;
+	};
+};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
