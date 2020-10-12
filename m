Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrI3-0005UF-Tc
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:13 +0200
Message-Id: <20201012062619.20400-6-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 06/12] sandbox: dts: define default environment node
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Now that we can define a hostfile that's persistent over barebox resets,
but does not rely on a hard coded filename, we can have an always-on
environment node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/dts/sandbox.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index b3327837a38a..afca02d41014 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -11,10 +11,30 @@
 	};
 
 	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &part_env;
+		};
 	};
 
 	memory {
 		device_type = "memory";
 		reg = <0 0 0 0>;
 	};
+
+	stickypage: stickypage {
+		compatible = "barebox,hostfile";
+		reg = <0 0 0 4096>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			part_env: env@400 {
+				reg = <0x400 0x800>;
+				label = "env";
+			};
+		};
+	};
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
