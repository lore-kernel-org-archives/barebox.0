Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBDWw-0004Ta-4r
 for barebox@lists.infradead.org; Thu, 27 Aug 2020 08:45:12 +0000
Date: Thu, 27 Aug 2020 10:45:03 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200827084503.3fj73n3mdmsf7rhi@pengutronix.de>
References: <20200826142632.13560-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826142632.13560-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] commands: import memtester 4.3.0 from Debian GNU/Linux
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 26, 2020 at 05:26:32PM +0300, Peter Mamonov wrote:
> Memtester is an utility for testing the memory subsystem for faults.  For
> hardware developers, memtester can be told to test memory starting at a
> particular physical address.
> 
> This port is based on the sources from Debian GNU/Linux. Debian package meta
> data is as follows:
> 
> 	Package: memtester
> 	Version: 4.3.0-5
> 	Homepage: http://pyropus.ca/software/memtester/
> 	APT-Sources: http://ftp.ru.debian.org/debian testing/main amd64 Packages
> 
> Dissected version of this patch can be found at
> https://github.com/pmamonov/barebox/commits/memtester and consists of two
> patches:
> 
> 	commands: import memtester 4.3.0 sources from Debian GNU/Linux
> 	commands: memtester: integrate it into barebox
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  commands/Kconfig               |   8 +
>  commands/Makefile              |   1 +
>  commands/memtester/Makefile    |   1 +
>  commands/memtester/memtester.c | 316 +++++++++++++++++++
>  commands/memtester/memtester.h |  22 ++
>  commands/memtester/sizes.h     |  38 +++
>  commands/memtester/tests.c     | 538 +++++++++++++++++++++++++++++++++
>  commands/memtester/tests.h     |  37 +++
>  commands/memtester/types.h     |  36 +++
>  9 files changed, 997 insertions(+)
>  create mode 100644 commands/memtester/Makefile
>  create mode 100644 commands/memtester/memtester.c
>  create mode 100644 commands/memtester/memtester.h
>  create mode 100644 commands/memtester/sizes.h
>  create mode 100644 commands/memtester/tests.c
>  create mode 100644 commands/memtester/tests.h
>  create mode 100644 commands/memtester/types.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3789f33c3b..34c24f7d25 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1590,6 +1590,14 @@ config CMD_MEMTEST
>  		  -i ITERATIONS	perform number of iterations (default 1, 0 is endless)
>  		  -b	perform only a test on bus lines
>  
> +config CMD_MEMTESTER
> +	tristate
> +	prompt "memtester"
> +	help
> +	  Utility for testing the memory subsystem.
> +
> +	  Homepage: http://pyropus.ca/software/memtester/
> +
>  config CMD_MM
>  	tristate
>  	select DEV_MEM
> diff --git a/commands/Makefile b/commands/Makefile
> index 01082de44c..191527c84e 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -49,6 +49,7 @@ obj-$(CONFIG_CMD_LOADENV)	+= loadenv.o
>  obj-$(CONFIG_CMD_NAND)		+= nand.o
>  obj-$(CONFIG_CMD_NANDTEST)	+= nandtest.o
>  obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
> +obj-$(CONFIG_CMD_MEMTESTER)	+= memtester/
>  obj-$(CONFIG_CMD_TRUE)		+= true.o
>  obj-$(CONFIG_CMD_FALSE)		+= false.o
>  obj-$(CONFIG_CMD_VERSION)	+= version.o
> diff --git a/commands/memtester/Makefile b/commands/memtester/Makefile
> new file mode 100644
> index 0000000000..17a2429276
> --- /dev/null
> +++ b/commands/memtester/Makefile
> @@ -0,0 +1 @@
> +obj-y += tests.o memtester.o
> diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
> new file mode 100644
> index 0000000000..7be6a9c693
> --- /dev/null
> +++ b/commands/memtester/memtester.c
> @@ -0,0 +1,316 @@
> +/*
> + * memtester version 4
> + *
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.
> + *
> + */

