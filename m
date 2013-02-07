Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3PVh-0000jU-TK
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 11:19:23 +0000
Received: by mail-ea0-f174.google.com with SMTP id 1so1091241eaa.5
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 03:19:20 -0800 (PST)
Date: Thu, 7 Feb 2013 12:20:06 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130207112004.GE5999@x61s.8.8.8.8>
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
 <1360233900-26486-7-git-send-email-alex.aring@gmail.com>
 <51138847.8080100@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51138847.8080100@pengutronix.de>
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
Subject: Re: [PATCH 6/6] commands: add new memtest command
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 11:56:07AM +0100, Marc Kleine-Budde wrote:
> On 02/07/2013 11:45 AM, Alexander Aring wrote:
> > Add new memtest command which can enable or disable caching
> > on non allocted barebox regions(test area).
> > 
> > This command simply parse and check parameters then call
> > the mem_test routine.
> > 
> > If no address parameters are given then mem_test will call
> > for each memory bank.
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> 
> A howto-get-rid-of-ifdef nitpick inline
> 
> > ---
> >  commands/Kconfig   |  10 ++
> >  commands/Makefile  |   1 +
> >  commands/memtest.c | 362 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 373 insertions(+)
> >  create mode 100644 commands/memtest.c
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 7cc759c..d158c3f 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -516,6 +516,16 @@ config CMD_NANDTEST
> >  	select PARTITION_NEED_MTD
> >  	prompt "nandtest"
> >  
> > +config CMD_MEMTEST
> > +    tristate
> > +    select MEMTEST
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
> > index 393ba51..b39b489 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -7,6 +7,7 @@ obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
> >  obj-$(CONFIG_CMD_LOADS)		+= loads.o
> >  obj-$(CONFIG_CMD_ECHO)		+= echo.o
> >  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> > +obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
> >  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> >  obj-$(CONFIG_CMD_EXEC)		+= exec.o
> >  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> > diff --git a/commands/memtest.c b/commands/memtest.c
> > new file mode 100644
> > index 0000000..22e8006
> > --- /dev/null
> > +++ b/commands/memtest.c
> > @@ -0,0 +1,362 @@
> > +/*
> > + * memtest - Perform a memory test
> > + *
> > + * (C) Copyright 2013
> > + * Alexander Aring <aar@pengutronix.de>, Pengutronix
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
> > +#include <command.h>
> > +#include <getopt.h>
> > +#include <asm/mmu.h>
> > +
> > +#include <memory_test.h>
> > +
> > +/*
> > + * In CONFIG_MMU we have a special c flag.
> > + */
> > +#ifdef CONFIG_MMU
> > +static char optstr[] = "s:e:i:cb";
> 
> const?
>

This will print a compiler warning because the getopt implementation
doesn't accept a const char* because getopt will change this string.

But I can cast it later.

Regards
Alex

