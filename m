Delivery-date: Thu, 05 Jun 2025 13:39:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wH-003zs0-03
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wD-0002fn-7C
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d5+1iIxG5bGO0KJyq1jdsV3M40SAqQSE4CVeedfApXg=; b=ZJ9ffDuSOwtvAtlJUniAs5jgjK
	CBkj8lSU+lBk4J2ZBQ9ycHlLrdhxZ2LbihSW/6kq1S3OCVC+nf8JJG4CM4qisxfSRuHHGSu6aH915
	T/22WMqRdkrMcB0w8v4BjqvfsSALtECb8hOd0AIGhaE7FseT531Q9guO38UWH8gk9BCmyrMP40fVF
	Nmfb46TpPSJcGI0OcCO3eiDTEDA/5YY26x/mvWkqUhdF8Lojn0fLXnQvurlj7hH/o69hBnN3Wz861
	Y3resJIMk85UVmDZ8I4ZTgb8QLQgql6+Edir0+6uLHJHiMBIaYXZ1SjBsiJObtWGWNi9hEN0g0G90
	uQqMSC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vb-0000000FOYm-3lg8;
	Thu, 05 Jun 2025 11:38:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOV-1msi
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001ic-7U; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0e-05;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-33;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:21 +0200
Message-Id: <20250605113530.2076990-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_780454_49A8E47D 
X-CRM114-Status: GOOD (  26.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/21] Add fuzzing infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To aid in detection of memory safety issues in security-critical code
add support for libfuzzer along with a first test exercising the
hexstring format specifier of printf.

More useful tests will follow. In addition to libfuzzer, there's also a
fuzz command that passes a fixed input to a buffer. This can be useful
when inspecting a crashing input from the barebox command line.

Note that libfuzzer is in maintenance-mode unfortunately, but it
requiring only LLVM support makes it very convenient to use, so it's a
good first step.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig              |   5 ++
 arch/sandbox/Makefile             |  11 ++-
 arch/sandbox/os/common.c          | 137 +++++++++++++++++++++++++++++-
 commands/Makefile                 |   1 +
 commands/fuzz.c                   | 118 +++++++++++++++++++++++++
 common/Kconfig                    |   5 ++
 common/startup.c                  |   1 +
 images/.gitignore                 |   1 +
 images/Makefile.sandbox           |  16 +++-
 include/asm-generic/barebox.lds.h |  13 ++-
 include/fuzz.h                    |  70 +++++++++++++++
 lib/Makefile                      |   1 +
 lib/fuzz.c                        |  79 +++++++++++++++++
 lib/vsprintf.c                    |  15 ++++
 scripts/Kconfig.include           |   1 +
 scripts/clang-runtime-dir.sh      |  19 +++++
 test/Kconfig                      |  37 ++++++++
 17 files changed, 523 insertions(+), 7 deletions(-)
 create mode 100644 commands/fuzz.c
 create mode 100644 include/fuzz.h
 create mode 100644 lib/fuzz.c
 create mode 100755 scripts/clang-runtime-dir.sh

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 7d8f88474781..5c7948b215cf 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -96,4 +96,9 @@ config HAVE_LIBFTDI
 config SDL
 	bool
 
+config SANDBOX_LINK_CXX
+	def_bool FUZZ_EXTERNAL
+	help
+	  Link with CXX instead of CC to support C++ static libraries.
+
 endmenu
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 2db1cb648a2b..6566cd563ed8 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -67,6 +67,15 @@ ifeq ($(CONFIG_UBSAN),y)
 SANDBOX_LIBS += -fsanitize=undefined
 endif
 
+ifeq ($(CONFIG_FUZZ_EXTERNAL),y)
+LIBARCH-y = $(UNAME_M)
+LIBARCH-$(CONFIG_SANDBOX_LINUX_I386) = i386
+
+KBUILD_CPPFLAGS += -fsanitize=fuzzer-no-link
+SANDBOX_LIBS += -Wl,-Bstatic -L"$(CONFIG_CLANG_RUNTIME_DIR)" \
+		-lclang_rt.fuzzer_no_main-$(LIBARCH-y) -Wl,-Bdynamic
+endif
+
 ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
 KBUILD_CFLAGS += -m32
 KBUILD_LDFLAGS += -m elf_i386
