Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZL6R-0006dj-GK
 for barebox@lists.infradead.org; Sun, 01 Nov 2020 21:41:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id t13so12804696ljk.12
 for <barebox@lists.infradead.org>; Sun, 01 Nov 2020 13:41:29 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  2 Nov 2020 00:41:15 +0300
Message-Id: <20201101214115.16472-1-pmamonov@gmail.com>
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
Subject: [PATCH v3] commands: import memtester 4.3.0 from Debian GNU/Linux
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Memtester is an utility for testing the memory subsystem for faults.  For
hardware developers, memtester can be told to test memory starting at a
particular physical address.

This port is based on the sources from Debian GNU/Linux. Debian package meta
data is as follows:

	Package: memtester
	Version: 4.3.0-5
	Homepage: http://pyropus.ca/software/memtester/
	APT-Sources: http://ftp.ru.debian.org/debian testing/main amd64 Packages

Dissected version of this patch can be found at
https://github.com/pmamonov/barebox/commits/memtester

Changes since v2:

	6fe3d86f9b add prefix to global variables names
	81441f8ff8 drop `volatile` for buf/aligned pointers
	336d1ddf5f close memfd if mmap() failed
	4b52d3990d define rand32() as random32()
	9fa593f130 tests: make global vars static
	ce00f1aadb fix error handling when parsing arguments
	5107cc4b19 don't flush the console

Changes since v1:

	1acbafe7a2 init global vars on start
	7664692fd4 use proper return value
	a10eba5b49 use strtoull_suffix() to parse memory size
	001b623c16 add option to set TESTMASK
	3acfe07d56 make tests[] static
	528360ebd7 fix license

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 commands/Kconfig               |   8 +
 commands/Makefile              |   1 +
 commands/memtester/Makefile    |   1 +
 commands/memtester/memtester.c | 275 ++++++++++++++++++
 commands/memtester/memtester.h |  21 ++
 commands/memtester/sizes.h     |  37 +++
 commands/memtester/tests.c     | 495 +++++++++++++++++++++++++++++++++
 commands/memtester/tests.h     |  36 +++
 commands/memtester/types.h     |  35 +++
 9 files changed, 909 insertions(+)
 create mode 100644 commands/memtester/Makefile
 create mode 100644 commands/memtester/memtester.c
 create mode 100644 commands/memtester/memtester.h
 create mode 100644 commands/memtester/sizes.h
 create mode 100644 commands/memtester/tests.c
 create mode 100644 commands/memtester/tests.h
 create mode 100644 commands/memtester/types.h

diff --git a/commands/Kconfig b/commands/Kconfig
index df18715f20..960d3608c7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1611,6 +1611,14 @@ config CMD_MEMTEST
 		  -i ITERATIONS	perform number of iterations (default 1, 0 is endless)
 		  -b	perform only a test on bus lines
 
+config CMD_MEMTESTER
+	tristate
+	prompt "memtester"
+	help
+	  Utility for testing the memory subsystem.
+
+	  Homepage: http://pyropus.ca/software/memtester/
+
 config CMD_MM
 	tristate
 	select DEV_MEM
diff --git a/commands/Makefile b/commands/Makefile
index 6cc4997cc5..dc285cd00e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -49,6 +49,7 @@ obj-$(CONFIG_CMD_LOADENV)	+= loadenv.o
 obj-$(CONFIG_CMD_NAND)		+= nand.o
 obj-$(CONFIG_CMD_NANDTEST)	+= nandtest.o
 obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
+obj-$(CONFIG_CMD_MEMTESTER)	+= memtester/
 obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