> > +
> > +/*
> > + * PTE flags variables to set cached and
> > + * uncached regions.
> > + */
> > +static uint32_t pte_flags_cached;
> > +static uint32_t pte_flags_uncached;
> > +#else
> > +static char optstr[] = "s:e:i:b";
> 
> const?
> 
> > +#endif
> > +
> > +#ifdef CONFIG_MMU
> 
> Can
> > +static void print_region(vu_long start, vu_long size, uint32_t flags)
> > +{
> > +	if (!size)
> > +		return;
> > +
> > +	printf("\t0x%08lx - "
> > +			"0x%08lx (size 0x%08lx)\n",
> > +			start, start + size - 1, size);
> > +}
> > +
> > +static void do_remap_range(struct memory_bank *bank, uint32_t flags)
> > +{
> > +	struct resource *r = NULL;
> > +	struct resource *r_prev = NULL;
> > +
> > +	vu_long size;
> > +	vu_long start;
> > +	vu_long end;
> > +
> > +	if (flags == pte_flags_uncached)
> > +		printf("Set non caching regions:\n");
> > +	else if (flags == pte_flags_cached)
> > +		printf("Set caching regions:\n");
> > +	else
> > +		BUG();
> > +
> > +	/*
> > +	 * We assume that the regions are sorted in this list
> > +	 */
> > +	list_for_each_entry(r, &bank->res->children, sibling) {
> > +		/*
> > +		 * Do on head element for bank boundary
> > +		 */
> > +		if (r->sibling.prev == &bank->res->children) {
> > +			/*
> > +			 * remember last used element
> > +			 */
> > +			r_prev = r;
> > +
> > +			start = PAGE_ALIGN(bank->start);
> > +			end = PAGE_ALIGN_DOWN(r->start) - 1;
> > +			if (start >= end)
> > +				continue;
> > +			size = end - start + 1;
> > +
> > +			print_region(start, size, flags);
> > +			remap_range((void *)start, size, flags);
> > +
> > +			continue;
> > +		}
> > +		/*
> > +		 * Between used regions
> > +		 */
> > +		start = PAGE_ALIGN(r_prev->end);
> > +		end = PAGE_ALIGN_DOWN(r->start) - 1;
> > +		if (start < end) {
> > +			size = end - start + 1;
> > +			print_region(start, size, flags);
> > +			remap_range((void *)start, size, flags);
> > +		}
> > +
> > +		r_prev = r;
> > +		/*
> > +		 * Do on head element for bank boundary
> > +		 */
> > +		if (list_is_last(&r->sibling, &bank->res->children)) {
> > +			start = PAGE_ALIGN(r->end);
> > +			end = PAGE_ALIGN_DOWN(bank->start + bank->size) - 1;
> > +			if (start >= end)
> > +				continue;
> > +			size = end - start + 1;
> > +
> > +			print_region(start, size, flags);
> > +			remap_range((void *)start, size, flags);
> > +		}
> > +	}
> > +}
> > +#endif
> > +
> > +static int do_mem_memtest(int argc, char *argv[])
> > +{
> > +	/*
> > +	 * Set start address to 0xffffffff which
> > +	 * can't be.
> > +	 */
> > +	vu_long start = 0xffffffff;
> > +	vu_long end = 0;
> > +
> > +	uint i;
> > +	uint max_i = 1;
> > +
> > +#ifdef CONFIG_MMU
> > +	int cache = 0;
> > +#endif
> > +	int bus_only = 0;
> > +	int err = 0;
> > +	int cnt = 0;
> > +	int opt;
> > +
> > +	struct memory_bank *bank = NULL;
> > +	struct resource *r = NULL;
> > +
> > +	while ((opt = getopt(argc, argv, optstr)) > 0) {
> > +		switch (opt) {
> > +		case 's':
> > +			start = simple_strtoul(optarg, NULL, 0);
> > +			break;
> > +		case 'e':
> > +			end = simple_strtoul(optarg, NULL, 0);
> > +			break;
> > +		case 'i':
> > +			max_i = simple_strtoul(optarg, NULL, 0);
> > +			break;
> > +#ifdef CONFIG_MMU
> > +		case 'c':
> > +			cache = 1;
> > +			break;
> > +#endif
> > +		case 'b':
> > +			bus_only = 1;
> > +			break;
> > +		default:
> > +			return COMMAND_ERROR_USAGE;
> > +		}
> > +	}
> > +
> > +	if (optind > argc)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	/*
> > +	 * Error if no end address
> > +	 */
> > +	if (start != 0xffffffff && !end) {
> > +		printf("Please add an end address.\n");
> > +		return 1;
> > +	}
> > +
> > +	/*
> > +	 * Error if no start address
> > +	 */
> > +	if (end && start == 0xffffffff) {
> > +		printf("Please add a start address.\n");
> > +		return 1;
> > +	}
> > +
> > +	/*
> > +	 * Check parameters
> > +	 */
> > +	if (start != 0xffffffff && end) {
> > +		if (end <= start) {
> > +			printf("End address less than or"
> > +					" equal start address.\n");
> > +			return 1;
> > +		}
> > +
> > +		/*
> > +		 * Check if given start and end address are in any banks
> > +		 */
> > +		for_each_memory_bank(bank) {
> > +			if (ADDRESS_IN_REGIONS(start, bank->start,
> > +						bank->start + bank->size))
> > +				cnt++;
> > +
> > +			if (ADDRESS_IN_REGIONS(end, bank->start,
> > +						bank->start + bank->size))
> > +				cnt++;
> > +		}
> > +
> > +		if (cnt != 2) {
> > +			printf("Start or end addresses are"
> > +					" not in any ram bank.\n");
> > +			return 1;
> > +		}
> > +	}
> > +
> > +#ifdef CONFIG_MMU
> > +	/*
> > +	 * Get pte flags. Which are configured at
> > +	 * runtime at booting.
> > +	 */
> > +	pte_flags_cached = mmu_get_pte_cached_flags();
> > +	pte_flags_uncached = mmu_get_pte_uncached_flags();
> > +#endif
> > +
> > +	printf("Skipping regions:\n");
> > +	for_each_memory_bank(bank) {
> > +		list_for_each_entry(r, &bank->res->children, sibling)
> > +			printf("\t0x%08x - "
> > +					"0x%08x (size 0x%08x) %s\n",
> > +					r->start, r->end,
> > +					r->end - r->start + 1, r->name);
> > +#ifdef CONFIG_MMU
> 
> Use if (IS_ENABLED(CONFIG_MMU) and you can get rid of most ifdefs
> 
> Marc
> 
> 
> > +		/*
> > +		 * Disable or enable caching
> > +		 */
> > +		if (cache)
> > +			do_remap_range(bank, pte_flags_cached);
> > +		else
> > +			do_remap_range(bank, pte_flags_uncached);
> > +#endif
> > +	}
> > +
> > +	/*
> > +	 * Do test if we set a start or end address
> > +	 */
> > +	if (start != 0xffffffff && end) {
> > +		printf("Testing address range:\n\t0x%08lx - 0x%08lx"
> > +				" (size 0x%08lx)\n",
> > +				start, end, end - start + 1);
> > +
> > +		for (i = 1; (i <= max_i) || !max_i; i++) {
> > +			printf("Iteration: %u\n", i);
> > +
> > +			/*
> > +			 * Do the Memtest
> > +			 */
> > +			err = mem_test(start, end, bus_only);
> > +			if (err == -EINTR) {
> > +				printf("Test interrupted.\n");
> > +				goto err;
> > +			}
> > +
> > +			if (err < 0) {
> > +				printf("Test failed.\n");
> > +				goto err;
> > +			}
> > +			printf("Tested %u iteration(s) without errors.\n", i);
> > +		}
> > +#ifdef CONFIG_MMU
> > +		/*
> > +		 * Renable caching
> > +		 */
> > +		if (!cache)
> > +			for_each_memory_bank(bank)
> > +				do_remap_range(bank, pte_flags_cached);
> > +#endif
> > +		printf("Memtest done.\n");
> > +
> > +		return 0;
> > +	}
> > +
> > +	/*
> > +	 * If we set no start or end address
> > +	 * we do the test on all ram banks
> > +	 */
> > +	for (i = 1; (i <= max_i) || !max_i; i++) {
> > +		for_each_memory_bank(bank) {
> > +			start = bank->start;
> > +			end = bank->start + bank->size - 1;
> > +
> > +			printf("Iteration: %u\n", i);
> > +
> > +			printf("Testing address range:\n\t0x%08lx - "
> > +					"0x%08lx (size 0x%08lx) on bank /dev/%s\n",
> > +					start, end, bank->size,
> > +					bank->res->name);
> > +
> > +			err = mem_test(start, end, bus_only);
> > +			if (err == -EINTR) {
> > +				printf("Test interrupted.\n");
> > +				goto err;
> > +			}
> > +
> > +			if (err < 0) {
> > +				printf("Test on bank /dev/%s failed.\n",
> > +						bank->res->name);
> > +				goto err;
> > +			}
> > +			printf("Tested %u iteration(s) without errors.\n", i);
> > +		}
> > +	}
> > +#ifdef CONFIG_MMU
> > +	/*
> > +	 * Renable caching
> > +	 */
> > +	if (!cache)
> > +		for_each_memory_bank(bank)
> > +			do_remap_range(bank, pte_flags_cached);
> > +#endif
> > +	printf("Memtest done.\n");
> > +
> > +	return 0;
> > +
> > +err:
> > +#ifdef CONFIG_MMU
> > +	/*
> > +	 * Enable caching
> > +	 */
> > +	for_each_memory_bank(bank)
> > +		do_remap_range(bank, pte_flags_cached);
> > +#endif
> > +
> > +	return 1;
> > +}
> > +
> > +static const __maybe_unused char cmd_memtest_help[] =
> > +"Usage: memtest [OPTION]...\n"
> > +"memtest related commands\n"
> > +"	-s	<start>		start address to begin memtest.\n"
> > +"	-e	<end>		end address to stop memtest.\n"
> > +"	-i	<iterations>	iterations [default=1, endless=0].\n"
> > +#ifdef CONFIG_MMU
> > +"	-c			run test with enable cache.\n"
> > +#endif
> > +"	-b			only test bus datalines.";
> > +
> > +BAREBOX_CMD_START(memtest)
> > +	.cmd		= do_mem_memtest,
> > +	.usage		= "Memory Test",
> > +	BAREBOX_CMD_HELP(cmd_memtest_help)
> > +BAREBOX_CMD_END
> > 
> 
> 
> -- 
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
