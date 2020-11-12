Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdA4H-0005tz-KJ
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:43:07 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 12 Nov 2020 11:42:56 +0100
Message-Id: <20201112104256.13608-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: vexpress: move Options to ARCH_VEXPRESS
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

---
 arch/arm/Kconfig               | 1 +
 arch/arm/mach-vexpress/Kconfig | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5342de54c1..ab0bf03013 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -223,6 +223,7 @@ config ARCH_VEXPRESS
 	select AMBA_SP804
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	select OFTREE
 	select OFDEVICE
 	select RELOCATABLE
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 7677a1411b..9d301f7ae8 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -6,7 +6,6 @@ config ARCH_TEXT_BASE
 
 config MACH_VEXPRESS
 	bool "ARM Vexpress"
-	select COMMON_CLK_OF_PROVIDER
 
 config MACH_VIRT
 	bool "QEMU virt"
-- 
2.29.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