@@ -80,7 +89,7 @@ SANDBOX_PROPER2PBL_GLUE_SYMS := \
 	strsep_unescaped start_barebox linux_get_stickypage_path \
 	stickypage mem_malloc_init \
 	barebox_register_filedev barebox_register_dtb barebox_register_console \
-	barebox_errno barebox_loglevel
+	barebox_errno barebox_loglevel call_for_each_fuzz_test setup_external_fuzz
 
 OBJCOPYFLAGS_barebox.o := $(addprefix --keep-global-symbol=, $(SANDBOX_PROPER2PBL_GLUE_SYMS))
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 3dbe61791ccd..86aaeb24ee3d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -24,6 +24,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
+#include <stdbool.h>
 #include <termios.h>
 #include <unistd.h>
 #include <fcntl.h>
@@ -54,6 +55,22 @@ int __attribute__((unused)) barebox_loglevel;
 extern int barebox_loglevel;
 #endif
 
+#ifdef CONFIG_FUZZ_EXTERNAL
+int call_for_each_fuzz_test(int (*fn)(const char **test));
+int setup_external_fuzz(const char *name,
+			int *argc, char ***argv);
+#else
+static inline int call_for_each_fuzz_test(int (*fn)(const char **test))
+{
+	return 0;
+}
+static inline int setup_external_fuzz(const char *name,
+				      int *argc, char ***argv)
+{
+	return -1;
+}
+#endif
+
 #define DELETED_OFFSET (sizeof(" (deleted)") - 1)
 
 void __sanitizer_set_death_callback(void (*callback)(void));
@@ -514,6 +531,8 @@ const char *barebox_cmdline_get(void)
 static void print_usage(const char*);
 
 #define OPT_LOGLEVEL		(CHAR_MAX + 1)