Please add SPDX identifiers to new files, see [1] for more info. In this
case it should be

    /* SPDX-License-Identifier: GPL-2.0-only */

You can then drop the "Licensed under the terms..." line.

[1]: <https://www.kernel.org/doc/html/latest/process/license-rules.html>

> +
> +#define __version__ "4.3.0"
> +
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <types.h>
> +#include <sys/stat.h>
> +#include <unistd.h>
> +#include <fcntl.h>
> +#include <string.h>
> +#include <errno.h>
> +#include <getopt.h>
> +#include <common.h>
> +#include <command.h>
> +#include <environment.h>
> +#include <fs.h>
> +
> +#include "types.h"
> +#include "sizes.h"
> +#include "tests.h"
> +
> +#define EXIT_FAIL_NONSTARTER    0x01
> +#define EXIT_FAIL_ADDRESSLINES  0x02
> +#define EXIT_FAIL_OTHERTEST     0x04
> +
> +struct test tests[] = {
> +    { "Random Value", test_random_value },
> +    { "Compare XOR", test_xor_comparison },
> +    { "Compare SUB", test_sub_comparison },
> +    { "Compare MUL", test_mul_comparison },
> +    { "Compare DIV",test_div_comparison },
> +    { "Compare OR", test_or_comparison },
> +    { "Compare AND", test_and_comparison },
> +    { "Sequential Increment", test_seqinc_comparison },
> +    { "Solid Bits", test_solidbits_comparison },
> +    { "Block Sequential", test_blockseq_comparison },
> +    { "Checkerboard", test_checkerboard_comparison },
> +    { "Bit Spread", test_bitspread_comparison },
> +    { "Bit Flip", test_bitflip_comparison },
> +    { "Walking Ones", test_walkbits1_comparison },
> +    { "Walking Zeroes", test_walkbits0_comparison },
> +    { "8-bit Writes", test_8bit_wide_random },
> +    { "16-bit Writes", test_16bit_wide_random },
> +    { NULL, NULL }
> +};
> +
> +/* Function declarations */
> +
> +/* Global vars - so tests have access to this information */
> +int use_phys = 0;
> +off_t physaddrbase = 0;
> +
> +static int do_memtester(int argc, char **argv) {
> +    ul loops, loop, i;
> +    size_t wantraw, wantmb, wantbytes, wantbytes_orig, bufsize,
> +         halflen, count;
> +    char *memsuffix, *addrsuffix, *loopsuffix;
> +    void volatile *buf, *aligned;
> +    ulv *bufa, *bufb;
> +    int exit_code = 0, ret;
> +    int memfd = 0, opt, memshift;
> +    size_t maxbytes = -1; /* addressable memory, in bytes */
> +    size_t maxmb = (maxbytes >> 20) + 1; /* addressable memory, in MB */
> +    /* Device to mmap memory from with -p, default is normal core */
> +    char *device_name = "/dev/mem";
> +    struct stat statbuf;
> +    int device_specified = 0;
> +    const char *env_testmask = 0;
> +    ul testmask = 0;
> +
> +    printf("memtester version " __version__ " (%d-bit)\n", UL_LEN);
> +    printf("Copyright (C) 2001-2012 Charles Cazabon.\n");
> +    printf("Licensed under the GNU General Public License version 2 (only).\n");
> +    printf("\n");
> +
> +    /* If MEMTESTER_TEST_MASK is set, we use its value as a mask of which
> +       tests we run.
> +     */
> +    if ((env_testmask = getenv("MEMTESTER_TEST_MASK"))) {
> +        errno = 0;
> +        testmask = simple_strtoul(env_testmask, 0, 0);
> +        if (errno) {
> +            printf("error parsing MEMTESTER_TEST_MASK %s: %s\n",
> +                    env_testmask, strerror(errno));
> +            return COMMAND_ERROR_USAGE;
> +        }
> +        printf("using testmask 0x%lx\n", testmask);
> +    }
> +
> +    while ((opt = getopt(argc, argv, "p:d:")) != -1) {
> +        switch (opt) {
> +            case 'p':
> +                errno = 0;
> +                physaddrbase = (off_t) simple_strtoull(optarg, &addrsuffix, 16);
> +                if (errno != 0) {
> +                    printf("failed to parse physaddrbase arg; should be hex "
> +                           "address (0x123...)\n");
> +                    return COMMAND_ERROR_USAGE;
> +                }
> +                if (*addrsuffix != '\0') {
> +                    /* got an invalid character in the address */
> +                    printf("failed to parse physaddrbase arg; should be hex "
> +                           "address (0x123...)\n");
> +                    return COMMAND_ERROR_USAGE;
> +                }
> +                /* okay, got address */
> +                use_phys = 1;
> +                break;
> +            case 'd':
> +                if (stat(optarg,&statbuf)) {
> +                    printf("can not use %s as device: %s\n", optarg,
> +                            strerror(errno));
> +                    return COMMAND_ERROR_USAGE;
> +                } else {
> +                    if (!S_ISCHR(statbuf.st_mode)) {
> +                        printf("can not mmap non-char device %s\n",
> +                                optarg);
> +                        return COMMAND_ERROR_USAGE;
> +                    } else {
> +                        device_name = optarg;
> +                        device_specified = 1;
> +                    }
> +                }
> +                break;
> +            default: /* '?' */
> +                return COMMAND_ERROR_USAGE;
> +        }
> +    }
> +    if (device_specified && !use_phys) {
> +        printf("for mem device, physaddrbase (-p) must be specified\n");
> +        return COMMAND_ERROR_USAGE;
> +    }
> +
> +    if (optind >= argc) {
> +        printf("need memory argument, in MB\n");
> +        return COMMAND_ERROR_USAGE;
> +    }
> +
> +    errno = 0;
> +    wantraw = (size_t) simple_strtoul(argv[optind], &memsuffix, 0);
> +    if (errno != 0) {
> +        printf("failed to parse memory argument");
> +        return COMMAND_ERROR_USAGE;
> +    }
> +    switch (*memsuffix) {
> +        case 'G':
> +        case 'g':
> +            memshift = 30; /* gigabytes */
> +            break;
> +        case 'M':
> +        case 'm':
> +            memshift = 20; /* megabytes */
> +            break;
> +        case 'K':
> +        case 'k':
> +            memshift = 10; /* kilobytes */
> +            break;
> +        case 'B':
> +        case 'b':
> +            memshift = 0; /* bytes*/
> +            break;
> +        case '\0':  /* no suffix */
> +            memshift = 20; /* megabytes */
> +            break;
> +        default:
> +            /* bad suffix */
> +            return COMMAND_ERROR_USAGE;
> +    }
> +    wantbytes_orig = wantbytes = ((size_t) wantraw << memshift);
> +    wantmb = (wantbytes_orig >> 20);
> +    optind++;
> +    if (wantmb > maxmb) {
> +        printf("This system can only address %llu MB.\n", (ull) maxmb);
> +        return EXIT_FAIL_NONSTARTER;
> +    }
> +
> +    if (optind >= argc) {
> +        loops = 0;
> +    } else {
> +        errno = 0;
> +        loops = simple_strtoul(argv[optind], &loopsuffix, 0);
> +        if (errno != 0) {
> +            printf("failed to parse number of loops");
> +            return COMMAND_ERROR_USAGE;
> +        }
> +        if (*loopsuffix != '\0') {
> +            printf("loop suffix %c\n", *loopsuffix);
> +            return COMMAND_ERROR_USAGE;
> +        }
> +    }
> +
> +    printf("want %lluMB (%llu bytes)\n", (ull) wantmb, (ull) wantbytes);
> +    buf = NULL;
> +
> +    if (use_phys) {
> +        memfd = open(device_name, O_RDWR);
> +        if (memfd == -1) {
> +            printf("failed to open %s for physical memory: %s\n",
> +                    device_name, strerror(errno));
> +            return EXIT_FAIL_NONSTARTER;
> +        }
> +        buf = (void volatile *) memmap(memfd, PROT_READ | PROT_WRITE) +
> +                                       physaddrbase;
> +        if (buf == MAP_FAILED) {
> +            printf("failed to mmap %s for physical memory: %s\n",
> +                    device_name, strerror(errno));
> +            return EXIT_FAIL_NONSTARTER;
> +        }
> +
> +        bufsize = wantbytes; /* accept no less */
> +    } else {
> +        buf = (void volatile *) malloc(wantbytes);
> +        if (!buf) {
> +            printf("malloc failed\n");
> +            return ENOMEM;
> +        }
> +        printf("got  %lluMB (%llu bytes)\n", (ull) wantbytes >> 20,
> +               (ull) wantbytes);
> +    }
> +    bufsize = wantbytes;
> +    aligned = buf;
> +
> +    printf("buffer @ 0x%p\n", buf);
> +
> +    halflen = bufsize / 2;
> +    count = halflen / sizeof(ul);
> +    bufa = (ulv *) aligned;
> +    bufb = (ulv *) ((size_t) aligned + halflen);
> +
> +    for(loop=1; ((!loops) || loop <= loops); loop++) {
> +        printf("Loop %lu", loop);
> +        if (loops) {
> +            printf("/%lu", loops);
> +        }
> +        printf(":\n");
> +        printf("  %-20s: ", "Stuck Address");
> +        console_flush();
> +        ret = test_stuck_address(aligned, bufsize / sizeof(ul));
> +        if (!ret) {
> +             printf("ok\n");
> +        } else if (ret == -EINTR) {
> +            goto out;
> +        } else {
> +            exit_code |= EXIT_FAIL_ADDRESSLINES;
> +        }
> +        for (i=0;;i++) {
> +            if (!tests[i].name) break;
> +            /* If using a custom testmask, only run this test if the
> +               bit corresponding to this test was set by the user.
> +             */
> +            if (testmask && (!((1 << i) & testmask))) {
> +                continue;
> +            }
> +            printf("  %-20s: ", tests[i].name);
> +            ret = tests[i].fp(bufa, bufb, count);
> +            if (!ret) {
> +                printf("ok\n");
> +            } else if (ret == -EINTR) {
> +                goto out;
> +            } else {
> +                exit_code |= EXIT_FAIL_OTHERTEST;
> +            }
> +            console_flush();
> +        }
> +        printf("\n");
> +        console_flush();
> +    }
> +out:
> +    if (use_phys)
> +        close(memfd);
> +    else
> +        free((void *)buf);
> +    printf("Done.\n");
> +    console_flush();
> +    return exit_code;
> +}
> +
> +BAREBOX_CMD_HELP_START(memtester)
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_TEXT("-p PHYSADDR")
> +BAREBOX_CMD_HELP_TEXT("        tells memtester to test a specific region of memory starting at physical")
> +BAREBOX_CMD_HELP_TEXT("        address PHYSADDR (given in hex), by mmaping a device specified by the -d")
> +BAREBOX_CMD_HELP_TEXT("        option (below, or  /dev/mem  by  default).")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("-d DEVICE")
> +BAREBOX_CMD_HELP_TEXT("        a device to mmap")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("MEMORY ")
> +BAREBOX_CMD_HELP_TEXT("        the amount of memory to allocate and test, in megabytes by default. You")
> +BAREBOX_CMD_HELP_TEXT("        can include a suffix of B, K, M, or G to indicate bytes, kilobytes, ")
> +BAREBOX_CMD_HELP_TEXT("        megabytes, or gigabytes respectively.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("ITERATIONS")
> +BAREBOX_CMD_HELP_TEXT("        (optional) number of loops to iterate through.  Default is infinite.")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(memtester)
> +	.cmd		= do_memtester,
> +	BAREBOX_CMD_DESC("memory stress-testing")
> +	BAREBOX_CMD_OPTS("[-p PHYSADDR [-d DEVICE]] <MEMORY>[B|K|M|G] [ITERATIONS]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
> +	BAREBOX_CMD_HELP(cmd_memtester_help)
> +BAREBOX_CMD_END
> diff --git a/commands/memtester/memtester.h b/commands/memtester/memtester.h
> new file mode 100644
> index 0000000000..6469e034a4
> --- /dev/null
> +++ b/commands/memtester/memtester.h
> @@ -0,0 +1,22 @@
> +/*
> + * Very simple (yet, for some reason, very effective) memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.

same here

> + *
> + * This file contains the declarations for external variables from the main file.
> + * See other comments in that file.
> + *
> + */
> +
> +#include <types.h>
> +
> +/* extern declarations. */
> +
> +extern int use_phys;
> +extern off_t physaddrbase;
> +
> diff --git a/commands/memtester/sizes.h b/commands/memtester/sizes.h
> new file mode 100644
> index 0000000000..09ce38cbc0
> --- /dev/null
> +++ b/commands/memtester/sizes.h
> @@ -0,0 +1,38 @@
> +/*
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.

and here

> + *
> + * This file contains some macro definitions for handling 32/64 bit platforms.
> + *
> + */
> +
> +#include <linux/limits.h>
> +
> +#define rand32() ((unsigned int) rand() | ( (unsigned int) rand() << 16))
> +
> +#if defined(CONFIG_32BIT)
> +    #define rand_ul() rand32()
> +    #define UL_ONEBITS 0xffffffff
> +    #define UL_LEN 32
> +    #define CHECKERBOARD1 0x55555555
> +    #define CHECKERBOARD2 0xaaaaaaaa
> +    #define UL_BYTE(x) ((x | x << 8 | x << 16 | x << 24))
> +#elif defined(CONFIG_64BIT)
> +    #define rand64() (((ul) rand32()) << 32 | ((ul) rand32()))
> +    #define rand_ul() rand64()
> +    #define UL_ONEBITS 0xffffffffffffffffUL
> +    #define UL_LEN 64
> +    #define CHECKERBOARD1 0x5555555555555555
> +    #define CHECKERBOARD2 0xaaaaaaaaaaaaaaaa
> +    #define UL_BYTE(x) (((ul)x | (ul)x<<8 | (ul)x<<16 | (ul)x<<24 | (ul)x<<32 | (ul)x<<40 | (ul)x<<48 | (ul)x<<56))
> +#else
> +    #error long on this platform is not 32 or 64 bits
> +#endif
> +
> +
> diff --git a/commands/memtester/tests.c b/commands/memtester/tests.c
> new file mode 100644
> index 0000000000..c69dfcb953
> --- /dev/null
> +++ b/commands/memtester/tests.c
> @@ -0,0 +1,538 @@
> +/*
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.

and here

> + *
> + * This file contains the functions for the actual tests, called from the
> + * main routine in memtester.c.  See other comments in that file.
> + *
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <linux/limits.h>
> +
> +#include "types.h"
> +#include "sizes.h"
> +#include "memtester.h"
> +#include "tests.h"
> +
> +char progress[] = "-\\|/";
> +#define PROGRESSLEN 4
> +#define PROGRESSOFTEN 2500
> +#define ONE 0x00000001L
> +
> +mword8_t  mword8;
> +mword16_t mword16;
> +
> +/* Function definitions. */
> +
> +static int compare_regions(ulv *bufa, ulv *bufb, size_t count) {
> +    int r = 0;
> +    size_t i;
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    off_t physaddr;
> +
> +    if (ctrlc())
> +        return -EINTR;
> +
> +    for (i = 0; i < count; i++, p1++, p2++) {
> +        if (*p1 != *p2) {
> +            if (use_phys) {
> +                physaddr = physaddrbase + (i * sizeof(ul));
> +                printf("FAILURE: 0x%08lx != 0x%08lx at physical address "
> +                       "0x%08lx.\n", 
> +                       (ul) *p1, (ul) *p2, physaddr);
> +            } else {
> +                printf("FAILURE: 0x%08lx != 0x%08lx at offset 0x%08lx.\n", 
> +                       (ul) *p1, (ul) *p2, (ul) (i * sizeof(ul)));
> +            }
> +            /* printf("Skipping to next test..."); */
> +            r = -1;
> +        }
> +    }
> +    return r;
> +}
> +
> +int test_stuck_address(ulv *bufa, size_t count) {
> +    ulv *p1 = bufa;
> +    unsigned int j;
> +    size_t i;
> +    off_t physaddr;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < 16; j++) {
> +        if (ctrlc())
> +            return -EINTR;
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        p1 = (ulv *) bufa;
> +        printf("setting %3u", j);
> +        console_flush();
> +        for (i = 0; i < count; i++) {
> +            *p1 = ((j + i) % 2) == 0 ? (ul) p1 : ~((ul) p1);
> +            *p1++;
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        p1 = (ulv *) bufa;
> +        for (i = 0; i < count; i++, p1++) {
> +            if (*p1 != (((j + i) % 2) == 0 ? (ul) p1 : ~((ul) p1))) {
> +                if (use_phys) {
> +                    physaddr = physaddrbase + (i * sizeof(ul));
> +                    printf("FAILURE: possible bad address line at physical "
> +                           "address 0x%08lx.\n", 
> +                           physaddr);
> +                } else {
> +                    printf("FAILURE: possible bad address line at offset "
> +                           "0x%08lx.\n", 
> +                           (ul) (i * sizeof(ul)));
> +                }
> +                printf("Skipping to next test...\n");
> +                console_flush();
> +                return -1;
> +            }
> +        }
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_random_value(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    ul j = 0;
> +    size_t i;
> +
> +    putchar(' ');
> +    console_flush();
> +    for (i = 0; i < count; i++) {
> +        *p1++ = *p2++ = rand_ul();
> +        if (!(i % PROGRESSOFTEN)) {
> +            putchar('\b');
> +            putchar(progress[++j % PROGRESSLEN]);
> +            console_flush();
> +        }
> +    }
> +    printf("\b \b");
> +    console_flush();
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_xor_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ ^= q;
> +        *p2++ ^= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_sub_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ -= q;
> +        *p2++ -= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_mul_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ *= q;
> +        *p2++ *= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_div_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        if (!q) {
> +            q++;
> +        }
> +        *p1++ /= q;
> +        *p2++ /= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_or_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ |= q;
> +        *p2++ |= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_and_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ &= q;
> +        *p2++ &= q;
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_seqinc_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    size_t i;
> +    ul q = rand_ul();
> +
> +    for (i = 0; i < count; i++) {
> +        *p1++ = *p2++ = (i + q);
> +    }
> +    return compare_regions(bufa, bufb, count);
> +}
> +
> +int test_solidbits_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    ul q;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < 64; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        q = (j % 2) == 0 ? UL_ONEBITS : 0;
> +        printf("setting %3u", j);
> +        console_flush();
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        for (i = 0; i < count; i++) {
> +            *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_checkerboard_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    ul q;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < 64; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        q = (j % 2) == 0 ? CHECKERBOARD1 : CHECKERBOARD2;
> +        printf("setting %3u", j);
> +        console_flush();
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        for (i = 0; i < count; i++) {
> +            *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_blockseq_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < 256; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        printf("setting %3u", j);
> +        console_flush();
> +        for (i = 0; i < count; i++) {
> +            *p1++ = *p2++ = (ul) UL_BYTE(j);
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_walkbits0_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < UL_LEN * 2; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        printf("setting %3u", j);
> +        console_flush();
> +        for (i = 0; i < count; i++) {
> +            if (j < UL_LEN) { /* Walk it up. */
> +                *p1++ = *p2++ = ONE << j;
> +            } else { /* Walk it back down. */
> +                *p1++ = *p2++ = ONE << (UL_LEN * 2 - j - 1);
> +            }
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_walkbits1_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < UL_LEN * 2; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        printf("setting %3u", j);
> +        console_flush();
> +        for (i = 0; i < count; i++) {
> +            if (j < UL_LEN) { /* Walk it up. */
> +                *p1++ = *p2++ = UL_ONEBITS ^ (ONE << j);
> +            } else { /* Walk it back down. */
> +                *p1++ = *p2++ = UL_ONEBITS ^ (ONE << (UL_LEN * 2 - j - 1));
> +            }
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_bitspread_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (j = 0; j < UL_LEN * 2; j++) {
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        p1 = (ulv *) bufa;
> +        p2 = (ulv *) bufb;
> +        printf("setting %3u", j);
> +        console_flush();
> +        for (i = 0; i < count; i++) {
> +            if (j < UL_LEN) { /* Walk it up. */
> +                *p1++ = *p2++ = (i % 2 == 0)
> +                    ? (ONE << j) | (ONE << (j + 2))
> +                    : UL_ONEBITS ^ ((ONE << j)
> +                                    | (ONE << (j + 2)));
> +            } else { /* Walk it back down. */
> +                *p1++ = *p2++ = (i % 2 == 0)
> +                    ? (ONE << (UL_LEN * 2 - 1 - j)) | (ONE << (UL_LEN * 2 + 1 - j))
> +                    : UL_ONEBITS ^ (ONE << (UL_LEN * 2 - 1 - j)
> +                                    | (ONE << (UL_LEN * 2 + 1 - j)));
> +            }
> +        }
> +        printf("\b\b\b\b\b\b\b\b\b\b\b");
> +        printf("testing %3u", j);
> +        console_flush();
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_bitflip_comparison(ulv *bufa, ulv *bufb, size_t count) {
> +    ulv *p1 = bufa;
> +    ulv *p2 = bufb;
> +    unsigned int j, k;
> +    ul q;
> +    size_t i;
> +    int ret;
> +
> +    printf("           ");
> +    console_flush();
> +    for (k = 0; k < UL_LEN; k++) {
> +        q = ONE << k;
> +        for (j = 0; j < 8; j++) {
> +            printf("\b\b\b\b\b\b\b\b\b\b\b");
> +            q = ~q;
> +            printf("setting %3u", k * 8 + j);
> +            console_flush();
> +            p1 = (ulv *) bufa;
> +            p2 = (ulv *) bufb;
> +            for (i = 0; i < count; i++) {
> +                *p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
> +            }
> +            printf("\b\b\b\b\b\b\b\b\b\b\b");
> +            printf("testing %3u", k * 8 + j);
> +            console_flush();
> +            ret = compare_regions(bufa, bufb, count);
> +            if (ret)
> +                return -1;
> +        }
> +    }
> +    printf("\b\b\b\b\b\b\b\b\b\b\b           \b\b\b\b\b\b\b\b\b\b\b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_8bit_wide_random(ulv* bufa, ulv* bufb, size_t count) {
> +    u8v *p1, *t;
> +    ulv *p2;
> +    int attempt;
> +    unsigned int b, j = 0;
> +    size_t i;
> +    int ret;
> +
> +    putchar(' ');
> +    console_flush();
> +    for (attempt = 0; attempt < 2;  attempt++) {
> +        if (attempt & 1) {
> +            p1 = (u8v *) bufa;
> +            p2 = bufb;
> +        } else {
> +            p1 = (u8v *) bufb;
> +            p2 = bufa;
> +        }
> +        for (i = 0; i < count; i++) {
> +            t = mword8.bytes;
> +            *p2++ = mword8.val = rand_ul();
> +            for (b=0; b < UL_LEN/8; b++) {
> +                *p1++ = *t++;
> +            }
> +            if (!(i % PROGRESSOFTEN)) {
> +                putchar('\b');
> +                putchar(progress[++j % PROGRESSLEN]);
> +                console_flush();
> +            }
> +        }
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b \b");
> +    console_flush();
> +    return 0;
> +}
> +
> +int test_16bit_wide_random(ulv* bufa, ulv* bufb, size_t count) {
> +    u16v *p1, *t;
> +    ulv *p2;
> +    int attempt;
> +    unsigned int b, j = 0;
> +    size_t i;
> +    int ret;
> +
> +    putchar( ' ' );
> +    console_flush();
> +    for (attempt = 0; attempt < 2; attempt++) {
> +        if (attempt & 1) {
> +            p1 = (u16v *) bufa;
> +            p2 = bufb;
> +        } else {
> +            p1 = (u16v *) bufb;
> +            p2 = bufa;
> +        }
> +        for (i = 0; i < count; i++) {
> +            t = mword16.u16s;
> +            *p2++ = mword16.val = rand_ul();
> +            for (b = 0; b < UL_LEN/16; b++) {
> +                *p1++ = *t++;
> +            }
> +            if (!(i % PROGRESSOFTEN)) {
> +                putchar('\b');
> +                putchar(progress[++j % PROGRESSLEN]);
> +                console_flush();
> +            }
> +        }
> +        ret = compare_regions(bufa, bufb, count);
> +        if (ret)
> +            return ret;
> +    }
> +    printf("\b \b");
> +    console_flush();
> +    return 0;
> +}
> diff --git a/commands/memtester/tests.h b/commands/memtester/tests.h
> new file mode 100644
> index 0000000000..7f7eb1a497
> --- /dev/null
> +++ b/commands/memtester/tests.h
> @@ -0,0 +1,37 @@
> +/*
> + * Very simple yet very effective memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.

and here

> + *
> + * This file contains the declarations for the functions for the actual tests,
> + * called from the main routine in memtester.c.  See other comments in that 
> + * file.
> + *
> + */
> +
> +/* Function declaration. */
> +
> +int test_stuck_address(unsigned long volatile *bufa, size_t count);
> +int test_random_value(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_xor_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_sub_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_mul_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_div_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_or_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_and_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_seqinc_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_solidbits_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_checkerboard_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_blockseq_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_walkbits0_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_walkbits1_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_bitspread_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_bitflip_comparison(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_8bit_wide_random(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +int test_16bit_wide_random(unsigned long volatile *bufa, unsigned long volatile *bufb, size_t count);
> +
> diff --git a/commands/memtester/types.h b/commands/memtester/types.h
> new file mode 100644
> index 0000000000..8591a800b9
> --- /dev/null
> +++ b/commands/memtester/types.h
> @@ -0,0 +1,36 @@
> +/*
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2010 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Licensed under the terms of the GNU General Public License version 2 (only).
> + * See the file COPYING for details.

and here.

 - Roland

> + *
> + * This file contains typedefs, structure, and union definitions.
> + *
> + */
> +
> +#include "sizes.h"
> +
> +typedef unsigned long ul;
> +typedef unsigned long long ull;
> +typedef unsigned long volatile ulv;
> +typedef unsigned char volatile u8v;
> +typedef unsigned short volatile u16v;
> +
> +struct test {
> +    char *name;
> +    int (*fp)(ulv *, ulv *, size_t);
> +};
> +
> +typedef union {
> +    unsigned char bytes[UL_LEN/8];
> +    ul val;
> +} mword8_t;
> +
> +typedef union {
> +    unsigned short u16s[UL_LEN/16];
> +    ul val;
> +} mword16_t;
> -- 
> 2.24.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
