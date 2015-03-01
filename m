Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS33M-0006zh-Ix
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:33:01 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:22 +0100
Message-Id: <1425213143-4529-17-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 16/17] sandbox: add sample dts
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/Makefile          |  2 ++
 arch/sandbox/dts/.gitignore    |  1 +
 arch/sandbox/dts/Makefile      | 11 +++++++++++
 arch/sandbox/dts/sandbox.dts   | 13 +++++++++++++
 arch/sandbox/dts/skeleton.dtsi | 13 +++++++++++++
 5 files changed, 40 insertions(+)
 create mode 100644 arch/sandbox/dts/.gitignore
 create mode 100644 arch/sandbox/dts/Makefile
 create mode 100644 arch/sandbox/dts/sandbox.dts
 create mode 100644 arch/sandbox/dts/skeleton.dtsi

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index e3fb03955407..a539a901fc8d 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -50,4 +50,6 @@ cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 
 common-y += $(BOARD) arch/sandbox/os/
 
+common-$(CONFIG_OFTREE) += arch/sandbox/dts/
+
 CLEAN_FILES += $(BOARD)/barebox.lds
diff --git a/arch/sandbox/dts/.gitignore b/arch/sandbox/dts/.gitignore
new file mode 100644
index 000000000000..077903c50a26
--- /dev/null
+++ b/arch/sandbox/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
new file mode 100644
index 000000000000..6f6838857849
--- /dev/null
+++ b/arch/sandbox/dts/Makefile
@@ -0,0 +1,11 @@
+ifeq ($(CONFIG_OFTREE),y)
+dtb-y += \
+	sandbox.dtb
+endif
+
+# just to build a built-in.o. Otherwise compilation fails when no devicetree is
+# created.
+obj- += dummy.o
+
+always := $(dtb-y)
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
new file mode 100644
index 000000000000..b4cb1d1dfc4d
--- /dev/null
+++ b/arch/sandbox/dts/sandbox.dts
@@ -0,0 +1,13 @@
+/dts-v1/;
+
+#include "skeleton.dtsi"
+
+/ {
+	aliases {
+		fd0 = &fd0;
+	};
+
+	fd0: fd@0 {
+		compatible = "barebox,hostfile";
+	};
+};
diff --git a/arch/sandbox/dts/skeleton.dtsi b/arch/sandbox/dts/skeleton.dtsi
new file mode 100644
index 000000000000..38ead821bb42
--- /dev/null
+++ b/arch/sandbox/dts/skeleton.dtsi
@@ -0,0 +1,13 @@
+/*
+ * Skeleton device tree; the bare minimum needed to boot; just include and
+ * add a compatible value.  The bootloader will typically populate the memory
+ * node.
+ */
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <1>;
+	chosen { };
+	aliases { };
+	memory { device_type = "memory"; reg = <0 0 0>; };
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