+#define OPT_LIST_FUZZERS	(CHAR_MAX + 2)
+#define OPT_FUZZ		(CHAR_MAX + 3)
 
 static struct option long_options[] = {
 	{"help",     0, 0, 'h'},
@@ -529,14 +548,72 @@ static struct option long_options[] = {
 	{"yres",     1, 0, 'y'},
 #ifndef CONFIG_CONSOLE_NONE
 	{"loglevel", 1, 0, OPT_LOGLEVEL},
+#endif
+#ifdef CONFIG_FUZZ_EXTERNAL
+	{"fuzz", 1, 0, OPT_FUZZ},
+	{"list-fuzzers", 0, 0, OPT_LIST_FUZZERS},
 #endif
 	{0, 0, 0, 0},
 };
 
 static const char optstring[] = "hm:i:c:e:d:O:I:B:x:y:";
 
-ENTRY_FUNCTION(sandbox_main, argc, argv)
+static __attribute__((unused)) int print_fuzz_test_name(const char **test_name)
 {
+	printf("%s\n", *test_name);
+	return 0;
+}
+
+static inline size_t str_has_prefix(const char *str, const char *prefix)
+{
+	size_t len = strlen(prefix);
+	return strncmp(str, prefix, len) == 0 ? len : 0;
+}
+
+static char *realpath_alloc(char *path)
+{
+	char *real;
+
+	real = malloc(PATH_MAX);
+	if (!real) {
+		perror("malloc");
+		exit(3);
+	}
+
+	if (!realpath(path, real)) {
+		perror("realpath");
+		exit(EXIT_FAILURE);
+	}
+
+	return real;
+}
+
+static void setup_external_fuzz_with_args(const char *fuzz, int *pargc, char **pargv[])
+{
+	char **argv = *pargv;
+	char *rlpath;
+	int ret;
+
+	rlpath = realpath_alloc(argv[0]);
+
+	asprintf(&argv[optind - 1], "%s/fuzz-%s", dirname(rlpath), fuzz);
+
+	free(rlpath);
+
+	*pargc -= optind - 1;
+	*pargv += optind - 1;
+
+	ret = setup_external_fuzz(fuzz, pargc, pargv);
+	if (ret) {
+		printf("unknown fuzz target '%s'\n", fuzz);
+		exit(ret);
+	}
+}
+
+static int normal_main(int argc, char *argv[])
+{
+	bool skip_opts = false;
+	const char *fuzz = NULL;
 	void *ram;
 	int opt, ret, fd, fd2;
 	int malloc_size = CONFIG_MALLOC_SIZE;
@@ -548,7 +625,7 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 	__sanitizer_set_death_callback(prepare_exit);
 #endif
 
-	while (1) {
+	while (!skip_opts) {
 		option_index = 0;
 		opt = getopt_long(argc, argv, optstring,
 			long_options, &option_index);
@@ -589,10 +666,18 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 		case 'y':
 			sdl_yres = strtoul(optarg, NULL, 0);
 			break;
+		case OPT_LIST_FUZZERS:
+			call_for_each_fuzz_test(print_fuzz_test_name);
+			exit(0);
+			break;
+		case OPT_FUZZ:
+			skip_opts = true;
+			break;
 		default:
 			break;
 		}
 	}
+	skip_opts = false;
 
 	saved_argv = argv;
 
@@ -610,7 +695,7 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 	 */
 	optind = 1;
 
-	while (1) {
+	while (!skip_opts) {
 		option_index = 0;
 		opt = getopt_long(argc, argv, optstring,
 			long_options, &option_index);
@@ -672,6 +757,10 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 
 			barebox_register_console(fd2, fd);
 			break;
+		case OPT_FUZZ:
+			fuzz = optarg;
+			skip_opts = true;
+			break;
 		default:
 			break;
 		}
@@ -679,7 +768,10 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 
 	barebox_register_console(fileno(stdin), fileno(stdout));
 
-	rawmode();
+	if (fuzz)
+		setup_external_fuzz_with_args(fuzz, &argc, &argv);
+	else
+		rawmode();
 
 	if (loglevel >= 0)
 		barebox_loglevel = loglevel;
@@ -690,6 +782,39 @@ ENTRY_FUNCTION(sandbox_main, argc, argv)
 	return 0;
 }
 
+ENTRY_FUNCTION(sandbox_main, argc, argv)
+{
+	char **args;
+	char *argv0;
+	size_t fuzz_off;
+	char *rlpath;
+
+	tcgetattr(0, &term_orig);
+
+	argv0 = basename(argv[0]);
+	fuzz_off = str_has_prefix(argv0, "fuzz-");
+	if (fuzz_off) {
+		args = malloc((argc + 3) * sizeof(*args));
+		if (!args)
+			exit(3);
+
+		rlpath = realpath_alloc(argv[0]);
+		asprintf(&args[0], "%s/barebox", dirname(rlpath));
+
+		free(rlpath);
+
+		args[1] = "--fuzz";
+		args[2] = argv0 + fuzz_off;
+
+		memcpy(&args[3], &argv[1], argc * sizeof(*args));
+
+		argc += 2;
+		argv = args;
+	}
+
+	return normal_main(argc, argv);
+}
+
 #ifdef __PPC__
 /* HACK: we need this symbol on PPC, better ask a PPC export about this :) */
 char _SDA_BASE_[4096];
@@ -736,6 +861,10 @@ static void print_usage(const char *prgname)
 "			  6    informational (info)\n"
 "			  7    debug-level messages (debug)\n"
 "			  8    verbose debug messages (vdebug)\n"
+#endif
+#ifdef CONFIG_FUZZ_EXTERNAL
+"      --fuzz=<test>     Run libfuzzer against the <test> target.\n"
+"      --list-fuzzers    List all available fuzzing test targets.\n"
 #endif
 	, prgname
 	);
diff --git a/commands/Makefile b/commands/Makefile
index 53337dfb5c2d..603e1a25244c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -157,6 +157,7 @@ obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
+obj-$(CONFIG_CMD_FUZZ)		+= fuzz.o
 obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
 obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
diff --git a/commands/fuzz.c b/commands/fuzz.c
new file mode 100644
index 000000000000..f48032e7e1d9
--- /dev/null
+++ b/commands/fuzz.c
@@ -0,0 +1,118 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#define pr_fmt(fmt) "fuzz: " fmt
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <fuzz.h>
+#include <libfile.h>
+#include <fs.h>
+
+static const struct fuzz_test *get_fuzz_test(const char *match, bool print)
+{
+	const struct fuzz_test *test;
+	unsigned matches = 0;
+
+	for_each_fuzz_test(test) {
+		if (print) {
+			printf("%s\n", test->name);
+			matches++;
+		}
+
+		if (match && !strcmp(test->name, match))
+			return test;
+
+	}
+
+	if (!matches) {
+		if (match)
+			printf("No fuzz tests matching '%s' found.\n", match);
+		else
+			printf("No fuzz tests registered.\n");
+	}
+
+	return NULL;
+}
+
+static int run_fuzz_test(const char *match, bool list, const u8 *buf, size_t len)
+{
+	const struct fuzz_test *test;
+
+	test = get_fuzz_test(match, list);
+	if (list)
+		return 0;
+	else if (!test)
+		return COMMAND_ERROR;
+
+	return fuzz_test_once(test, buf, len);
+}
+
+static int do_fuzz(int argc, char *argv[])
+{
+	const char *file = NULL;
+	u64 max_size = FILESIZE_MAX;
+	size_t size = 0;
+	const u8 *buf = NULL;
+	void *contents = NULL;
+	bool list = false;
+	int err = 0, opt;
+
+	while((opt = getopt(argc, argv, "ls:f:")) > 0) {
+		switch(opt) {
+		case 'l':
+			list = true;
+			break;
+		case 's':
+			err = kstrtou64(optarg, 0, &max_size);
+			if (err || max_size > SIZE_MAX) {
+				printf("invalid max size\n");
+				return COMMAND_ERROR;
+			}
+			break;
+		case 'f':
+			file = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if ((list && argc) || (!list && argc != 1) || (!file && !list))
+		return COMMAND_ERROR_USAGE;
+
+	if (file) {
+		err = read_file_2(file, &size, &contents, max_size);
+		if (err && err != -EFBIG) {
+			printf("error reading file: %m\n");
+			return COMMAND_ERROR;
+		}
+
+		buf = contents;
+	}
+
+	err = run_fuzz_test(argv[0], list, buf, size);
+
+	free(contents);
+	return err;
+}
+
+BAREBOX_CMD_HELP_START(fuzz)
+BAREBOX_CMD_HELP_TEXT("Run barebox fuzz test on fixed input")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",      "list registered fuzz tests")
+BAREBOX_CMD_HELP_OPT ("-f FILE", "use FILE as fuzz input")
+BAREBOX_CMD_HELP_OPT ("-s SIZE", "read only SIZE bytes from file")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fuzz)
+	.cmd		= do_fuzz,
+	BAREBOX_CMD_DESC("Run fuzz test")
+	BAREBOX_CMD_OPTS("[-ls] -f FILE [test]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_fuzz_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 6d41b7048a32..83a0717e76d6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -18,6 +18,11 @@ config CLANG_VERSION
 	default $(cc-version) if CC_IS_CLANG
 	default 0
 
+config CLANG_RUNTIME_DIR
+	string
+	depends on CC_IS_CLANG
+	default "$(clang-runtime-dir)"
+
 config GREGORIAN_CALENDER
 	bool
 
diff --git a/common/startup.c b/common/startup.c
index c9e99d47fbd7..c720664689f6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -44,6 +44,7 @@
 #include <bselftest.h>
 #include <pbl/handoff-data.h>
 #include <libfile.h>
+#include <fuzz.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
diff --git a/images/.gitignore b/images/.gitignore
index 20133074bf87..fc464ff2e3cb 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -42,3 +42,4 @@ barebox.sum
 *.fit
 *.missing-firmware
 *.k3img
+fuzz-*
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index 0699a52663ef..ed5d740bc1fb 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -3,12 +3,26 @@
 SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
+fuzzer-$(CONFIG_PRINTF_HEXSTR)	+= printf
+
 ifeq ($(CONFIG_SANDBOX),y)
 
+ifdef CONFIG_SANDBOX_LINK_CXX
+linker = $(CXX)
+else
+linker = $(CC)
+endif
+
 quiet_cmd_elf__ = LD      $@
-      cmd_elf__ = $(CC) -o $@ $(BAREBOX_LDFLAGS) \
+      cmd_elf__ = $(linker) -o $@ $(BAREBOX_LDFLAGS) \
 	-Wl,-T,$(pbl-lds) -Wl,--defsym=main=$(2) -Wl,--whole-archive \
 	$(obj)/../$(BAREBOX_PROPER) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
 	-lrt -pthread $(SANDBOX_LIBS) $(LDFLAGS_$(@F))
 
+ifeq ($(CONFIG_FUZZ_EXTERNAL),y)
+$(foreach fuzzer, $(fuzzer-y), \
+	$(eval SYMLINK_TARGET_fuzz-$(fuzzer) = barebox) \
+	$(eval symlink-y += fuzz-$(fuzzer)))
+endif
+
 endif
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 54817b68fc22..2c0f4da9e5d4 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -118,6 +118,16 @@
 	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
 	__barebox_deep_probe_end = .;
 
+#ifdef CONFIG_FUZZ
+#define BAREBOX_FUZZ_TESTS			\
+	STRUCT_ALIGN();				\
+	__barebox_fuzz_tests_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_fuzz_test*)))	\
+	__barebox_fuzz_tests_end = .;
+#else
+#define BAREBOX_FUZZ_TESTS
+#endif
+
 
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()  . = ALIGN(8);                      \
@@ -142,7 +152,8 @@
 	BAREBOX_DTB				\
 	BAREBOX_PUBLIC_KEYS			\
 	BAREBOX_PCI_FIXUP			\
