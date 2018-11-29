Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSUaG-0003Bk-Et
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 22:14:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id f23so2634993lfc.13
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2018 14:14:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 30 Nov 2018 01:14:28 +0300
Message-Id: <20181129221428.4505-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] kconfig: include common Kconfig files from top-level Kconfig
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Based on this linux kernel commit:

> commit 1572497cb0e6d2016078bc9d5a95786bb878389f
> Author: Christoph Hellwig <hch@lst.de>
> Date:   Tue Jul 31 13:39:30 2018 +0200
>
>     kconfig: include common Kconfig files from top-level Kconfig

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Kconfig               | 8 ++++++++
 arch/arm/Kconfig      | 9 ---------
 arch/blackfin/Kconfig | 8 --------
 arch/mips/Kconfig     | 8 --------
 arch/nios2/Kconfig    | 8 --------
 arch/openrisc/Kconfig | 8 --------
 arch/ppc/Kconfig      | 7 -------
 arch/sandbox/Kconfig  | 8 --------
 arch/x86/Kconfig      | 8 --------
 9 files changed, 8 insertions(+), 64 deletions(-)

diff --git a/Kconfig b/Kconfig
index 197dd1c4b3..5c99e666c0 100644
--- a/Kconfig
+++ b/Kconfig
@@ -10,4 +10,12 @@ config SRCARCH
 
 source "arch/$SRCARCH/Kconfig"
 
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
+source crypto/Kconfig
+source firmware/Kconfig
 source "scripts/Kconfig"
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3b486f7b8b..cdc22efdeb 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -412,12 +412,3 @@ config ARM_PSCI_DEBUG
 	  Only use for debugging.
 
 endmenu
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
-source firmware/Kconfig
diff --git a/arch/blackfin/Kconfig b/arch/blackfin/Kconfig
index 6233614e19..c9b5512c0a 100644
--- a/arch/blackfin/Kconfig
+++ b/arch/blackfin/Kconfig
@@ -64,11 +64,3 @@ config BFIN_BOOT_FLASH16
 	  blackfin is strapped to boot from 16bit wide flash via boot ROM
 
 endchoice
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 524375a81a..7c40991cab 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -353,11 +353,3 @@ config MIPS_OPTIMIZED_STRING_FUNCTIONS
 	  increase your binary size.
 
 endmenu
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
index 199540ba74..c7c13a464b 100644
--- a/arch/nios2/Kconfig
+++ b/arch/nios2/Kconfig
@@ -27,11 +27,3 @@ config EARLY_PRINTF
 	bool "Enable early printf functions"
 
 endmenu
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 2a8abf0ff8..32d23029d8 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -27,11 +27,3 @@ config GENERIC
 	select OPENRISC
 
 endchoice
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 97e6c00689..7a45ced7cd 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -20,10 +20,3 @@ endchoice
 
 source arch/ppc/mach-mpc5xxx/Kconfig
 source arch/ppc/mach-mpc85xx/Kconfig
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 3f1cefb837..5227cb624f 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -15,11 +15,3 @@ config LINUX
 
 config ARCH_LINUX
 	bool
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 52ccf4894f..3f91585d02 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -97,11 +97,3 @@ endchoice
 
 source arch/x86/boot/Kconfig
 source arch/x86/mach-i386/Kconfig
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
-- 
2.20.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
