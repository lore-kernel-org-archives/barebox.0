Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAbcV-0005uQ-Kz
 for barebox@lists.infradead.org; Mon, 12 Jan 2015 09:49:17 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 12 Jan 2015 10:48:43 +0100
Message-Id: <1421056125-17142-8-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1421056125-17142-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1421056125-17142-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 7/9] ARM: boards: socfpga new mem calibration function
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Markus Pargmann <mpa@pengutronix.de>

Use the new socfpga_mem_calibration function. This is a sideeffect of
the new script to import generated sequencer code. The return value of
the function is 1 if the calibration succeeds, 0 otherwise.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/ebv-socrates/lowlevel.c   | 5 ++---
 arch/arm/boards/terasic-sockit/lowlevel.c | 5 ++---
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 7fc81678ef39..a415fab2eb6f 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -83,9 +83,8 @@ static noinline void socrates_entry(void)
 
 	puts_ll("SDRAM calibration...\n");
 
-	ret = socfpga_sdram_calibration(inst_rom_init, inst_rom_init_size,
-				ac_rom_init, ac_rom_init_size);
-	if (ret)
+	ret = socfpga_mem_calibration();
+	if (!ret)
 		hang();
 
 	puts_ll("done\n");
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 0683435a7b61..0b90329f1882 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -83,9 +83,8 @@ static noinline void sockit_entry(void)
 
 	puts_ll("SDRAM calibration...\n");
 
-	ret = socfpga_sdram_calibration(inst_rom_init, inst_rom_init_size,
-				ac_rom_init, ac_rom_init_size);
-	if (ret)
+	ret = socfpga_mem_calibration();
+	if (!ret)
 		hang();
 
 	puts_ll("done\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