-	BAREBOX_DEEP_PROBE
+	BAREBOX_DEEP_PROBE			\
+	BAREBOX_FUZZ_TESTS
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/include/fuzz.h b/include/fuzz.h
new file mode 100644
index 000000000000..35233f90154b
--- /dev/null
+++ b/include/fuzz.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2022 Google, Inc.
+ * Written by Andrew Scull <ascull@google.com>
+ */
+
+#ifndef __TEST_FUZZ_H
+#define __TEST_FUZZ_H
+
+#include <linux/types.h>
+#include <linux/list.h>
+
+/**
+ * struct fuzz_test - Information about a fuzz test
+ *
+ * @name: Name of fuzz test
+ * @func: Function to call to perform fuzz test on an input
+ */
+struct fuzz_test {
+	const char *name; /* must be first member */
+	int (*func)(const uint8_t * data, size_t size);
+};
+
+extern const struct fuzz_test __barebox_fuzz_tests_start;
+extern const struct fuzz_test __barebox_fuzz_tests_end;
+
+#define for_each_fuzz_test(test) \
+	for (test = &__barebox_fuzz_tests_start; \
+	     test != &__barebox_fuzz_tests_end; test++)
+
+#if IS_ENABLED(CONFIG_FUZZ) && IN_PROPER
+/**
+ * fuzz_test() - register a fuzz test
+ *
+ * The fuzz test function must return 0 as other values are reserved for future
+ * use.
+ *
+ * @_name:	the name of the fuzz test function
+ */
+#define fuzz_test(_name, _func)					\
+	static const struct fuzz_test _func##_entry		\
+	__ll_elem(.barebox_fuzz_tests_##_func) = {	\
+		.name = _name,					\
+		.func = _func,					\
+	}
+#else
+#define fuzz_test(_name, _func)					\
+	static __always_unused void * _unused##_func = _func
+#endif
+
+static inline int fuzz_test_once(const struct fuzz_test *test, const u8 *data, size_t len)
+{
+	return test->func(data, len);
+}
+
+int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test));
+
+int setup_external_fuzz(const char *fuzz_name,
+			int *argc, char ***argv);
+
+#ifdef CONFIG_FUZZ
+bool fuzz_external_active(void);
+#else
+static inline bool fuzz_external_active(void)
+{
+	return false;
+}
+#endif
+
+#endif /* __TEST_FUZZ_H */
diff --git a/lib/Makefile b/lib/Makefile
index 370d4f31d45a..e5cd7ae9f762 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -66,6 +66,7 @@ obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
 obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
 obj-y			+= wchar.o
