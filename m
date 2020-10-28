Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXi3Q-0005n6-LI
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 09:47:42 +0000
Date: Wed, 28 Oct 2020 10:47:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201028094737.GZ26805@pengutronix.de>
References: <20201023214522.21130-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023214522.21130-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH v2] commands: import memtester 4.3.0 from Debian GNU/Linux
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de

Hi Peter,

There are a few more things to fix. I just saw I never answered to your
last mail.

> Do you prefer this two step version to be submitted?

No, it's ok as a singe patch.


On Sat, Oct 24, 2020 at 12:45:22AM +0300, Peter Mamonov wrote:
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
> https://github.com/pmamonov/barebox/commits/memtester
> 
> Changes since v1:
> 
> 	1acbafe7a2 init global vars on start
> 	7664692fd4 use proper return value
> 	a10eba5b49 use strtoull_suffix() to parse memory size
> 	001b623c16 add option to set TESTMASK
> 	3acfe07d56 make tests[] static
> 	528360ebd7 fix license
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  commands/Kconfig               |   8 +
>  commands/Makefile              |   1 +
>  commands/memtester/Makefile    |   1 +
>  commands/memtester/memtester.c | 295 ++++++++++++++++++
>  commands/memtester/memtester.h |  21 ++
>  commands/memtester/sizes.h     |  37 +++
>  commands/memtester/tests.c     | 537 +++++++++++++++++++++++++++++++++
>  commands/memtester/tests.h     |  36 +++
>  commands/memtester/types.h     |  35 +++
>  9 files changed, 971 insertions(+)
>  create mode 100644 commands/memtester/Makefile
>  create mode 100644 commands/memtester/memtester.c
>  create mode 100644 commands/memtester/memtester.h
>  create mode 100644 commands/memtester/sizes.h
>  create mode 100644 commands/memtester/tests.c
>  create mode 100644 commands/memtester/tests.h
>  create mode 100644 commands/memtester/types.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index df18715f20..960d3608c7 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1611,6 +1611,14 @@ config CMD_MEMTEST
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
> index 6cc4997cc5..dc285cd00e 100644
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
> index 0000000000..8342eabfb1
> --- /dev/null
> +++ b/commands/memtester/memtester.c
> @@ -0,0 +1,295 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * memtester version 4
> + *
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + *
> + */
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
> +#define EXIT_FAIL_NONSTARTER    COMMAND_ERROR
> +#define EXIT_FAIL_ADDRESSLINES  0x02
> +#define EXIT_FAIL_OTHERTEST     0x04
> +
> +static struct test tests[] = {
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
> +int use_phys;
> +off_t physaddrbase;

These names are too generic for global variables. Please add a
memtester_ prefix.

> +
> +static int do_memtester(int argc, char **argv) {
> +    ul loops, loop, i;
> +    size_t wantmb, wantbytes, bufsize,
> +         halflen, count;
> +    char *addrsuffix, *loopsuffix;
> +    void volatile *buf, *aligned;

You can drop this 'volatile' here - it's the functions you call with
this buf that need it. Also you can drop the casts when using this buf.

> +    ulv *bufa, *bufb;
> +    int exit_code = 0, ret;
> +    int memfd = 0, opt;
> +    size_t maxbytes = -1; /* addressable memory, in bytes */
> +    size_t maxmb = (maxbytes >> 20) + 1; /* addressable memory, in MB */
> +    /* Device to mmap memory from with -p, default is normal core */
> +    char *device_name = "/dev/mem";
> +    struct stat statbuf;
> +    int device_specified = 0;
> +    ul testmask = 0;
> +
> +    use_phys = 0;
> +    physaddrbase = 0;
> +
> +    printf("memtester version " __version__ " (%d-bit)\n", UL_LEN);
> +    printf("Copyright (C) 2001-2012 Charles Cazabon.\n");
> +    printf("Licensed under the GNU General Public License version 2 (only).\n");
> +    printf("\n");
> +
> +    while ((opt = getopt(argc, argv, "p:d:m:")) != -1) {
> +        switch (opt) {
> +            case 'm':
> +                errno = 0;
> +                testmask = simple_strtoul(optarg, 0, 0);
> +                if (errno) {
> +                    printf("error parsing MEMTESTER_TEST_MASK %s: %s\n",
> +                            optarg, strerror(errno));
> +                    return COMMAND_ERROR_USAGE;
> +                }
> +                printf("using testmask 0x%lx\n", testmask);
> +                break;
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
> +    wantbytes = (size_t) strtoull_suffix(argv[optind], 0, 0);
> +    if (errno != 0) {
> +        printf("failed to parse memory argument");
> +        return COMMAND_ERROR_USAGE;
> +    }

strtoull_suffix() doesn't set errno. There is currently no way to detect
an error from strtoull_suffix().

> +    wantmb = (wantbytes >> 20);
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

same here. You can use kstrtoul instead which allows checking for
errors. Another option would be to change simple_strtoul() to set errno.

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

memfd is not closed in this error path.

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

Why did you add all these console_flush() throughout the code?

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
> +    if (!exit_code)
> +        return 0;
> +    printf("%s FAILED: 0x%x\n", argv[0], exit_code);
> +    return COMMAND_ERROR;
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
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("-m TESTMASK")
> +BAREBOX_CMD_HELP_TEXT("        bitmask to select desired tests")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("MEMORY ")
> +BAREBOX_CMD_HELP_TEXT("        the amount of memory to allocate and test in bytes. You")
> +BAREBOX_CMD_HELP_TEXT("        can include a suffix of K, M, or G to indicate kilobytes, ")
> +BAREBOX_CMD_HELP_TEXT("        megabytes, or gigabytes respectively.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("ITERATIONS")
> +BAREBOX_CMD_HELP_TEXT("        (optional) number of loops to iterate through.  Default is infinite.")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(memtester)
> +	.cmd		= do_memtester,
> +	BAREBOX_CMD_DESC("memory stress-testing")
> +	BAREBOX_CMD_OPTS("[-p PHYSADDR [-d DEVICE]] [-m TESTMASK] <MEMORY>[k|M|G] [ITERATIONS]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
> +	BAREBOX_CMD_HELP(cmd_memtester_help)
> +BAREBOX_CMD_END
> diff --git a/commands/memtester/memtester.h b/commands/memtester/memtester.h
> new file mode 100644
> index 0000000000..008af0351a
> --- /dev/null
> +++ b/commands/memtester/memtester.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Very simple (yet, for some reason, very effective) memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
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
> index 0000000000..d57f74f8ba
> --- /dev/null
> +++ b/commands/memtester/sizes.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> + *
> + * This file contains some macro definitions for handling 32/64 bit platforms.
> + *
> + */
> +
> +#include <linux/limits.h>
> +
> +#define rand32() ((unsigned int) rand() | ( (unsigned int) rand() << 16))

For some historic reason RAND_MAX in barebox is defined as 32768, so
rand() returns only 15bit. While I am sure that this can and should be
changed we also have random32() which does what you want here.

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
> index 0000000000..4411573ba4
> --- /dev/null
> +++ b/commands/memtester/tests.c
> @@ -0,0 +1,537 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Very simple but very effective user-space memory tester.
> + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> + * Version 3 not publicly released.
> + * Version 4 rewrite:
> + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
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

These should be static.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
