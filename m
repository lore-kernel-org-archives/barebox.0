Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDy4x-0003WG-7F
 for barebox@lists.infradead.org; Sun, 03 Aug 2014 15:52:12 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Sun,  3 Aug 2014 17:51:38 +0200
Message-Id: <1407081098-23313-1-git-send-email-jlu@pengutronix.de>
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
Subject: [RFC] ARM/mem: handle data aborts gracefully for md
To: barebox@lists.infradead.org

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
---
 arch/arm/cpu/exceptions.S | 19 +++++++++++
 commands/md.c             | 40 ++++++++++++++++++++--
 common/memory_display.c   | 44 ++++++++++++++++++-------
 fs/fs.c                   | 84 ++++++++++++++++++++++++++++++++++++++++++++++-
 include/common.h          |  1 +
 include/fcntl.h           |  3 ++
 6 files changed, 176 insertions(+), 15 deletions(-)

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
index c1361a6..25183e5 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -34,6 +34,27 @@
 #include <xfuncs.h>
 
 extern char *mem_rw_buf;
+char mem_info_buf[RW_BUF_SIZE];
+
+static int read_mem_info(char *filename, int mode, loff_t start, int size)
+{
+	int fd, r;
+
+	mode = (mode & ~O_RWTRY_MASK) | O_RWTRY_INFO;
+
+	fd = open_and_lseek(filename, mode, start);
+	if (fd < 0)
+		return -1;
+
+	r = read(fd, mem_info_buf, size);
+	if (r != size) {
+		close(fd);
+		return -1;
+	}
+
+	close(fd);
+	return 0;
+}
 
 static int do_mem_md(int argc, char *argv[])
 {
@@ -61,13 +82,24 @@ static int do_mem_md(int argc, char *argv[])
 			size = 0x100;
 	}
 
-	fd = open_and_lseek(filename, mode | O_RDONLY, start);
+	mode |= O_RDONLY;
+
+	if (!strcmp(filename, "/dev/mem"))
+		mode |= O_RWTRY_DATA;
+
+	fd = open_and_lseek(filename, mode, start);
 	if (fd < 0)
 		return 1;
 
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
 		r = read(fd, mem_rw_buf, now);
