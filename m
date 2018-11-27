Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRXw2-0002Tx-OR
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 07:37:34 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 27 Nov 2018 08:37:13 +0100
Message-Id: <20181127073714.16472-10-o.rempel@pengutronix.de>
In-Reply-To: <20181127073714.16472-1-o.rempel@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 09/10] MIPS: remove HAS_NO_BOARD_HL_CODE support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

With multiimage support it makes no more sense,
every board should have Makefile and some lowlevel code.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/Kconfig            | 3 ---
 arch/mips/Makefile           | 2 --
 arch/mips/mach-ath79/Kconfig | 2 --
 3 files changed, 7 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 3934b803a5..088d02424f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -26,9 +26,6 @@ config GENERIC_LINKER_SCRIPT
 	bool
 	default y
 
-config HAS_NO_BOARD_HL_CODE
-	bool
-
 config PHYS_ADDR_T_64BIT
 	bool
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 422e844d9f..c08e53ca3d 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -103,9 +103,7 @@ else
 MACH  :=
 endif
 
-ifndef CONFIG_HAS_NO_BOARD_HL_CODE
 common-y += $(BOARD)
-endif
 
 common-y += $(MACH)
 common-y += arch/mips/lib/
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index e992af2824..e943de64de 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -35,7 +35,6 @@ config BOARD_8DEVICES_LIMA
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
-	select HAS_NO_BOARD_HL_CODE
 
 config BOARD_DPTECHNICS_DPT_MODULE
 	bool "DPTechnics DPT-Module"
@@ -43,7 +42,6 @@ config BOARD_DPTECHNICS_DPT_MODULE
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
-	select HAS_NO_BOARD_HL_CODE
 
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
