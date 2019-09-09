Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7G1N-0001cA-AD
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:31:43 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B1E284001D
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 09:31:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Sep 2019 11:31:29 +0200
Message-Id: <20190909093130.30666-3-ahmad@a3f.at>
In-Reply-To: <20190909093130.30666-1-ahmad@a3f.at>
References: <20190909093130.30666-1-ahmad@a3f.at>
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
Subject: [PATCH v2 2/3] sandbox: dts: add example for barebox,
 hostfile backed state
To: barebox@lists.infradead.org

Previous commit now allows probing barebox,hostfile to be probed from
device tree. Add a barebox state node that shows how to use it. It's not
included by default, same as barebox-libftdi-example.dtsi in the same
directory.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/dts/sandbox-state-example.dtsi | 50 +++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 arch/sandbox/dts/sandbox-state-example.dtsi

diff --git a/arch/sandbox/dts/sandbox-state-example.dtsi b/arch/sandbox/dts/sandbox-state-example.dtsi
new file mode 100644
index 000000000000..fc17bd078899
--- /dev/null
+++ b/arch/sandbox/dts/sandbox-state-example.dtsi
@@ -0,0 +1,50 @@
+/ {
+	aliases {
+		state = &state;
+	};
+
+	disk {
+		compatible = "barebox,hostfile";
+		barebox,filename = "disk";
+		reg = <0x0 0x0 0x100000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			hostfile_state: state@0 {
+				reg = <0x0 0x1000>;
+				label = "state";
+			};
+		};
+	};
+
+	state: state {
+		magic = <0xaa3b86a6>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&hostfile_state>;
+		backend-storage-type = "direct";
+		backend-stridesize = <64>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		vars {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			x {
+				reg = <0x0 0x4>;
+				type = "uint32";
+				default = <1>;
+			};
+
+			y {
+				reg = <0x4 0x4>;
+				type = "uint32";
+				default = <3>;
+			};
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