+		if (mode & O_RWTRY_DATA)
+			if (read_mem_info(filename, mode, start, now) < 0) {
+				printf("read_mem_info failed\n");
+				goto out;
+			}
+
 		if (r < 0) {
 			perror("read");
 			goto out;
@@ -75,8 +107,10 @@ static int do_mem_md(int argc, char *argv[])
 		if (!r)
 			goto out;
 
-		if ((ret = memory_display(mem_rw_buf, start, r,
-				mode >> O_RWSIZE_SHIFT, swab)))
+		if ((ret = memory_display_mask(mem_rw_buf,
+				(mode & O_RWTRY_DATA) ? mem_info_buf: NULL,
+				start, r,
+				(mode & O_RWSIZE_MASK) >> O_RWSIZE_SHIFT, swab)))
 			goto out;
 
 		start += r;
diff --git a/common/memory_display.c b/common/memory_display.c
index c8ae57a..90f5bce 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -3,10 +3,11 @@
 
 #define DISP_LINE_LEN	16
 
-int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab)
+int memory_display_mask(const void *addr, const void *mask, loff_t offs, unsigned nbytes, int size, int swab)
 {
 	ulong linebytes, i;
-	u_char	*cp;
+	u_char *cp;
+	bool masking = !!mask;
 
 	/* Print the lines.
 	 *
@@ -26,21 +27,37 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		for (i = 0; i < linebytes; i += size) {
 			if (size == 4) {
 				u32 res;
-				res = (*uip++ = *((uint *)addr));
-				if (swab)
-					res = __swab32(res);
-				count -= printf(" %08x", res);
+				if (masking && *((uint *)mask)) {
+					*uip++ = 0;
+					count -= printf(" XXXXXXXX");
+				} else {
+					res = (*uip++ = *((uint *)addr));
+					if (swab)
+						res = __swab32(res);
+					count -= printf(" %08x", res);
+				}
 			} else if (size == 2) {
 				u16 res;
-				res = (*usp++ = *((ushort *)addr));
-				if (swab)
-					res = __swab16(res);
-				count -= printf(" %04x", res);
+				if (masking && *((ushort *)mask)) {
+					*usp++ = 0;
+					count -= printf(" XXXX");
+				} else {
+					res = (*usp++ = *((ushort *)addr));
+					if (swab)
+						res = __swab16(res);
+					count -= printf(" %04x", res);
+				}
 			} else {
-				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
+				if (masking && *((u_char *)mask)) {
+					*ucp++ = 0;
+					count -= printf(" XX");
+				} else {
+					count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
+				}
 			}
 			addr += size;
 			offs += size;
+			mask += size;
 		}
 
 		while (count--)
@@ -63,3 +80,8 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 
 	return 0;
 }
+
+int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab)
+{
+	return memory_display_mask(addr, NULL, offs, nbytes, size, swab);
+}
diff --git a/fs/fs.c b/fs/fs.c
index dd410b7..30daafd 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1668,6 +1668,82 @@ static void memcpy_sz(void *_dst, const void *_src, ulong count, ulong rwsize)
 	}
 }
 
+static char memcpy_try_single(void *dst, const void *src, ulong rwsize)
+{
+	extern void* abort_conf;
+
+	abort_conf = NULL;
+
+	switch (rwsize) {
+	case 1:
+		*((u_char *)dst) = *((u_char *)src);
+		break;
+	case 2:
+		*((ushort *)dst) = *((ushort *)src);
+		break;
+	case 4:
+		*((ulong  *)dst) = *((ulong  *)src);
+		break;
+	}
+	if (abort_conf) {
+		abort_conf = &abort_conf;
+		switch (rwsize) {
+		case 1:
+			*((u_char *)dst) = 0;
+			break;
+		case 2:
+			*((ushort *)dst) = 0;
+			break;
+		case 4:
+			*((ulong  *)dst) = 0;
+			break;
+		}
+		return 'X';
+	}
+	abort_conf = &abort_conf;
+	return '\0';
+}
+
+static void memcpy_try_data(void *dst, const void *src, ulong count, ulong rwsize)
+{
+	rwsize = rwsize >> O_RWSIZE_SHIFT;
+
+	count /= rwsize;
+
+	while (count-- > 0) {
+		memcpy_try_single(dst, src, rwsize);
+		dst += rwsize;
+		src += rwsize;
+	}
+}
+
+static void memcpy_try_info(void *dst, const void *src, ulong count, ulong rwsize)
+{
+	ulong tmp;
+	char info;
+
+	rwsize = rwsize >> O_RWSIZE_SHIFT;
+
+	count /= rwsize;
+
+	while (count-- > 0) {
+		info = memcpy_try_single(&tmp, src, rwsize);
+		switch (rwsize) {
+		case 1:
+			*((u_char *)dst) = info;
+			break;
+		case 2:
+			*((ushort *)dst) = info;
+			break;
+		case 4:
+			*((ulong  *)dst) = info;
+			break;
+		}
+		dst += rwsize;
+		src += rwsize;
+	}
+}
+
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
 	ulong size;
@@ -1680,7 +1756,13 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulon
 	size = min((resource_size_t)count,
 			resource_size(&dev->resource[0]) -
 			(resource_size_t)offset);
-	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
+
+	if ((flags & O_RWTRY_MASK) == O_RWTRY_DATA)
+		memcpy_try_data(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
+	else if ((flags & O_RWTRY_MASK) == O_RWTRY_INFO)
+		memcpy_try_info(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
+	else
+		memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_read);
diff --git a/include/common.h b/include/common.h
index e7ab5fe..458b460 100644
--- a/include/common.h
+++ b/include/common.h
@@ -243,6 +243,7 @@ static inline char *shell_expand(char *str)
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
 #define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
 
+int memory_display_mask(const void *addr, const void *mask, loff_t offs, unsigned nbytes, int size, int swab);
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
 
 #define DUMP_PREFIX_OFFSET 0
diff --git a/include/fcntl.h b/include/fcntl.h
index aed741e..25b156c 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -22,6 +22,9 @@
 #define O_RWSIZE_1      00000010
 #define O_RWSIZE_2      00000020
 #define O_RWSIZE_4      00000040
+#define O_RWTRY_MASK    03000000
+#define O_RWTRY_DATA    01000000
+#define O_RWTRY_INFO    02000000
 
 #define F_DUPFD		0	/* dup */
 #define F_GETFD		1	/* get close_on_exec */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
