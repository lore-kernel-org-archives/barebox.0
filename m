Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipS8J-0001tB-AF
 for barebox@lists.infradead.org; Thu, 09 Jan 2020 07:21:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id u71so6005697lje.11
 for <barebox@lists.infradead.org>; Wed, 08 Jan 2020 23:21:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2020 10:21:22 +0300
Message-Id: <20200109072122.13886-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dts: rename tplink-mr3020.dts -> ar9331_tl_mr3020.dts
To: barebox@lists.infradead.org

Linux MIPS uses <soc-name>_<board-name>.dts board dts-file
naming scheme so use it in barebox too.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/lowlevel.S                 | 2 +-
 arch/mips/dts/Makefile                                    | 2 +-
 arch/mips/dts/{tplink-mr3020.dts => ar9331_tl_mr3020.dts} | 0
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boards/tplink-mr3020/lowlevel.S b/arch/mips/boards/tplink-mr3020/lowlevel.S
index b96292ecc4..5844530986 100644
--- a/arch/mips/boards/tplink-mr3020/lowlevel.S
+++ b/arch/mips/boards/tplink-mr3020/lowlevel.S
@@ -17,4 +17,4 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 
 	ar9331_pbl_generic_start
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, tplink_mr3020, SZ_32M)
+ENTRY_FUNCTION_END(BOARD_PBL_START, ar9331_tl_mr3020, SZ_32M)
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 7485f85a14..b3660cd286 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -11,7 +11,7 @@ pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dt
 pbl-dtb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
 pbl-dtb-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
 pbl-dtb-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
-pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020.dtb.o
+pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += ar9331_tl_mr3020.dtb.o
 pbl-dtb-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/ar9331_tl_mr3020.dts
similarity index 100%
rename from arch/mips/dts/tplink-mr3020.dts
rename to arch/mips/dts/ar9331_tl_mr3020.dts
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
