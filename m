Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f50.google.com ([209.85.214.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty6VR-000579-4C
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 20:01:10 +0000
Received: by mail-bk0-f50.google.com with SMTP id jf3so4678409bkc.9
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 12:01:06 -0800 (PST)
Date: Wed, 23 Jan 2013 21:01:36 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130123200134.GA3427@x61s.8.8.8.8>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
 <1358257730-20579-9-git-send-email-alex.aring@gmail.com>
 <20130117095431.GB1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130117095431.GB1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/8] memtest: add rewritten memtest command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

thank you for reviewing this patch.

On Thu, Jan 17, 2013 at 10:54:31AM +0100, Sascha Hauer wrote:
> On Tue, Jan 15, 2013 at 02:48:50PM +0100, Alexander Aring wrote:
> > Rewrite memtest command:
> > 	- Skip barebox sdram regions.
> > 	- Uncache unused mem regions while testing.
> > 	- Add iteration parameter.
> > 	- Add parameter to do only bus testing.
> > 	- Check start and end addresses.
> > 	- Testing all banks if no start and end
> > 	  address are given.
> > 
> > 	- Add sha changes (thanks):
> > 	- fix calculation of regions to test. When we use PAGE_ALIGN on
> > 	  size, size can be to high.
> > 	  - start address has to be aligned up
> > 	  - end address has to be aligned down
> > 	  - then size can be calculated as end - start + 1
> > 	- Add ctrlc() to the longer loops
> > 	- Add a progress bar to give some visual feedback that something
> > 	  issues
> > 	  still going on.
> > 
> > 	- Change to use end element instead of size in region struct.
> > 	- Fix some newline issues.
> > 
> > 	- Add '-c' parameter if CONFIG_MMU enabled
> > 	  to test with enabled cache.
> > 	- Fix some size calculation.
> > 	- set start address to 0xffffffff
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  commands/Kconfig   |   9 +
> >  commands/Makefile  |   1 +
> >  commands/memtest.c | 698 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 708 insertions(+)
> >  create mode 100644 commands/memtest.c
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index fc0e448..f027a7e 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -496,6 +496,15 @@ config CMD_NANDTEST
> >  	select PARTITION_NEED_MTD
> >  	prompt "nandtest"
> >  
> > +config CMD_MEMTEST
> > +    tristate
> > +    prompt "memtest"
> > +	help
> > +	  This command enables a memtest to test installed memory.
> > +	  During this test allocated iomem regions will be skipped.
> > +	  If tested architecture has MMU with PTE flags support,
> > +	  caching can be set enabled or disabled.
> > +
> >  endmenu
> >  
> >  menu "video command"
> > diff --git a/commands/Makefile b/commands/Makefile
> > index 3145685..6b4d9cb 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -7,6 +7,7 @@ obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
> >  obj-$(CONFIG_CMD_LOADS)		+= loads.o
> >  obj-$(CONFIG_CMD_ECHO)		+= echo.o
> >  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> > +obj-$(CONFIG_CMD_MEMTEST)   += memtest.o
> >  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> >  obj-$(CONFIG_CMD_EXEC)		+= exec.o
> >  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> > diff --git a/commands/memtest.c b/commands/memtest.c
> > new file mode 100644
> > index 0000000..c31e553
> > --- /dev/null
> > +++ b/commands/memtest.c
> > @@ -0,0 +1,698 @@
> > +/*
> > + * memtest - Perform a memory test
> > + *
> > + * (C) Copyright 2013
> > + * Alexander Aring <a.aring@gmail.com>
> > + *
> > + * (C) Copyright 2000
> > + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +#include <common.h>
> > +#include <command.h>
> > +#include <types.h>
> > +#include <getopt.h>
> > +#include <memory.h>
> > +#include <errno.h>
> > +#include <progress.h>
> > +#include <asm/mmu.h>
> > +
> > +static const vu_long bitpattern[] = {
> > +	0x00000001,	/* single bit */
> > +	0x00000003,	/* two adjacent bits */
> > +	0x00000007,	/* three adjacent bits */
> > +	0x0000000F,	/* four adjacent bits */
> > +	0x00000005,	/* two non-adjacent bits */
> > +	0x00000015,	/* three non-adjacent bits */
> > +	0x00000055,	/* four non-adjacent bits */
> > +	0xAAAAAAAA,	/* alternating 1/0 */
> > +};
> > +
> > +/*
> > + * In CONFIG_MMU we have a special c flag.
> > + */
> > +#ifdef CONFIG_MMU
> > +static char optstr[] = "s:e:i:cb";
> > +
> > +/*
> > + * PTE flags variables to set cached and
> > + * uncached regions.
> > + */
> > +static uint32_t PTE_FLAGS_CACHED;
> > +static uint32_t PTE_FLAGS_UNCACHED;
> 
> Please no uppercase letters for variable names.
>
Ok. I took it from mach/arm/cpu/mmu.c, should I create a patch which
rename it in arch/arm/cpu/mmu.c lower case, too?

