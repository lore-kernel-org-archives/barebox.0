Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltb-0002my-4K
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:51 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:48 +0100
Message-Id: <1423478871-15276-8-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 07/10] ARM: boards: socfpga new mem calibration function
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Markus Pargmann <mpa@pengutronix.de>

Use the new socfpga_mem_calibration function. This is a sideeffect of
the new script to import generated sequencer code. The return value of
the function is 1 if the calibration succeeds, 0 otherwise.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/ebv-socrates/lowlevel.c        |  5 ++---
 arch/arm/boards/terasic-sockit/lowlevel.c      |  5 ++---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 10 ++++++++++
 arch/arm/mach-socfpga/include/mach/sequencer.h |  5 +++++
 4 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 66cb226b2143..ea4e1d746a95 100644
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
index 78d5d41b0457..8012783df3f8 100644
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
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 87dc6677ec8b..a8ba217344f9 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -4366,3 +4366,13 @@ static int socfpga_sdram_calibration(const uint32_t *inst_rom_init, uint32_t ins
 
 	return pass == 0 ? -EINVAL : 0;
 }
+
+static int socfpga_mem_calibration(void)
+{
+	int ret;
+
+	ret = socfpga_sdram_calibration(inst_rom_init, inst_rom_init_size,
+					ac_rom_init, ac_rom_init_size);
+
+	return !ret;
+}
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index 7c9157a25779..5bf524d854a7 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.h
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -445,6 +445,11 @@ typedef uint32_t t_btfld;
 #define RW_MGR_INST_ROM_WRITE BASE_RW_MGR + 0x1800
 #define RW_MGR_AC_ROM_WRITE BASE_RW_MGR + 0x1C00
 
+static const uint32_t inst_rom_init_size;
+static const uint32_t inst_rom_init[];
+static const uint32_t ac_rom_init_size;
+static const uint32_t ac_rom_init[];
+
 /* parameter variable holder */
 
 typedef struct param_type {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
