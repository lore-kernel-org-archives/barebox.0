Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045h-JO
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:28 +0100
Message-Id: <1359705587-9762-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 15/34] ARM netx boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Only one board supported, the nxdb500. Uses hardcoded SDRAM settings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |    2 ++
 arch/arm/boards/netx/platform.S |    7 +++++--
 arch/arm/mach-netx/Kconfig      |    1 -
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 79f797e..3197f8b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -72,6 +72,8 @@ config ARCH_MXS
 config ARCH_NETX
 	bool "Hilscher NetX based"
 	select CPU_ARM926T
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
diff --git a/arch/arm/boards/netx/platform.S b/arch/arm/boards/netx/platform.S
index 0438921..95ac13b 100644
--- a/arch/arm/boards/netx/platform.S
+++ b/arch/arm/boards/netx/platform.S
@@ -16,10 +16,13 @@
  * GNU General Public License for more details.
  *
  */
-
+#include <sizes.h>
 #include <asm/barebox-arm-head.h>
 
 .globl reset
 reset:
 	common_reset r0
-	b board_init_lowlevel_return
+	mov	r0, #0x80000000
+	mov	r1, #SZ_64M
+	mov	r2, #0
+	b	barebox_arm_entry
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index b767e54..8d8f49b 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -45,7 +45,6 @@ choice
 config MACH_NXDB500
 	bool "Hilscher Netx nxdb500"
 	select HAS_NETX_ETHER
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Hilscher Netx nxdb500 board
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
