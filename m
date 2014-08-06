Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XF8yy-0004JD-Hz
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 21:42:53 +0000
Received: by mail-lb0-f173.google.com with SMTP id u10so119753lbd.32
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 14:42:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Aug 2014 01:42:13 +0400
Message-Id: <1407361335-14875-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
References: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/6] openrisc: dts: import or1ksim.dts from linux-3.16
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
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
