Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZOQ-0007fS-4R
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 14:50:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jun 2020 16:50:16 +0200
Message-Id: <20200617145016.2919-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: rpi: dts: fix MMIO resources clash breaking boot
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The rpi3b device tree specifies 1G of RAM in the memory node, but maps
the highest 16M of RAM's physical address range for peripheral use.

When support for device tree probing was first added for the rpi3b
in e8fab18835a1 ("ARM: rpi: switch to DT probe and multi-image build"),
it had a memory { } node overriding the kernel node size with 0, so the
size is computed later correctly.

1dc748b3b202 ("dts: update to v5.1-rc1") came and renamed the upstream
memory { } node to memory@0. So instead of overriding the old, we
now created a second dummy along with the broken node.
barebox did only parse the dummy, so it continued to limp along.

8226f7f90973 ("of: base: parse all available memory nodes") started
considering both nodes and rendered barebox v2020.05.0 unable to start
up on the rpi3b because of the conflict between RAM range and peripherals
like the bcm2835_mbox caused by parsing the broken memory node.

At least one board also was broken for the same reason[1], so a more
robust approach is in order. For nodes that lack a phandle, the
&{/path} syntax can be used instead. This has the benefit that should
the path disappear in future, a compile failure would result.

[1] 0d26ce1c11a1 ("ARM: Phytec phyFLEX i.MX6: delete wrong memory node")

Fixes: 1dc748b3b202 ("dts: update to v5.1-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

please apply to master. v2020.05.0 and v2020.06.0 are both unbootable on
at least the rpi3b

Cheers,
Ahmad
---
 arch/arm/dts/bcm2835-rpi.dts     | 6 +++---
 arch/arm/dts/bcm2836-rpi-2.dts   | 6 +++---
 arch/arm/dts/bcm2837-rpi-3.dts   | 6 +++---
 arch/arm/dts/bcm2837-rpi-cm3.dts | 6 +++---
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index c23e7c7c142b..4f227508010b 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -4,10 +4,10 @@
 	chosen {
 		stdout-path = &uart0;
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@0} {
+	reg = <0x0 0x0>;
 };
 
 &sdhci {
diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
index 42b6abb180de..c9c3892d6a21 100644
--- a/arch/arm/dts/bcm2836-rpi-2.dts
+++ b/arch/arm/dts/bcm2836-rpi-2.dts
@@ -4,8 +4,8 @@
 	chosen {
 		stdout-path = &uart0;
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@0} {
+	reg = <0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index 420525b9e857..d66beddb2281 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -4,10 +4,10 @@
 	chosen {
 		stdout-path = &uart1;
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@0} {
+	reg = <0x0 0x0>;
 };
 
 &sdhci {
diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts b/arch/arm/dts/bcm2837-rpi-cm3.dts
index 01c1f9a67714..85a6ac46619a 100644
--- a/arch/arm/dts/bcm2837-rpi-cm3.dts
+++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
@@ -4,8 +4,8 @@
 	chosen {
 		stdout-path = &uart0;
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@0} {
+	reg = <0x0 0x0>;
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
