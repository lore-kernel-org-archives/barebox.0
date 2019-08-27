Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d68-0008A3-Cj
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:33 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B0DA120001C
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:15 +0200
Message-Id: <20190827150918.16247-8-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 07/10] commands: add intentionally UB triggering ubsan
 command
To: barebox@lists.infradead.org

For testing whether ubsan works, triggering undefined behavior to detect
is a nice development aid. Port the Linux test_ubsan module to barebox
as a command.

barebox@Embest MarS Board i.MX6Dual:/ ubsan shift
ERROR: ================================================================================
ERROR: UBSAN: Undefined behaviour in commands/ubsan.c:53:7
ERROR: shift exponent -1 is negative
WARNING: [<4fd77325>] (unwind_backtrace+0x1/0x68) from [<4fd5bc0f>] (ubsan_epilogue.isra.6+0x7/0x20)
WARNING: [<4fd5bc0f>] (ubsan_epilogue.isra.6+0x7/0x20) from [<4fd5bf8d>] (__ubsan_handle_shift_out_of_bounds+0x49/0xb8)
WARNING: [<4fd5bf8d>] (__ubsan_handle_shift_out_of_bounds+0x49/0xb8) from [<4fd51ed7>] (test_ubsan_shift_out_of_bounds+0x23/0x2c)
WARNING: [<4fd51ed7>] (test_ubsan_shift_out_of_bounds+0x23/0x2c) from [<4fd51fd7>] (do_ubsan+0x3b/0x54)
WARNING: [<4fd51fd7>] (do_ubsan+0x3b/0x54) from [<4fd03a4d>] (execute_command+0x21/0x48)
WARNING: [<4fd03a4d>] (execute_command+0x21/0x48) from [<4fd09591>] (run_list_real+0x5b5/0x610)
WARNING: [<4fd09591>] (run_list_real+0x5b5/0x610) from [<4fd08ed9>] (parse_stream_outer+0x105/0x164)
WARNING: [<4fd08ed9>] (parse_stream_outer+0x105/0x164) from [<4fd097b1>] (run_shell+0x35/0x64)
WARNING: [<4fd097b1>] (run_shell+0x35/0x64) from [<4fd00d43>] (run_init+0x8f/0x168)
WARNING: [<4fd00d43>] (run_init+0x8f/0x168) from [<4fd00e35>] (start_barebox+0x19/0x54)
WARNING: [<4fd00e35>] (start_barebox+0x19/0x54) from [<4fd75843>] (barebox_non_pbl_start+0xc7/0x108)
WARNING: [<4fd75843>] (barebox_non_pbl_start+0xc7/0x108) from [<4fd00005>] (__bare_init_start+0x1/0xc)
ERROR: ================================================================================

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig  |   7 +++
 commands/Makefile |   3 +
 commands/ubsan.c  | 152 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 commands/ubsan.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 039fd7d1ac74..e03110fd46cb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2142,6 +2142,13 @@ config CMD_SEED
 	help
 	  Seed the pseudo random number generator (PRNG)
 