diff --git a/commands/memtester/Makefile b/commands/memtester/Makefile
new file mode 100644
index 0000000000..17a2429276
--- /dev/null
+++ b/commands/memtester/Makefile
@@ -0,0 +1 @@
+obj-y += tests.o memtester.o
diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
new file mode 100644
index 0000000000..f3980eaea6
--- /dev/null
+++ b/commands/memtester/memtester.c
@@ -0,0 +1,275 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * memtester version 4
+ *
+ * Very simple but very effective user-space memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ */
+
+#define __version__ "4.3.0"
+
+#include <stdlib.h>
+#include <stdio.h>
+#include <types.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <fcntl.h>
+#include <string.h>
+#include <errno.h>
+#include <getopt.h>
+#include <common.h>
+#include <command.h>
+#include <environment.h>
+#include <fs.h>
+
+#include "types.h"
+#include "sizes.h"
+#include "tests.h"
+
+#define EXIT_FAIL_NONSTARTER    COMMAND_ERROR
+#define EXIT_FAIL_ADDRESSLINES  0x02
+#define EXIT_FAIL_OTHERTEST     0x04
+
+static struct test tests[] = {
+    { "Random Value", test_random_value },
+    { "Compare XOR", test_xor_comparison },
+    { "Compare SUB", test_sub_comparison },
+    { "Compare MUL", test_mul_comparison },
+    { "Compare DIV",test_div_comparison },
+    { "Compare OR", test_or_comparison },
+    { "Compare AND", test_and_comparison },
+    { "Sequential Increment", test_seqinc_comparison },
+    { "Solid Bits", test_solidbits_comparison },
+    { "Block Sequential", test_blockseq_comparison },
+    { "Checkerboard", test_checkerboard_comparison },
+    { "Bit Spread", test_bitspread_comparison },
+    { "Bit Flip", test_bitflip_comparison },
+    { "Walking Ones", test_walkbits1_comparison },
+    { "Walking Zeroes", test_walkbits0_comparison },
+    { "8-bit Writes", test_8bit_wide_random },
+    { "16-bit Writes", test_16bit_wide_random },
+    { NULL, NULL }
+};
+
+/* Function declarations */
+
+/* Global vars - so tests have access to this information */
+int memtester_use_phys;
+off_t memtester_physaddrbase;
+
+static int do_memtester(int argc, char **argv) {
+    ul loops, loop, i;
+    size_t wantmb, wantbytes, bufsize,
+         halflen, count;
+    void *buf, *aligned;
+    ulv *bufa, *bufb;
+    int exit_code = 0, ret;
+    int memfd = 0, opt;
+    size_t maxbytes = -1; /* addressable memory, in bytes */
+    size_t maxmb = (maxbytes >> 20) + 1; /* addressable memory, in MB */
+    /* Device to mmap memory from with -p, default is normal core */
+    char *device_name = "/dev/mem";
+    struct stat statbuf;
+    int device_specified = 0;
+    ul testmask = 0;
+
+    memtester_use_phys = 0;
+    memtester_physaddrbase = 0;
+
+    printf("memtester version " __version__ " (%d-bit)\n", UL_LEN);
+    printf("Copyright (C) 2001-2012 Charles Cazabon.\n");
+    printf("Licensed under the GNU General Public License version 2 (only).\n");
+    printf("\n");
+
+    while ((opt = getopt(argc, argv, "p:d:m:")) != -1) {
+        ull t;
+
+        switch (opt) {
+            case 'm':
+                if (kstrtoul(optarg, 0, &testmask)) {
+                    printf("error parsing MEMTESTER_TEST_MASK %s: %s\n",
+                            optarg, strerror(errno));
+                    return COMMAND_ERROR_USAGE;
+                }
+                printf("using testmask 0x%lx\n", testmask);
+                break;
+            case 'p':
+                if (kstrtoull(optarg, 0, &t)) {
+                    printf("failed to parse physaddrbase arg; should be hex "
+                           "address (0x123...)\n");
+                    return COMMAND_ERROR_USAGE;
+                }
+                memtester_physaddrbase = (off_t)t;
+                memtester_use_phys = 1;
+                break;
+            case 'd':
+                if (stat(optarg,&statbuf)) {
+                    printf("can not use %s as device: %s\n", optarg,
+                            strerror(errno));
+                    return COMMAND_ERROR_USAGE;
+                } else {
+                    if (!S_ISCHR(statbuf.st_mode)) {
+                        printf("can not mmap non-char device %s\n",
+                                optarg);
+                        return COMMAND_ERROR_USAGE;
+                    } else {
+                        device_name = optarg;
+                        device_specified = 1;
+                    }
+                }
+                break;
+            default: /* '?' */
+                return COMMAND_ERROR_USAGE;
+        }
+    }
+    if (device_specified && !memtester_use_phys) {
+        printf("for mem device, physaddrbase (-p) must be specified\n");
+        return COMMAND_ERROR_USAGE;
+    }
+
+    if (optind >= argc) {
+        printf("need memory argument, in MB\n");
+        return COMMAND_ERROR_USAGE;
+    }
+
+    wantbytes = (size_t) strtoull_suffix(argv[optind], 0, 0);
+    if (wantbytes < 2 * sizeof(ul)) {
+        printf("need at least %ldB of memory to test\n", 2 * sizeof(ul));
+        return COMMAND_ERROR_USAGE;
+    }
+    wantmb = (wantbytes >> 20);
+    optind++;
+    if (wantmb > maxmb) {
+        printf("This system can only address %llu MB.\n", (ull) maxmb);
+        return EXIT_FAIL_NONSTARTER;
+    }
+
+    if (optind >= argc) {
+        loops = 0;
+    } else {
+        if (kstrtoul(argv[optind], 0, &loops)) {
+            printf("failed to parse number of loops");
+            return COMMAND_ERROR_USAGE;
+        }
+    }
+
+    printf("want %lluMB (%llu bytes)\n", (ull) wantmb, (ull) wantbytes);
+    buf = NULL;
+
+    if (memtester_use_phys) {
+        memfd = open(device_name, O_RDWR);
+        if (memfd == -1) {
+            printf("failed to open %s for physical memory: %s\n",
+                    device_name, strerror(errno));
+            return EXIT_FAIL_NONSTARTER;
+        }
+        buf = memmap(memfd, PROT_READ | PROT_WRITE) + memtester_physaddrbase;
+        if (buf == MAP_FAILED) {
+            printf("failed to mmap %s for physical memory: %s\n",
+                    device_name, strerror(errno));
+            close(memfd);
+            return EXIT_FAIL_NONSTARTER;
+        }
+
+        bufsize = wantbytes; /* accept no less */
+    } else {
+        buf = malloc(wantbytes);
+        if (!buf) {
+            printf("malloc failed\n");
+            return ENOMEM;
+        }
+        printf("got  %lluMB (%llu bytes)\n", (ull) wantbytes >> 20,
+               (ull) wantbytes);
+    }
+    bufsize = wantbytes;
+    aligned = buf;
+
+    printf("buffer @ 0x%p\n", buf);
+
+    halflen = bufsize / 2;
+    count = halflen / sizeof(ul);
+    bufa = (ulv *) aligned;
+    bufb = (ulv *) ((size_t) aligned + halflen);
+
+    for(loop=1; ((!loops) || loop <= loops); loop++) {
+        printf("Loop %lu", loop);
+        if (loops) {
+            printf("/%lu", loops);
+        }
+        printf(":\n");
+        printf("  %-20s: ", "Stuck Address");
+        ret = test_stuck_address(aligned, bufsize / sizeof(ul));
+        if (!ret) {
+             printf("ok\n");
+        } else if (ret == -EINTR) {
+            goto out;
+        } else {
+            exit_code |= EXIT_FAIL_ADDRESSLINES;
+        }
+        for (i=0;;i++) {
+            if (!tests[i].name) break;
+            /* If using a custom testmask, only run this test if the
+               bit corresponding to this test was set by the user.
+             */
+            if (testmask && (!((1 << i) & testmask))) {
+                continue;
+            }
+            printf("  %-20s: ", tests[i].name);
+            ret = tests[i].fp(bufa, bufb, count);
+            if (!ret) {
+                printf("ok\n");
+            } else if (ret == -EINTR) {
+                goto out;
+            } else {
+                exit_code |= EXIT_FAIL_OTHERTEST;
+            }
+        }
+        printf("\n");
+    }
+out:
+    if (memtester_use_phys)
+        close(memfd);
+    else
+        free((void *)buf);
+    printf("Done.\n");
+    if (!exit_code)
+        return 0;
+    printf("%s FAILED: 0x%x\n", argv[0], exit_code);
+    return COMMAND_ERROR;
+}
+
+BAREBOX_CMD_HELP_START(memtester)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_TEXT("-p PHYSADDR")
+BAREBOX_CMD_HELP_TEXT("        tells memtester to test a specific region of memory starting at physical")
+BAREBOX_CMD_HELP_TEXT("        address PHYSADDR (given in hex), by mmaping a device specified by the -d")
+BAREBOX_CMD_HELP_TEXT("        option (below, or  /dev/mem  by  default).")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("-d DEVICE")
+BAREBOX_CMD_HELP_TEXT("        a device to mmap")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("-m TESTMASK")
+BAREBOX_CMD_HELP_TEXT("        bitmask to select desired tests")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("MEMORY ")
+BAREBOX_CMD_HELP_TEXT("        the amount of memory to allocate and test in bytes. You")
+BAREBOX_CMD_HELP_TEXT("        can include a suffix of K, M, or G to indicate kilobytes, ")
+BAREBOX_CMD_HELP_TEXT("        megabytes, or gigabytes respectively.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("ITERATIONS")
+BAREBOX_CMD_HELP_TEXT("        (optional) number of loops to iterate through.  Default is infinite.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(memtester)
+	.cmd		= do_memtester,
+	BAREBOX_CMD_DESC("memory stress-testing")
+	BAREBOX_CMD_OPTS("[-p PHYSADDR [-d DEVICE]] [-m TESTMASK] <MEMORY>[k|M|G] [ITERATIONS]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
+	BAREBOX_CMD_HELP(cmd_memtester_help)
+BAREBOX_CMD_END
diff --git a/commands/memtester/memtester.h b/commands/memtester/memtester.h
new file mode 100644
index 0000000000..a683cd9d65
--- /dev/null
+++ b/commands/memtester/memtester.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Very simple (yet, for some reason, very effective) memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ * This file contains the declarations for external variables from the main file.
+ * See other comments in that file.
+ *
+ */
+
+#include <types.h>
+
+/* extern declarations. */
+
+extern int memtester_use_phys;
+extern off_t memtester_physaddrbase;
+
diff --git a/commands/memtester/sizes.h b/commands/memtester/sizes.h
new file mode 100644
index 0000000000..bbee8fab7f
--- /dev/null
+++ b/commands/memtester/sizes.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Very simple but very effective user-space memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ * This file contains some macro definitions for handling 32/64 bit platforms.
+ *
+ */
+
+#include <linux/limits.h>
+
+#define rand32() random32()
+
+#if defined(CONFIG_32BIT)
+    #define rand_ul() rand32()
+    #define UL_ONEBITS 0xffffffff
+    #define UL_LEN 32
+    #define CHECKERBOARD1 0x55555555
+    #define CHECKERBOARD2 0xaaaaaaaa
+    #define UL_BYTE(x) ((x | x << 8 | x << 16 | x << 24))
+#elif defined(CONFIG_64BIT)
+    #define rand64() (((ul) rand32()) << 32 | ((ul) rand32()))
+    #define rand_ul() rand64()
+    #define UL_ONEBITS 0xffffffffffffffffUL
+    #define UL_LEN 64
+    #define CHECKERBOARD1 0x5555555555555555
+    #define CHECKERBOARD2 0xaaaaaaaaaaaaaaaa
+    #define UL_BYTE(x) (((ul)x | (ul)x<<8 | (ul)x<<16 | (ul)x<<24 | (ul)x<<32 | (ul)x<<40 | (ul)x<<48 | (ul)x<<56))
+#else
+    #error long on this platform is not 32 or 64 bits
+#endif
+
+
diff --git a/commands/memtester/tests.c b/commands/memtester/tests.c
new file mode 100644
index 0000000000..711177007f
--- /dev/null
+++ b/commands/memtester/tests.c
@@ -0,0 +1,495 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Very simple but very effective user-space memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ * This file contains the functions for the actual tests, called from the
+ * main routine in memtester.c.  See other comments in that file.
+ *
+ */
+
+#include <common.h>
+#include <types.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <linux/limits.h>
+
+#include "types.h"
+#include "sizes.h"
+#include "memtester.h"
+#include "tests.h"
+
+static char progress[] = "-\\|/";
+#define PROGRESSLEN 4
+#define PROGRESSOFTEN 2500
+#define ONE 0x00000001L
+
+static mword8_t  mword8;
+static mword16_t mword16;
+
+/* Function definitions. */
+
+static int compare_regions(ulv *bufa, ulv *bufb, size_t count) {
+    int r = 0;
+    size_t i;
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    off_t physaddr;
+
+    if (ctrlc())
+        return -EINTR;
+
+    for (i = 0; i < count; i++, p1++, p2++) {
+        if (*p1 != *p2) {
+            if (memtester_use_phys) {
+                physaddr = memtester_physaddrbase + (i * sizeof(ul));
+                printf("FAILURE: 0x%08lx != 0x%08lx at physical address "
+                       "0x%08lx.\n", 
+                       (ul) *p1, (ul) *p2, physaddr);
+            } else {
+                printf("FAILURE: 0x%08lx != 0x%08lx at offset 0x%08lx.\n", 
+                       (ul) *p1, (ul) *p2, (ul) (i * sizeof(ul)));
+            }
+            /* printf("Skipping to next test..."); */
+            r = -1;
+        }
+    }
+    return r;
+}
+
+int test_stuck_address(ulv *bufa, size_t count) {
+    ulv *p1 = bufa;
+    unsigned int j;
+    size_t i;
+    off_t physaddr;
+
+    printf("           ");
+    for (j = 0; j < 16; j++) {
+        if (ctrlc())
+            return -EINTR;
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        p1 = (ulv *) bufa;
+        printf("setting %3u", j);
+        for (i = 0; i < count; i++) {
+            *p1 = ((j + i) % 2) == 0 ? (ul) p1 : ~((ul) p1);
+            *p1++;
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        p1 = (ulv *) bufa;
+        for (i = 0; i < count; i++, p1++) {
+            if (*p1 != (((j + i) % 2) == 0 ? (ul) p1 : ~((ul) p1))) {
+                if (memtester_use_phys) {
+                    physaddr = memtester_physaddrbase + (i * sizeof(ul));
+                    printf("FAILURE: possible bad address line at physical "
+                           "address 0x%08lx.\n", 
+                           physaddr);
+                } else {
+                    printf("FAILURE: possible bad address line at offset "
+                           "0x%08lx.\n", 
+                           (ul) (i * sizeof(ul)));
+                }
+                printf("Skipping to next test...\n");
+                return -1;
+            }
+        }
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_random_value(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    ul j = 0;
+    size_t i;
+
+    putchar(' ');
+    for (i = 0; i < count; i++) {
+        *p1++ = *p2++ = rand_ul();
+        if (!(i % PROGRESSOFTEN)) {
+            putchar('\b');
+            putchar(progress[++j % PROGRESSLEN]);
+        }
+    }
+    printf("\b \b");
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_xor_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ ^= q;
+        *p2++ ^= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_sub_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ -= q;
+        *p2++ -= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_mul_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ *= q;
+        *p2++ *= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_div_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        if (!q) {
+            q++;
+        }
+        *p1++ /= q;
+        *p2++ /= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_or_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ |= q;
+        *p2++ |= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_and_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ &= q;
+        *p2++ &= q;
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_seqinc_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    size_t i;
+    ul q = rand_ul();
+
+    for (i = 0; i < count; i++) {
+        *p1++ = *p2++ = (i + q);
+    }
+    return compare_regions(bufa, bufb, count);
+}
+
+int test_solidbits_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    ul q;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < 64; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        q = (j % 2) == 0 ? UL_ONEBITS : 0;
+        printf("setting %3u", j);
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        for (i = 0; i < count; i++) {
+            *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_checkerboard_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    ul q;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < 64; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        q = (j % 2) == 0 ? CHECKERBOARD1 : CHECKERBOARD2;
+        printf("setting %3u", j);
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        for (i = 0; i < count; i++) {
+            *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_blockseq_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < 256; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        printf("setting %3u", j);
+        for (i = 0; i < count; i++) {
+            *p1++ = *p2++ = (ul) UL_BYTE(j);
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_walkbits0_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < UL_LEN * 2; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        printf("setting %3u", j);
+        for (i = 0; i < count; i++) {
+            if (j < UL_LEN) { /* Walk it up. */
+                *p1++ = *p2++ = ONE << j;
+            } else { /* Walk it back down. */
+                *p1++ = *p2++ = ONE << (UL_LEN * 2 - j - 1);
+            }
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_walkbits1_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < UL_LEN * 2; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        printf("setting %3u", j);
+        for (i = 0; i < count; i++) {
+            if (j < UL_LEN) { /* Walk it up. */
+                *p1++ = *p2++ = UL_ONEBITS ^ (ONE << j);
+            } else { /* Walk it back down. */
+                *p1++ = *p2++ = UL_ONEBITS ^ (ONE << (UL_LEN * 2 - j - 1));
+            }
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_bitspread_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (j = 0; j < UL_LEN * 2; j++) {
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        p1 = (ulv *) bufa;
+        p2 = (ulv *) bufb;
+        printf("setting %3u", j);
+        for (i = 0; i < count; i++) {
+            if (j < UL_LEN) { /* Walk it up. */
+                *p1++ = *p2++ = (i % 2 == 0)
+                    ? (ONE << j) | (ONE << (j + 2))
+                    : UL_ONEBITS ^ ((ONE << j)
+                                    | (ONE << (j + 2)));
+            } else { /* Walk it back down. */
+                *p1++ = *p2++ = (i % 2 == 0)
+                    ? (ONE << (UL_LEN * 2 - 1 - j)) | (ONE << (UL_LEN * 2 + 1 - j))
+                    : UL_ONEBITS ^ (ONE << (UL_LEN * 2 - 1 - j)
+                                    | (ONE << (UL_LEN * 2 + 1 - j)));
+            }
+        }
+        printf("\b\b\b\b\b\b\b\b\b\b\b");
+        printf("testing %3u", j);
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_bitflip_comparison(ulv *bufa, ulv *bufb, size_t count) {
+    ulv *p1 = bufa;
+    ulv *p2 = bufb;
+    unsigned int j, k;
+    ul q;
+    size_t i;
+    int ret;
+
+    printf("           ");
+    for (k = 0; k < UL_LEN; k++) {
+        q = ONE << k;
+        for (j = 0; j < 8; j++) {
+            printf("\b\b\b\b\b\b\b\b\b\b\b");
+            q = ~q;
+            printf("setting %3u", k * 8 + j);
+            p1 = (ulv *) bufa;
+            p2 = (ulv *) bufb;
+            for (i = 0; i < count; i++) {
+                *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
+            }
+            printf("\b\b\b\b\b\b\b\b\b\b\b");
+            printf("testing %3u", k * 8 + j);
+            ret = compare_regions(bufa, bufb, count);
+            if (ret)
+                return -1;
+        }
+    }
+    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
+    return 0;
+}
+
+int test_8bit_wide_random(ulv* bufa, ulv* bufb, size_t count) {
+    u8v *p1, *t;
+    ulv *p2;
+    int attempt;
+    unsigned int b, j = 0;
+    size_t i;
+    int ret;
+
+    putchar(' ');
+    for (attempt = 0; attempt < 2;  attempt++) {
+        if (attempt & 1) {
+            p1 = (u8v *) bufa;
+            p2 = bufb;
+        } else {
+            p1 = (u8v *) bufb;
+            p2 = bufa;
+        }
+        for (i = 0; i < count; i++) {
+            t = mword8.bytes;
+            *p2++ = mword8.val = rand_ul();
+            for (b=0; b < UL_LEN/8; b++) {
+                *p1++ = *t++;
+            }
+            if (!(i % PROGRESSOFTEN)) {
+                putchar('\b');
+                putchar(progress[++j % PROGRESSLEN]);
+            }
+        }
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b \b");
+    return 0;
+}
+
+int test_16bit_wide_random(ulv* bufa, ulv* bufb, size_t count) {
+    u16v *p1, *t;
+    ulv *p2;
+    int attempt;
+    unsigned int b, j = 0;
+    size_t i;
+    int ret;
+
+    putchar( ' ' );
+    for (attempt = 0; attempt < 2; attempt++) {
+        if (attempt & 1) {
+            p1 = (u16v *) bufa;
+            p2 = bufb;
+        } else {
+            p1 = (u16v *) bufb;
+            p2 = bufa;
+        }
+        for (i = 0; i < count; i++) {
+            t = mword16.u16s;
+            *p2++ = mword16.val = rand_ul();
+            for (b = 0; b < UL_LEN/16; b++) {
+                *p1++ = *t++;
+            }
+            if (!(i % PROGRESSOFTEN)) {
+                putchar('\b');
+                putchar(progress[++j % PROGRESSLEN]);
+            }
+        }
+        ret = compare_regions(bufa, bufb, count);
+        if (ret)
+            return ret;
+    }
+    printf("\b \b");
+    return 0;
+}
diff --git a/commands/memtester/tests.h b/commands/memtester/tests.h
new file mode 100644
index 0000000000..86ef72509c
--- /dev/null
+++ b/commands/memtester/tests.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Very simple yet very effective memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ * This file contains the declarations for the functions for the actual tests,
+ * called from the main routine in memtester.c.  See other comments in that 
+ * file.
+ *
+ */
+
+/* Function declaration. */
+
+int test_stuck_address(unsigned long volatile *bufa, size_t count);
+int test_random_value(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_xor_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_sub_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_mul_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_div_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_or_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_and_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_seqinc_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_solidbits_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_checkerboard_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_blockseq_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_walkbits0_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_walkbits1_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_bitspread_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_bitflip_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_8bit_wide_random(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+int test_16bit_wide_random(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
+
diff --git a/commands/memtester/types.h b/commands/memtester/types.h
new file mode 100644
index 0000000000..0291610d2c
--- /dev/null
+++ b/commands/memtester/types.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Very simple but very effective user-space memory tester.
+ * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
+ * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
+ * Version 3 not publicly released.
+ * Version 4 rewrite:
+ * Copyright (C) 2004-2010 Charles Cazabon <charlesc-memtester@pyropus.ca>
+ *
+ * This file contains typedefs, structure, and union definitions.
+ *
+ */
+
+#include "sizes.h"
+
+typedef unsigned long ul;
+typedef unsigned long long ull;
+typedef unsigned long volatile ulv;
+typedef unsigned char volatile u8v;
+typedef unsigned short volatile u16v;
+
+struct test {
+    char *name;
+    int (*fp)(ulv *, ulv *, size_t);
+};
+
+typedef union {
+    unsigned char bytes[UL_LEN/8];
+    ul val;
+} mword8_t;
+
+typedef union {
+    unsigned short u16s[UL_LEN/16];
+    ul val;
+} mword16_t;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
