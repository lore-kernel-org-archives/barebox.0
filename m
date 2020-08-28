Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBbaC-00063B-Nd
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 10:26:10 +0000
Received: by mail-lj1-x231.google.com with SMTP id h19so688207ljg.13
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2020 03:26:06 -0700 (PDT)
Date: Fri, 28 Aug 2020 13:25:58 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200828102557.GA26484@chr>
References: <20200826142632.13560-1-pmamonov@gmail.com>
 <20200828062926.GE4498@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828062926.GE4498@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sascha,

On Fri, Aug 28, 2020 at 08:29:26AM +0200, Sascha Hauer wrote:
> Hi Peter,
> 
> On Wed, Aug 26, 2020 at 05:26:32PM +0300, Peter Mamonov wrote:
> > diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
> > new file mode 100644
> > index 0000000000..7be6a9c693
> > --- /dev/null
> > +++ b/commands/memtester/memtester.c
> 
> Is this file original memtester code or have you written it for barebox?
> It looks like originally memtester but not much is left from it. Could
> you put the barebox part into a separate (new) file for easier future
> updates?

It's a heavily edited original. You can see the actual edits here: 
https://github.com/pmamonov/barebox/commit/fb0dbcf0ad25b16393bc4c9f2fff3752eca931ce.  
It's hardly possible to keep the original memtester.c as is, as it won't build.  
To make future updates somewhat easier/cleaner I have a branch with two patches 
(https://github.com/pmamonov/barebox/commits/memtester):
 - "commands: import memtester 4.3.0 sources from Debian GNU/Linux" imports 
 memtester source code from Debian as is.
 - "commands: memtester: integrate it into barebox" edits the original code
 to make it fit into Barebox.

Do you prefer this two step version to be submitted?

> 
> > @@ -0,0 +1,316 @@
> > +/*
> > + * memtester version 4
> > + *
> > + * Very simple but very effective user-space memory tester.
> > + * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
> > + * Version 2 by Charles Cazabon <charlesc-memtester@pyropus.ca>
> > + * Version 3 not publicly released.
> > + * Version 4 rewrite:
> > + * Copyright (C) 2004-2012 Charles Cazabon <charlesc-memtester@pyropus.ca>
> > + * Licensed under the terms of the GNU General Public License version 2 (only).
> > + * See the file COPYING for details.
> > + *
> > + */
> > +
> > +#define __version__ "4.3.0"
> > +
> > +#include <stdlib.h>
> > +#include <stdio.h>
> > +#include <types.h>
> > +#include <sys/stat.h>
> > +#include <unistd.h>
> > +#include <fcntl.h>
> > +#include <string.h>
> > +#include <errno.h>
> > +#include <getopt.h>
> > +#include <common.h>
> > +#include <command.h>
> > +#include <environment.h>
> > +#include <fs.h>
> > +
> > +#include "types.h"
> > +#include "sizes.h"
> > +#include "tests.h"
> > +
> > +#define EXIT_FAIL_NONSTARTER    0x01
> > +#define EXIT_FAIL_ADDRESSLINES  0x02
> > +#define EXIT_FAIL_OTHERTEST     0x04
> > +
> > +struct test tests[] = {
> > +    { "Random Value", test_random_value },
> > +    { "Compare XOR", test_xor_comparison },
> > +    { "Compare SUB", test_sub_comparison },
> > +    { "Compare MUL", test_mul_comparison },
> > +    { "Compare DIV",test_div_comparison },
> > +    { "Compare OR", test_or_comparison },
> > +    { "Compare AND", test_and_comparison },
> > +    { "Sequential Increment", test_seqinc_comparison },
> > +    { "Solid Bits", test_solidbits_comparison },
> > +    { "Block Sequential", test_blockseq_comparison },
> > +    { "Checkerboard", test_checkerboard_comparison },
> > +    { "Bit Spread", test_bitspread_comparison },
> > +    { "Bit Flip", test_bitflip_comparison },
> > +    { "Walking Ones", test_walkbits1_comparison },
> > +    { "Walking Zeroes", test_walkbits0_comparison },
> > +    { "8-bit Writes", test_8bit_wide_random },
> > +    { "16-bit Writes", test_16bit_wide_random },
> > +    { NULL, NULL }
> > +};
> 
> Should be static

Ok.

> 
> > +
> > +/* Function declarations */
> > +
> > +/* Global vars - so tests have access to this information */
> > +int use_phys = 0;
> > +off_t physaddrbase = 0;
> > +
> > +static int do_memtester(int argc, char **argv) {
> > +    ul loops, loop, i;
> > +    size_t wantraw, wantmb, wantbytes, wantbytes_orig, bufsize,
> > +         halflen, count;
> > +    char *memsuffix, *addrsuffix, *loopsuffix;
> > +    void volatile *buf, *aligned;
> > +    ulv *bufa, *bufb;
> > +    int exit_code = 0, ret;
> > +    int memfd = 0, opt, memshift;
> > +    size_t maxbytes = -1; /* addressable memory, in bytes */
> > +    size_t maxmb = (maxbytes >> 20) + 1; /* addressable memory, in MB */
> > +    /* Device to mmap memory from with -p, default is normal core */
> > +    char *device_name = "/dev/mem";
> > +    struct stat statbuf;
> > +    int device_specified = 0;
> > +    const char *env_testmask = 0;
> > +    ul testmask = 0;
> > +
> > +    printf("memtester version " __version__ " (%d-bit)\n", UL_LEN);
> > +    printf("Copyright (C) 2001-2012 Charles Cazabon.\n");
> > +    printf("Licensed under the GNU General Public License version 2 (only).\n");
> > +    printf("\n");
> > +
> > +    /* If MEMTESTER_TEST_MASK is set, we use its value as a mask of which
> > +       tests we run.
> > +     */
> > +    if ((env_testmask = getenv("MEMTESTER_TEST_MASK"))) {i
> 
> Why is this an envrionment variable? I would expect this to be a
> commandline option.

I kept this code to preserve the original behaviour.

> 
> > +        errno = 0;
> > +        testmask = simple_strtoul(env_testmask, 0, 0);
> > +        if (errno) {
> > +            printf("error parsing MEMTESTER_TEST_MASK %s: %s\n",
> > +                    env_testmask, strerror(errno));
> > +            return COMMAND_ERROR_USAGE;
> > +        }
> > +        printf("using testmask 0x%lx\n", testmask);
> > +    }
> > +
> > +    while ((opt = getopt(argc, argv, "p:d:")) != -1) {
> > +        switch (opt) {
> > +            case 'p':
> > +                errno = 0;
> > +                physaddrbase = (off_t) simple_strtoull(optarg, &addrsuffix, 16);
> > +                if (errno != 0) {
> > +                    printf("failed to parse physaddrbase arg; should be hex "
> > +                           "address (0x123...)\n");
> > +                    return COMMAND_ERROR_USAGE;
> > +                }
> > +                if (*addrsuffix != '\0') {
> > +                    /* got an invalid character in the address */
> > +                    printf("failed to parse physaddrbase arg; should be hex "
> > +                           "address (0x123...)\n");
> > +                    return COMMAND_ERROR_USAGE;
> > +                }
> > +                /* okay, got address */
> > +                use_phys = 1;
> > +                break;
> > +            case 'd':
> > +                if (stat(optarg,&statbuf)) {
> > +                    printf("can not use %s as device: %s\n", optarg,
> > +                            strerror(errno));
> > +                    return COMMAND_ERROR_USAGE;
> > +                } else {
> > +                    if (!S_ISCHR(statbuf.st_mode)) {
> > +                        printf("can not mmap non-char device %s\n",
> > +                                optarg);
> > +                        return COMMAND_ERROR_USAGE;
> > +                    } else {
> > +                        device_name = optarg;
> > +                        device_specified = 1;
> > +                    }
> > +                }
> > +                break;
> > +            default: /* '?' */
> > +                return COMMAND_ERROR_USAGE;
> > +        }
> > +    }
> > +    if (device_specified && !use_phys) {
> > +        printf("for mem device, physaddrbase (-p) must be specified\n");
> > +        return COMMAND_ERROR_USAGE;
> > +    }
> > +
> > +    if (optind >= argc) {
> > +        printf("need memory argument, in MB\n");
> > +        return COMMAND_ERROR_USAGE;
> > +    }
> > +
> > +    errno = 0;
> > +    wantraw = (size_t) simple_strtoul(argv[optind], &memsuffix, 0);
> > +    if (errno != 0) {
> > +        printf("failed to parse memory argument");
> > +        return COMMAND_ERROR_USAGE;
> > +    }
> > +    switch (*memsuffix) {
> > +        case 'G':
> > +        case 'g':
> > +            memshift = 30; /* gigabytes */
> > +            break;
> > +        case 'M':
> > +        case 'm':
> > +            memshift = 20; /* megabytes */
> > +            break;
> > +        case 'K':
> > +        case 'k':
> > +            memshift = 10; /* kilobytes */
> > +            break;
> > +        case 'B':
> > +        case 'b':
> > +            memshift = 0; /* bytes*/
> > +            break;
> > +        case '\0':  /* no suffix */
> > +            memshift = 20; /* megabytes */
> > +            break;
> > +        default:
> > +            /* bad suffix */
> > +            return COMMAND_ERROR_USAGE;
> > +    }
> 
> We have strtoull_suffix() for this purpose. Also for this case have a
> look at parse_area_spec(). With this you can specify a memory region
> with <start>-<end> or <start>+<size> with start/end/size given in
> decimal or hex with an optional [kMG] suffix.

strtoull_suffix parses an argument in a different manner (e.g. no suffix means 
megabytes in the original code), so I kept this code to preserve the original 
behaviour.

> 
> > +    wantbytes_orig = wantbytes = ((size_t) wantraw << memshift);
> > +    wantmb = (wantbytes_orig >> 20);
> > +    optind++;
> > +    if (wantmb > maxmb) {
> > +        printf("This system can only address %llu MB.\n", (ull) maxmb);
> > +        return EXIT_FAIL_NONSTARTER;
> > +    }
> 
> Please check the error codes. EXIT_FAIL_NONSTARTER is 2, just like
> COMMAND_ERROR_USAGE. This is probably not what you want.

Ok.

> 
> I am not looking at the actual tests I assume these are taken from
> memtester directly and are ok as such.

It's almost intact, please take a look at "commands: memtester: integrate it 
into barebox".

Regards,
Peter

> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