> > +#else
> > +static char optstr[] = "s:e:i:b";
> > +#endif
> > +
> > +/*
> > + * Perform a memory test. The complete test
> > + * loops until interrupted by ctrl-c.
> > + */
> > +static int mem_test(vu_long _start, vu_long _end,
> > +		int bus_only)
> 
> It would be good to move this function to common/memory_test.c. This way
> it could be called from C. Especially testing memory might be called
> from some early small (no shell) development binaries which are running from some
> internal SRAM.
> 
Ok.
Maybe we can do a menu entry via Kconfig or something else to run a
memtest after booting automatically.

> > +{
> > +	vu_long *start = (vu_long *)_start;
> > +	/* Point the dummy to start[1] */
> > +	vu_long *dummy = start+1;
> > +
> > +	vu_long val;
> > +	vu_long readback;
> > +	vu_long offset;
> > +	vu_long pattern;
> > +	vu_long test_offset;
> > +	vu_long temp;
> > +	vu_long anti_pattern;
> > +	vu_long num_words;
> > +
> > +	int i;
> > +	int ret;
> > +
> > +	if (!IS_ALIGNED(_end - _start + 1, sizeof(vu_long))) {
> > +		printf("Testing memarea size (0x%08lx) not a multiple"
> > +				"of size 0x%x, please change start or end address.",
> > +				_end - _start + 1, sizeof(vu_long));
> > +		return -1;
> > +	}
> 
> I think this is both too restrictive and not restitrictive enough. How
> about quietly aligning up the start to a multiple-of-4 boundary and the
> end down to a multiple-of-4 boundary?
Ok, I change it to do a align.

> 
> The above requires me to enter a address containing a lot of 'f's and it
> will happily crash my system if I pass 0xa0000001 as start address.
> 
> > +
> > +	num_words = (_end - _start + 1)/sizeof(vu_long);
> > +
> > +	printf("Starting data line test.\n");
> > +
> > +	/*
> > +	 * Data line test: write a pattern to the first
> > +	 * location, write the 1's complement to a 'parking'
> > +	 * address (changes the state of the data bus so a
> > +	 * floating bus doen't give a false OK), and then
> > +	 * read the value back. Note that we read it back
> > +	 * into a variable because the next time we read it,
> > +	 * it might be right (been there, tough to explain to
> > +	 * the quality guys why it prints a failure when the
> > +	 * "is" and "should be" are obviously the same in the
> > +	 * error message).
> > +	 *
> > +	 * Rather than exhaustively testing, we test some
> > +	 * patterns by shifting '1' bits through a field of
> > +	 * '0's and '0' bits through a field of '1's (i.e.
> > +	 * pattern and ~pattern).
> > +	 */
> > +	for (i = 0; i < sizeof(bitpattern)/
> > +			sizeof(bitpattern[0]); i++) {
> > +		ret = address_in_sdram_regions((vu_long)start);
> 
> Can't you just call request_sdram_region at the beginning of this
> function? Then you can be sure that you exclusivly own the region and do
> not have to test for it on and on again here.
Ok, sure I didn't see that.

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
