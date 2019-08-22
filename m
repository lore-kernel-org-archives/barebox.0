Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZl-0003JQ-LJ
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:52:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2019 14:51:56 +0200
Message-Id: <20190822125158.10296-7-s.hauer@pengutronix.de>
In-Reply-To: <20190822125158.10296-1-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: nxp-imx8mq-evk: Replace trampoline
To: Barebox List <barebox@lists.infradead.org>

When the TF-A finishes it jumps to a hardcoded address in DRAM. We used
to put a trampoline there which brings us back to our image in SRAM.
Instead of putting a trampoline into DRAM just copy the image there
which simplifies things a bit.

Note that currently imx8_esdhc_load_piggy() uses that very same address
as a temporary buffer. This is changed in the next patch. Currently the
board is broken anyway, so we don't break bisectability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/Makefile     |  2 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c   | 27 ++++-----------------
 arch/arm/boards/nxp-imx8mq-evk/trampoline.S | 10 --------
 3 files changed, 6 insertions(+), 33 deletions(-)
 delete mode 100644 arch/arm/boards/nxp-imx8mq-evk/trampoline.S

diff --git a/arch/arm/boards/nxp-imx8mq-evk/Makefile b/arch/arm/boards/nxp-imx8mq-evk/Makefile
index 7907de411f..2995f06f0f 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mq-evk/Makefile
@@ -1,2 +1,2 @@
 obj-y += board.o
-lwl-y += lowlevel.o ddr_init.o ddrphy_train.o trampoline.o
+lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index cb1c499cb0..46dba16ec3 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -56,27 +56,6 @@ static void nxp_imx8mq_evk_sram_setup(void)
 	ddr_init();
 }
 
-extern unsigned char trampoline_start[];
-extern unsigned char trampoline_end[];
-
-static void nxp_imx8mq_evk_install_tfa_trampoline(void)
-{
-	unsigned int tramp_len;
-	unsigned int offset;
-	/*
-	 * Create a trampoline which is places in DRAM and calls back into the
-	 * PBL entry function found in the TCRAM. Register x0 is set to 1 to
-	 * indicate that DRAM setup was already run.
-	 */
-	tramp_len = (void *)trampoline_end - (void *)trampoline_start;
-	memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, (void *)trampoline_start,
-	       tramp_len);
-
-	offset = get_runtime_offset();
-	memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR + tramp_len, &offset,
-	       sizeof(offset));
-}
-
 /*
  * Power-on execution flow of start_nxp_imx8mq_evk() might not be
  * obvious for a very first read, so here's, hopefully helpful,
@@ -117,8 +96,12 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	 */
 	if (current_el() == 3) {
 		nxp_imx8mq_evk_sram_setup();
-		nxp_imx8mq_evk_install_tfa_trampoline();
 		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
+		/*
+		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR in
+		 * EL2. Copy ourselves there.
+		 */
+		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, _text, __bss_start - _text);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 	}
 
diff --git a/arch/arm/boards/nxp-imx8mq-evk/trampoline.S b/arch/arm/boards/nxp-imx8mq-evk/trampoline.S
deleted file mode 100644
index 54a1b76518..0000000000
--- a/arch/arm/boards/nxp-imx8mq-evk/trampoline.S
+++ /dev/null
@@ -1,10 +0,0 @@
-/* SPDX-License-Identifier: (GPL-2.0) */
-#include <linux/linkage.h>
-#include <asm/sections.h>
-	.section .trampoline,"a"
-	.globl  trampoline_start
-trampoline_start:
-	ldr	w19, trampoline_end
-	br      x19
-	.globl  trampoline_end
-trampoline_end:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
