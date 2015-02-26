Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YR2pC-0001DJ-Sg
 for barebox@lists.infradead.org; Thu, 26 Feb 2015 18:06:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2015 19:05:45 +0100
Message-Id: <1424973945-8008-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
References: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM/mem: handle data aborts gracefully for md
To: Barebox List <barebox@lists.infradead.org>

From: Jan Luebbe <jlu@pengutronix.de>

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
 common/memory_display.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index c8ae57a..7b1d35e 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <errno.h>
+#include <abort.h>
 
 #define DISP_LINE_LEN	16
 
@@ -26,18 +27,41 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		for (i = 0; i < linebytes; i += size) {
 			if (size == 4) {
 				u32 res;
-				res = (*uip++ = *((uint *)addr));
+				data_abort_mask();
+				res = *((uint *)addr);
 				if (swab)
 					res = __swab32(res);
-				count -= printf(" %08x", res);
+				if (data_abort_unmask()) {
+					res = 0xffffffff;
+					count -= printf(" xxxxxxxx");
+				} else {
+					count -= printf(" %08x", res);
+				}
+				*uip++ = res;
 			} else if (size == 2) {
 				u16 res;
-				res = (*usp++ = *((ushort *)addr));
+				data_abort_mask();
+				res = *((ushort *)addr);
 				if (swab)
 					res = __swab16(res);
-				count -= printf(" %04x", res);
+				if (data_abort_unmask()) {
+					res = 0xffff;
+					count -= printf(" xxxx");
+				} else {
+					count -= printf(" %04x", res);
+				}
+				*usp++ = res;
 			} else {
-				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
+				u8 res;
+				data_abort_mask();
+				res = *((u_char *)addr);
+				if (data_abort_unmask()) {
+					res = 0xff;
+					count -= printf(" xx");
+				} else {
+					count -= printf(" %02x", res);
+				}
+				*ucp++ = res;
 			}
 			addr += size;
 			offs += size;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
