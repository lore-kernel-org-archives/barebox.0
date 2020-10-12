Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005RC-9U
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:18 +0200
Message-Id: <20201012062619.20400-11-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 11/12] sandbox: dts: include state node by default
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For testing barebox-state, it would be nice to have a state
pre-configured out-of-the-box. Add one to sandbox.dts.

Because the barebox message on an non-configured state can looks
quite scary, add an init script that tells the user that all
is well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/board/env/init/state           | 12 +++++
 arch/sandbox/dts/sandbox-state-example.dtsi | 50 ---------------------
 arch/sandbox/dts/sandbox.dts                | 35 +++++++++++++++
 3 files changed, 47 insertions(+), 50 deletions(-)
 create mode 100644 arch/sandbox/board/env/init/state
 delete mode 100644 arch/sandbox/dts/sandbox-state-example.dtsi

diff --git a/arch/sandbox/board/env/init/state b/arch/sandbox/board/env/init/state
new file mode 100644
index 000000000000..0b8e40409f97
--- /dev/null
+++ b/arch/sandbox/board/env/init/state
@@ -0,0 +1,12 @@
+if [ "x$state.dirty" != "x1" -o $global.system.reset != "POR" ]; then
+    exit
+fi
+
+source /env/data/ansi-colors
+
+echo -e $CYAN
+echo "******************************************************************"
+echo "*** Inconsistent barebox state buckets detected on first boot ***"
+echo "***         barebox will repair them on next shutdown         ***"
+echo "*****************************************************************"
+echo -e -n $NC
diff --git a/arch/sandbox/dts/sandbox-state-example.dtsi b/arch/sandbox/dts/sandbox-state-example.dtsi
deleted file mode 100644
index 98640f6677cf..000000000000
--- a/arch/sandbox/dts/sandbox-state-example.dtsi
+++ /dev/null
@@ -1,50 +0,0 @@
-/ {
-	aliases {
-		state = &state;
-	};
-
-	disk {
-		compatible = "barebox,hostfile";
-		barebox,filename = "disk";
-		reg = <0x0 0x0 0x0 0x100000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			hostfile_state: state@0 {
-				reg = <0x0 0x1000>;
-				label = "state";
-			};
-		};
-	};
-
-	state: state {
-		magic = <0xaa3b86a6>;
-		compatible = "barebox,state";
-		backend-type = "raw";
-		backend = <&hostfile_state>;
-		backend-storage-type = "direct";
-		backend-stridesize = <64>;
-
-		#address-cells = <1>;
-		#size-cells = <1>;
-		vars {
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			x {
-				reg = <0x0 0x4>;
-				type = "uint32";
-				default = <1>;
-			};
-
-			y {
-				reg = <0x4 0x4>;
-				type = "uint32";
-				default = <3>;
-			};
-		};
-	};
-};
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index f830adecf796..afe48154c488 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -9,6 +9,7 @@
 
 	aliases {
 		bmode = &bmode;
+		state = &state;
 	};
 
 	chosen {
@@ -23,6 +24,35 @@
 		reg = <0 0 0 0>;
 	};
 
+	state: state {
+		magic = <0xaa3b86a6>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&part_state>;
+		backend-storage-type = "direct";
+		backend-stridesize = <64>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
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
+
 	stickypage: stickypage {
 		compatible = "barebox,hostfile", "syscon", "simple-mfd";
 		reg = <0 0 0 4096>;
@@ -47,6 +77,11 @@
 				reg = <0x400 0x800>;
 				label = "env";
 			};
+
+			part_state: state@800 {
+				reg = <0xC00 0x400>;
+				label = "state";
+			};
 		};
 	};
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