+config CMD_UBSAN
+	tristate "ubsan"
+	depends on UBSAN && COMMAND_SUPPORT
+	help
+	  This is a test command for the undefined behavior sanitizer.
+	  It triggers various undefined behavior, and detect it.
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index e69fb5046f59..5cd35b78a735 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -123,3 +123,6 @@ obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
+obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
+
+UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/ubsan.c b/commands/ubsan.c
new file mode 100644
index 000000000000..784678d399d9
--- /dev/null
+++ b/commands/ubsan.c
@@ -0,0 +1,152 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <command.h>
+#include <abort.h>
+
+struct test_ubsan {
+	const char *cmd;
+	void(*fun)(void);
+};
+
+static void test_ubsan_add_overflow(void)
+{
+	volatile int val = INT_MAX;
+
+	val += 2;
+}
+
+static void test_ubsan_sub_overflow(void)
+{
+	volatile int val = INT_MIN;
+	volatile int val2 = 2;
+
+	val -= val2;
+}
+
+static void test_ubsan_mul_overflow(void)
+{
+	volatile int val = INT_MAX / 2;
+
+	val *= 3;
+}
+
+static void test_ubsan_negate_overflow(void)
+{
+	volatile int val = INT_MIN;
+
+	val = -val;
+}
+
+static void test_ubsan_divrem_overflow(void)
+{
+	volatile int val = 16;
+	volatile int val2 = 0;
+
+	val /= val2;
+}
+
+static void test_ubsan_shift_out_of_bounds(void)
+{
+	volatile int val = -1;
+	int val2 = 10;
+
+	val2 <<= val;
+}
+
+static void test_ubsan_out_of_bounds(void)
+{
+	volatile int i = 4, j = 5;
+	volatile int arr[4];
+
+	arr[j] = i;
+}
+
+static void test_ubsan_load_invalid_value(void)
+{
+	volatile char *dst, *src;
+	bool val, val2, *ptr;
+	char c = 4;
+
+	dst = (char *)&val;
+	src = &c;
+	*dst = *src;
+
+	ptr = &val2;
+	val2 = val;
+}
+
+static void test_ubsan_null_ptr_deref(void)
+{
+	volatile int *ptr = NULL;
+	int val;
+
+	data_abort_mask();
+	val = *ptr;
+	data_abort_unmask();
+}
+
+static void test_ubsan_misaligned_access(void)
+{
+	volatile char arr[5] __aligned(4) = {1, 2, 3, 4, 5};
+	volatile int *ptr, val = 6;
+
+	ptr = (int *)(arr + 1);
+	*ptr = val;
+}
+
+static void test_ubsan_object_size_mismatch(void)
+{
+	/* "((aligned(8)))" helps this not into be misaligned for ptr-access. */
+	volatile int val __aligned(8) = 4;
+	volatile long long *ptr, val2;
+
+	ptr = (long long *)&val;
+	val2 = *ptr;
+}
+
+static const struct test_ubsan test_ubsan_array[] = {
+	{ .cmd = "add",   .fun = test_ubsan_add_overflow },
+	{ .cmd = "sub",   .fun = test_ubsan_sub_overflow },
+	{ .cmd = "mul",   .fun = test_ubsan_mul_overflow },
+	{ .cmd = "neg",   .fun = test_ubsan_negate_overflow },
+	{ .cmd = "div",   .fun = test_ubsan_divrem_overflow },
+	{ .cmd = "shift", .fun = test_ubsan_shift_out_of_bounds },
+	{ .cmd = "oob",   .fun = test_ubsan_out_of_bounds },
+	{ .cmd = "trap",  .fun = test_ubsan_load_invalid_value },
+	{ .cmd = "null",  .fun = test_ubsan_null_ptr_deref },
+	{ .cmd = "align", .fun = test_ubsan_misaligned_access },
+	{ .cmd = "size",  .fun = test_ubsan_object_size_mismatch },
+	{ /* sentinel */ }
+};
+
+static int do_ubsan(int argc, char *argv[])
+{
+	const struct test_ubsan *test;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	for (test = test_ubsan_array; test->cmd; test++) {
+		if (strcmp(test->cmd, argv[1]) == 0) {
+			test->fun();
+			return 0;
+		}
+	}
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_HELP_START(ubsan)
+BAREBOX_CMD_HELP_TEXT("trigger undefined behavior for UBSAN to detect")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Functions:")
+BAREBOX_CMD_HELP_TEXT("add, sub, mul, neg, div, shift, oob, trap,")
+BAREBOX_CMD_HELP_TEXT("null, align, size")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ubsan)
+	.cmd		= do_ubsan,
+	BAREBOX_CMD_DESC("trigger undefined behavior for UBSAN to detect")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_ubsan_help)
+BAREBOX_CMD_END
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
