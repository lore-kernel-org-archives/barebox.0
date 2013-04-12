Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQbDd-0008Nm-Lt
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 10:28:34 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 12 Apr 2013 12:28:16 +0200
Message-Id: <1365762505-2540-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
References: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v5 04/13] tegra: introduce Tegra 20 SoC type
To: barebox@lists.infradead.org

Tegra isn't a single architecture, but a collection of more or less
similar chip families. Introduce the same conf define as used in the
Linux kernel to differentiate between those families.

Currently we are only supporting the Tegra20 chip type.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Kconfig | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index eda786b..f91267f 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -1,11 +1,23 @@
 if ARCH_TEGRA
 
+choice
+	prompt "Tegra processor type"
+
+config ARCH_TEGRA_2x_SOC
+	bool "Tegra 20"
+
+endchoice
+
+# ---------------------------------------------------------
+
+if ARCH_TEGRA_2x_SOC
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x31fc0000
 
 choice
-	prompt "Tegra Board Type"
+	prompt "Tegra 20 Board Type"
 
 config MACH_TOSHIBA_AC100
 	bool "Toshiba AC100"
@@ -16,4 +28,8 @@ endchoice
 
 source arch/arm/boards/toshiba-ac100/Kconfig
 
+endif #ARCH_TEGRA_2x_SOC
+
+# ---------------------------------------------------------
+
 endif
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
