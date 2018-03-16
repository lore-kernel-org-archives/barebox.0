Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BM-NK
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:34 +0100
Message-Id: <20180316125354.23462-59-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 58/78] ARM: aarch64: hide some config options
To: Barebox List <barebox@lists.infradead.org>

EABI and ATAGS have no meaning on aarch64, so hide the options from the
user.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 563475205d..37cde0c0c5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -286,6 +286,7 @@ config ARM_ASM_UNIFIED
 
 config AEABI
 	bool "Use the ARM EABI to compile barebox"
+	depends on !CPU_V8
 	help
 	  This option allows for barebox to be compiled using the latest
 	  ARM ABI (aka EABI).
@@ -308,7 +309,7 @@ config THUMB2_BAREBOX
 
 config ARM_BOARD_APPEND_ATAG
 	bool "Let board specific code to add ATAGs to be passed to the kernel"
-	depends on ARM_LINUX
+	depends on ARM_LINUX && !CPU_V8
 	help
 	  This option is purely to start some vendor provided kernels.
 	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
