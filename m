Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJ0U-0007Fx-WC
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 09:53:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id p17so961271lfh.4
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2018 01:53:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Nov 2018 12:52:47 +0300
Message-Id: <20181129095247.24443-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] Kconfig: drop duplicate PHYS_ADDR_T_64BIT definitions
To: barebox@lists.infradead.org

PHYS_ADDR_T_64BIT is already defined in common/Kconfig.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/Kconfig | 3 ---
 arch/mips/Kconfig    | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 2359c56b30..f3b35d19fd 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -1,8 +1,5 @@
 comment "Processor Type"
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config CPU_32
 	bool
 	select HAS_MODULES
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 524375a81a..75bfcb74e9 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -29,9 +29,6 @@ config GENERIC_LINKER_SCRIPT
 config HAS_NO_BOARD_HL_CODE
 	bool
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 menu "Machine selection"
 
 config BUILTIN_DTB
-- 
2.20.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
