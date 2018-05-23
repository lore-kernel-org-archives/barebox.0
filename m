Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLM2r-0003Ww-IV
 for barebox@lists.infradead.org; Wed, 23 May 2018 05:10:43 +0000
Received: by mail-pf0-x244.google.com with SMTP id j20-v6so9871162pff.10
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 22:10:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 22:10:12 -0700
Message-Id: <20180523051012.26148-1-andrew.smirnov@gmail.com>
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
Subject: [RFC] ARM: mmu: Do not try to pick early TTB up
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The call to create_flat_mapping() in mmu.c will change both memory
type and shareability of all RAM in use by barebox while MMU is on
when done in conjunction with CONFIG_MMU_EARLY. According to "ARM
Reference Manual. ARMv7-A and ARMv7-R edition", this warrants the use
of "break-before-make" algorithm for TTB entries replacement,
nontheless original code seemed to work well without any hint of a
problem in the case of running from DRAM.

Running it on VF610, when executing from SRAM (uploaded via JTAG),
however proved to be problematic, with the following patch:

-------------------- 8< -------------------------------------------

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index aa1a7c09c..650e20828 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -419,6 +419,11 @@ static void vectors_init(void)
 	create_vector_table(ARM_LOW_VECTORS);
 }

+static void dump_bank(struct memory_bank *b)
+{
+	pr_crit("0x%08lx - 0x%08lx\n", b->start, b->start + b->size - 1);
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -494,6 +499,7 @@ static int mmu_init(void)
 	 * below
 	 */
 	for_each_memory_bank(bank) {
+		dump_bank(bank);
 		create_sections(ttb, bank->start, bank->size,
 				PMD_SECT_DEF_CACHED);
 		__mmu_cache_flush();
@@ -501,6 +507,10 @@ static int mmu_init(void)

 	__mmu_cache_on();

+	pr_info("%s %d\n", __func__, __LINE__);
+	for_each_memory_bank(bank)
+		dump_bank(bank);
+
 	return 0;
 }
 mmu_initcall(mmu_init);

-------------------- >8 -------------------------------------------

when applied, produces the following output on Zii VF610 Dev board:

-------------------- 8< -------------------------------------------

barebox 2018.04.0-00195-ge7ba82254-dirty #552 Thu Apr 19 11:32:56 PDT 2018

Board: VF610 OCRAM
i.MX clk 9: register failed with -22
i.MX clk 10: register failed with -22
i.MX clk 160: register failed with -22
mmu: Critical Error: Can't request SDRAM region for ttb at 3f078000
mmu: 0x80000000 - 0x9fffffff
mmu: 0x80000000 - 0x9fffffff
mmu: mmu_init 510
unable to handle NULL pointer dereference at address 0x00000000
pc : [<3f01b7da>]    lr : [<3f01b7d1>]
sp : 3f07ff38  ip : 00000000  fp : 00000000
r10: 00000000  r9 : 3f000009  r8 : 00000c0e
r7 : 3f0258aa  r6 : 3f0258aa  r5 : 3f413b80  r4 : 00000000
r3 : 3f02f1b4  r2 : b0000000  r1 : 0000000a  r0 : 00000012
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<3f01b7da>] (mmu_init+0xce/0x168) from [<3f000b9d>] (start_barebox+0x45/0x98)
[<3f000b9d>] (start_barebox+0x45/0x98) from [<3f01bb19>] (barebox_non_pbl_start+0x95/0xd4)
[<3f01bb19>] (barebox_non_pbl_start+0x95/0xd4) from [<3f01bb71>] (barebox_arm_entry+0x19/0x1c)

[<3f01d085>] (unwind_backtrace+0x1/0x58) from [<3f000e45>] (panic+0x1d/0x2c)
[<3f000e45>] (panic+0x1d/0x2c) from [<3f01b5d1>] (do_exception+0xd/0x10)
[<3f01b5d1>] (do_exception+0xd/0x10) from [<3f01b631>] (do_data_abort+0x21/0x2c)
[<3f01b631>] (do_data_abort+0x21/0x2c) from [<3f01b3d4>] (do_abort_6+0x48/0x54)
\### ERROR ### Please RESET the board ###

-------------------- 8< -------------------------------------------

every boot. Compared to regular output (no-MMU build):

barebox 2018.04.0-00195-ge7ba82254-dirty #553 Thu Apr 19 12:03:17 PDT 2018

Board: VF610 OCRAM
i.MX clk 9: register failed with -22
i.MX clk 10: register failed with -22
i.MX clk 160: register failed with -22
mmu: 0x80000000 - 0x9fffffff
mmu: mmu_init 493
mmu: 0x80000000 - 0x9fffffff
Error: Cannot request SDRAM region for stack
Warning: Using dummy clocksource
malloc space: 0x3f400000 -> 0x3f47ffff (size 512 KiB)
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...

Hit any key to stop autoboot:    3
barebox@VF610 OCRAM:/

-------------------- >8 -------------------------------------------

Note that, in the first listing, buggy execution starts from "mmu:
0x80000000 - 0x9fffffff mmu: 0x80000000 - 0x9fffffff" is printed
twice. Compiling with CONFIG_MMU_EARLY=n make the issue go
aways. The following patch:

-------------------- 8< -------------------------------------------

@@ -479,6 +479,7 @@ static int mmu_init(void)

 	create_flat_mapping(ttb);
 	__mmu_cache_flush();
+	tlb_invalidate();

 	vectors_init();

-------------------- >8 -------------------------------------------

seem to fix the issue as well. This patch however, opts to implement a
third solution and converts the code to disable MMU as a first step,
because it seems to be a safer approach and it also allows us to drop
a lot of extra code needed for error handling.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

The precise mechanics of this failure are not 100% clear to me and
both solutions to this problem were discovered through trial and
error.

I am more than happy to run more experiments to diagnose this issue if
anyone has any suggestinons.

Feedback is wellcome!

Thanks,
Andrey Smirnov

 arch/arm/cpu/mmu.c | 27 +++++----------------------
 1 file changed, 5 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a89f420f2..bb25f6b4f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -450,36 +450,20 @@ static int mmu_init(void)
 
 	if (get_cr() & CR_M) {
 		/*
-		 * Early MMU code has already enabled the MMU. We assume a
-		 * flat 1:1 section mapping in this case.
+		 * Early MMU code has already enabled the MMU. To
+		 * start form a clean slate we need to disable it
+		 * first.
 		 */
-		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
-
-		/* Clear unpredictable bits [13:0] */
-		ttb = (uint32_t *)((unsigned long)ttb & ~0x3fff);
-
-		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			/*
-			 * This can mean that:
-			 * - the early MMU code has put the ttb into a place
-			 *   which we don't have inside our available memory
-			 * - Somebody else has occupied the ttb region which means
-			 *   the ttb will get corrupted.
-			 */
-			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
-					ttb);
-	} else {
-		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
+		mmu_disable();
 	}
 
+	ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
 	pr_debug("ttb: 0x%p\n", ttb);
 
 	set_ttbr(ttb);
 	set_domain(DOMAIN_MANAGER);
 
 	create_flat_mapping(ttb);
-	__mmu_cache_flush();
-
 	vectors_init();
 
 	/*
@@ -490,7 +474,6 @@ static int mmu_init(void)
 	for_each_memory_bank(bank) {
 		create_sections(ttb, bank->start, bank->start + bank->size - 1,
 				PMD_SECT_DEF_CACHED);
-		__mmu_cache_flush();
 	}
 
 	__mmu_cache_on();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
