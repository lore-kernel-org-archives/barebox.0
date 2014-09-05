Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPnGe-0002WS-Ft
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 06:45:09 +0000
Date: Fri, 5 Sep 2014 08:44:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140905064445.GA5352@pengutronix.de>
References: <1407081098-23313-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407081098-23313-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [RFC] ARM/mem: handle data aborts gracefully for md
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 03, 2014 at 05:51:38PM +0200, Jan Luebbe wrote:
> The current implementation breaks everything except ARM and takes several
> shortcuts which need to be implemented more cleanly. Suggestions are very
> welcome!

The following is much cleaner but still not ready. It still breaks
everything except ARM (and even ARM with exceptions disabled).

It also doesn't work properly. I had to make abort_conf volatile, but
even then with "md -b" the abort_conf value hasn't changed after an
abort. I had to read it again, then it changed its value. I think there
is some barrier missing.

------------------------8<---------------------------

From 5793cd4beaccad0d3515296f2eb7b26f05613d04 Mon Sep 17 00:00:00 2001
From: Jan Luebbe <jlu@pengutronix.de>
Date: Sun, 3 Aug 2014 17:51:38 +0200
Subject: [PATCH] ARM/mem: handle data aborts gracefully for md

Sometimes memory ranges contain inaccessible registers which trigger a
data abort when accessed. To handle this gracefully, we extend the data
abort exception handler to ignore the exception when configured to do
so.

This allows detecting inaccessible memory from the md command. It will
show XX for unreadable bytes instead.

The previous behaviour:
barebox@TI AM335x BeagleBone:/ md 0x50000000
unable to handle paging request at address 0x500000ac
pc : [<8fe2e0dc>]    lr : [<8fe2e0b9>]
sp : 8ffff898  ip : 00000024  fp : 00000000
r10: 8bfa0204  r9 : 00000000  r8 : 8bfa0204
r7 : 00000100  r6 : 50000000  r5 : 8bfa0204  r4 : 00000004
r3 : 00000f00  r2 : 000000ac  r1 : 00000004  r0 : 00000014
Flags: nZCv  IRQs off  FIQs on  Mode SVC_32
[<8fe2e0dc>] (memcpy_sz+0x40/0x48) from [<8fe2f337>] (mem_read+0x3b/0x48)
[<8fe2f337>] (mem_read+0x3b/0x48) from [<8fe2bb13>] (cdev_read+0x25/0x2e)
[<8fe2bb13>] (cdev_read+0x25/0x2e) from [<8fe2c15b>] (devfs_read+0x1b/0x1e)
[<8fe2c15b>] (devfs_read+0x1b/0x1e) from [<8fe2df5b>] (__read+0x43/0x5c)
[<8fe2df5b>] (__read+0x43/0x5c) from [<8fe2e61f>] (read+0x2b/0x48)
[<8fe2e61f>] (read+0x2b/0x48) from [<8fe1e4a5>] (do_mem_md+0xc1/0x144)
[<8fe1e4a5>] (do_mem_md+0xc1/0x144) from [<8fe02889>] (execute_command+0x21/0x48)
[<8fe02889>] (execute_command+0x21/0x48) from [<8fe061c1>] (run_list_real+0x549/0x634)
[<8fe061c1>] (run_list_real+0x549/0x634) from [<8fe05b43>] (parse_stream_outer+0xdb/0x174)
[<8fe05b43>] (parse_stream_outer+0xdb/0x174) from [<8fe06435>] (run_shell+0x29/0x54)
[<8fe06435>] (run_shell+0x29/0x54) from [<8fe02889>] (execute_command+0x21/0x48)
[<8fe02889>] (execute_command+0x21/0x48) from [<8fe061c1>] (run_list_real+0x549/0x634)
[<8fe061c1>] (run_list_real+0x549/0x634) from [<8fe05efb>] (run_list_real+0x283/0x634)

[<8fe31e1d>] (unwind_backtrace+0x1/0x64) from [<8fe24e61>] (panic+0x1d/0x34)
[<8fe24e61>] (panic+0x1d/0x34) from [<8fe322c1>] (do_exception+0xd/0x10)
[<8fe322c1>] (do_exception+0xd/0x10) from [<8fe32329>] (do_data_abort+0x21/0x2c)
[<8fe32329>] (do_data_abort+0x21/0x2c) from [<8fe31fe8>] (data_abort+0x48/0x60)