+obj-$(CONFIG_FUZZ)	+= fuzz.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
 obj-y			+= gcd.o
diff --git a/lib/fuzz.c b/lib/fuzz.c
new file mode 100644
index 000000000000..084455e365cd
--- /dev/null
+++ b/lib/fuzz.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <fuzz.h>
+#include <string.h>
+#include <common.h>
+
+int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test))
+{
+	const struct fuzz_test *test;
+	int ret;
+
+	for_each_fuzz_test(test) {
+		ret = fn(test);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+#ifdef CONFIG_FUZZ_EXTERNAL
+const u8 *fuzzer_get_data(size_t *len);
+#else
+static inline const u8 *fuzzer_get_data(size_t *len)
+{
+	return NULL;
+}
+#endif
+
+extern int LLVMFuzzerRunDriver(int *argc, char ***argv,
+			       int (*cb)(const uint8_t *, size_t));
+
+static const struct fuzz_test *fuzz;
+static int *saved_argc;
+static char ***saved_argv;
+
+static int fuzzer_run(const uint8_t *buf, size_t len)
+{
+	return fuzz_test_once(fuzz, buf, len);
+}
+
+static int fuzz_main(void)
+{
+	int ret = -1;
+
+	if (IS_ENABLED(CONFIG_FUZZ_EXTERNAL)) {
+		ret = LLVMFuzzerRunDriver(saved_argc, saved_argv, fuzzer_run);
+		pr_emerg("libfuzzer unexpectedly ended: %d\n", ret);
+	} else {
+		pr_emerg("libfuzzer not supported in this build\n");
+	}
+
+	return ret;
+}
+
+int setup_external_fuzz(const char *fuzz_name,
+			int *argc, char ***argv)
+{
+	const struct fuzz_test *test;
+
+	saved_argc = argc;
+	saved_argv = argv;
+
+	for_each_fuzz_test(test) {
+		if (streq_ptr(test->name, fuzz_name)) {
+			fuzz = test;
+			barebox_main = fuzz_main;
+			barebox_loglevel = MSG_CRIT;
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+bool fuzz_external_active(void)
+{
+	return fuzz != NULL;
+}
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index ba87f6c210d2..11be17d8cceb 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -21,6 +21,7 @@
 #include <wchar.h>
 #include <of.h>
 #include <efi.h>
+#include <fuzz.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -989,3 +990,17 @@ int asprintf(char **strp, const char *fmt, ...)
 	return len;
 }
 EXPORT_SYMBOL(asprintf);
+
+static int __maybe_unused fuzz_printf(const uint8_t *data, size_t size)
+{
+	static bool initialized = false;
+
+	if (!initialized) {
+		printf("initializing\n");
+		initialized = true;
+	}
+
+	printf("%*ph\n", (int)size, data);
+	return 0;
+}
+fuzz_test("printf", fuzz_printf);
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 55ec8737d0db..93c33d9485b1 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -28,6 +28,7 @@ cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
 $(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this C compiler is not supported.)
 cc-name := $(shell,set -- $(cc-info) && echo $1)
 cc-version := $(shell,set -- $(cc-info) && echo $2)
+clang-runtime-dir = $(shell,$(srctree)/scripts/clang-runtime-dir.sh $(CC))
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
diff --git a/scripts/clang-runtime-dir.sh b/scripts/clang-runtime-dir.sh
new file mode 100755
index 000000000000..65b3028ad04d
--- /dev/null
+++ b/scripts/clang-runtime-dir.sh
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+CC=${1:-${CC}}
+
+if [ "${CC}" = "" ]; then
+	echo "Error: No compiler specified." >&2
+	printf "Usage:\n\t$0 <clang-command>\n" >&2
+	exit 1
+fi
+
+rundir=$("${CC}" --print-runtime-dir 2>/dev/null)
+if [ ! -e "$rundir" ]; then
+	# Workaround https://github.com/llvm/llvm-project/issues/112458
+	guess=$(dirname "$rundir")/linux
+	if [ -e "$guess" ]; then
+		rundir="$guess"
+	fi
+fi
+echo "$rundir"
diff --git a/test/Kconfig b/test/Kconfig
index 958b483ea946..ca2d75c6b025 100644
--- a/test/Kconfig
+++ b/test/Kconfig
@@ -7,4 +7,41 @@ if TEST
 
 source "test/self/Kconfig"
 
+config FUZZ
+	bool "fuzz tests"
+	help
+	  Say y here to add include fuzz tests into barebox.
+	  These need to be exercised either via command or
+	  by libfuzzer
+
+config FUZZ_EXTERNAL
+	bool "link against libfuzzer"
+	depends on SANDBOX && CC_IS_CLANG
+	help
+	  LibFuzzer is an in-process, coverage-guided, evolutionary fuzzing
+	  engine. It can be linked against barebox on the sandbox
+	  architecture to feed fuzzed inputs into the fuzz tests.
+
+if FUZZ
+
+config CMD_FUZZ
+	bool "fuzz command"
+	depends on COMMAND_SUPPORT
+	default y
+	help
+	  Command to run enabled barebox fuzz tests on fixed input.
+	  If run without arguments, all tests are run.
+
+	  This is mostly useful for debugging, use FUZZ_EXTERNAL
+	  to have fuzzed inputs be bed automatically .
+
+	  Usage: fuzz [-ls] -f FILE [test]
+
+	  Options:
+	    -l        list registered fuzz tests
+	    -f FILE   use FILE as fuzz input
+	    -s SIZE   read only SIZE bytes from file
+
+endif
+
 endif
-- 
2.39.5



