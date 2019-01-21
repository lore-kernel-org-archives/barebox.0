Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glWfg-0004HI-3p
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 10:19:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id l15-v6so17008856lja.9
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 02:19:11 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Jan 2019 13:18:53 +0300
Message-Id: <20190121101853.23301-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: drop *_MULTI_BOARDS atavisms
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ath79_defconfig      | 1 -
 arch/mips/configs/qemu-malta_defconfig | 1 -
 arch/mips/mach-malta/Kconfig           | 8 --------
 3 files changed, 10 deletions(-)

diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index 781786bc52..8d7d5a1722 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -1,5 +1,4 @@
 CONFIG_MACH_MIPS_ATH79=y
-CONFIG_MIPS_ATH79_MULTI_BOARDS=y
 CONFIG_BOARD_8DEVICES_LIMA=y
 CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
 CONFIG_BOARD_TPLINK_MR3020=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 1314783e02..69c7b0b10a 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,4 +1,3 @@
-CONFIG_MIPS_MALTA_MULTI_BOARDS=y
 CONFIG_BOARD_QEMU_MALTA=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index ceea937e30..70799808f9 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -4,18 +4,10 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
-config MIPS_MALTA_MULTI_BOARDS
-	bool "Allow multiple boards to be selected"
-	select HAVE_PBL_MULTI_IMAGE
-
-if MIPS_MALTA_MULTI_BOARDS
-
 config BOARD_QEMU_MALTA
 	bool "qemu malta"
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
-endif # MIPS_MALTA_MULTI_BOARDS
-
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
