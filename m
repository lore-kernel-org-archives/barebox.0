Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TM-0004yI-Uw
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:41 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:28 +0100
Message-Id: <20201109134430.21156-7-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: vexpress: move Options to ARCH_VEXPRESS
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

In preparation for the qemu virt image, move the KConfig options from
MACH_VEXPRESS to ARCH_VEXPRESS. Also remove the choice, since we allow
multiple boards to be selected with HAVE_PBL_MULTI_IMAGES.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/Kconfig               | 4 ++++
 arch/arm/mach-vexpress/Kconfig | 8 --------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ea6d459dfe..91da0e4ff3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -223,6 +223,10 @@ config ARCH_VEXPRESS
 	select AMBA_SP804
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
+	select OFTREE
+	select OFDEVICE
+	select RELOCATABLE
+	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index aaa535f073..4058177b3a 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -4,17 +4,9 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x0
 
-choice
-	prompt "ARM Board type"
-
 config MACH_VEXPRESS
 	bool "ARM Vexpress"
-	select RELOCATABLE
-	select HAVE_PBL_MULTI_IMAGES
-	select OFTREE
-	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 
-endchoice
 
 endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