The new behaviour:
barebox@TI AM335x BeagleBone:/ md 0x50000000
50000000: 00000060 00000000 00000000 00000000                `...............
50000010: 00000000 00000001 00000000 00000000                ................
50000020: 00000000 00000000 00000000 00000000                ................
50000030: 00000000 00000000 00000000 00000000                ................
50000040: 00001ff0 400000ac 00000211 00000000                .......@........
50000050: 00000a00 00000001 00000000 00000000                ................
50000060: 00000000 00101001 22060514 10057016                ...........".p..
50000070: 010f1111 8f070000 00000f40 00000000                ........@.......
50000080: 00000000 00000000 00000000 00000000                ................
50000090: 00001000 00101001 22060514 10057016                ...........".p..
500000a0: 010f1111 8f070000 00000f00 XXXXXXXX                ................
500000b0: XXXXXXXX XXXXXXXX 00000000 00000000                ................
500000c0: 00001000 00101001 22060514 10057016                ...........".p..
500000d0: 010f1111 8f070000 00000f00 XXXXXXXX                ................
500000e0: XXXXXXXX XXXXXXXX 00000000 00000000                ................
500000f0: 00001000 00101001 22060514 10057016                ...........".p..

The current implementation breaks everything except ARM and takes several
shortcuts which need to be implemented more cleanly. Suggestions are very
welcome!

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S | 19 +++++++++++++++++++
 commands/md.c             |  8 ++++++++
 common/memory_display.c   | 37 ++++++++++++++++++++++++++++++++-----
 3 files changed, 59 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 167c8d1..b13e112 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -88,6 +88,21 @@
 	movs	pc, lr
 	.endm
 
+	.macro try_data_abort
+	ldr	r13, =abort_conf		@ check try mode
+	ldr	r13, [r13]
+	cmp	r13, #0
+	bne	no_abort_\@
+	ldr	r13, =abort_conf		@ disable try mode
+	str	r13, [r13]
+	mrs	r13, spsr			@ read saved CPSR
+	tst	r13, #1<<5			@ check Thumb mode
+	subeq	lr, #4				@ next ARM instr
+	subne	lr, #6				@ next Thumb instr
+	movs	pc, lr
+no_abort_\@:
+	.endm
+
 	.macro get_irq_stack			@ setup IRQ stack
 	ldr	sp, IRQ_STACK_START
 	.endm
@@ -122,6 +137,7 @@ prefetch_abort:
 
 	.align	5
 data_abort:
+	try_data_abort
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_data_abort
@@ -202,5 +218,8 @@ _fiq: .word fiq
 
 .section .data
 .align 4
+.global abort_conf
+abort_conf:
+.word abort_conf			/* = 0 when enabled, =abort_conf when disabled */
 abort_stack:
 .space 8
diff --git a/commands/md.c b/commands/md.c
index c1361a6..49b36fd 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -44,6 +44,7 @@ static int do_mem_md(int argc, char *argv[])
 	char *filename = "/dev/mem";
 	int mode = O_RWSIZE_4;
 	int swab = 0;
+	void *addr;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -65,6 +66,13 @@ static int do_mem_md(int argc, char *argv[])
 	if (fd < 0)
 		return 1;
 
+	addr = memmap(fd, PROT_READ);
+	if (addr != (void *)-1) {
+		ret = memory_display(addr + start, start, size,
+				mode >> O_RWSIZE_SHIFT, swab);
+		goto out;
+	}
+
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
 		r = read(fd, mem_rw_buf, now);
diff --git a/common/memory_display.c b/common/memory_display.c
index c8ae57a..766b8c0 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -7,6 +7,7 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 {
 	ulong linebytes, i;
 	u_char	*cp;
+	extern volatile int abort_conf;
 
 	/* Print the lines.
 	 *
@@ -26,18 +27,44 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		for (i = 0; i < linebytes; i += size) {
 			if (size == 4) {
 				u32 res;
-				res = (*uip++ = *((uint *)addr));
+				abort_conf = 0;
+				res = *((uint *)addr);
 				if (swab)
 					res = __swab32(res);
-				count -= printf(" %08x", res);
+				if (abort_conf) {
+					res = 0xffffffff;
+					count -= printf(" xxxxxxxx");
+				} else {
+					abort_conf = 1;
+					count -= printf(" %08x", res);
+				}
+				*uip++ = res;
 			} else if (size == 2) {
 				u16 res;
-				res = (*usp++ = *((ushort *)addr));
+				abort_conf = 0;
+				res = *((ushort *)addr);
 				if (swab)
 					res = __swab16(res);
-				count -= printf(" %04x", res);
+				if (abort_conf) {
+					res = 0xffff;
+					count -= printf(" xxxx");
+				} else {
+					abort_conf = 1;
+					count -= printf(" %04x", res);
+				}
+				*usp++ = res;
 			} else {
-				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
+				u8 res;
+				abort_conf = 0;
+				res = *((u_char *)addr);
+				if (abort_conf) {
+					res = 0xff;
+					count -= printf(" xx");
+				} else {
+					abort_conf = 1;
+					count -= printf(" %02x", res);
+				}
+				*ucp++ = res;
 			}
 			addr += size;
 			offs += size;
-- 
2.1.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
