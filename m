Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4qLP-00034K-Dy
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 09:06:09 +0000
Date: Tue, 6 Mar 2012 10:05:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120306090558.GG3852@pengutronix.de>
References: <1330700647-27368-1-git-send-email-a.aring@phytec.de>
 <1330700647-27368-4-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330700647-27368-4-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH/RFC 4/4] memtest: rewrite memtest commands
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Mar 02, 2012 at 04:04:07PM +0100, Alexander Aring wrote:
> Rewrite memtest command:
> Skip barebox sdram regions.
> Disable cache while testing.
> Add iteration parameter.
> Check start and end addresses.
> Testing all banks if no start and end
> address are given.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>

Since this is a complete rewrite, can you please send a patch removing
the old memtest command completely and then another one adding it again?
This would help reviewing it.

> ---
>  commands/Kconfig   |    9 +-
>  commands/Makefile  |    2 +-
>  commands/memtest.c |  826 ++++++++++++++++++++++++++++++++++------------------
>  3 files changed, 553 insertions(+), 284 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index e332a85..9f59d05 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -279,14 +279,9 @@ config CMD_SHA224SUM
>  	select SHA224
>  	prompt "sha224sum"
>  
> -config CMD_MTEST
> +config CMD_MEMTEST
>  	tristate
> -	prompt "mtest"
> -
> -config CMD_MTEST_ALTERNATIVE
> -	bool
> -	depends on CMD_MTEST
> -	prompt "alternative mtest implementation"
> +	prompt "memtest"
>  
>  endmenu
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index 31442b5..80ad8a3 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -6,7 +6,7 @@ obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
>  obj-$(CONFIG_CMD_LOADS)		+= loads.o
>  obj-$(CONFIG_CMD_ECHO)		+= echo.o
>  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> -obj-$(CONFIG_CMD_MTEST)		+= memtest.o
> +obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
>  obj-$(CONFIG_CMD_EDIT)		+= edit.o
>  obj-$(CONFIG_CMD_EXEC)		+= exec.o
>  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> diff --git a/commands/memtest.c b/commands/memtest.c
> index d9c8b3d..04ad418 100644
> --- a/commands/memtest.c
> +++ b/commands/memtest.c
> @@ -1,5 +1,8 @@
>  /*
> - * mtest - Perform a memory test
> + * memtest - Perform a memory test
> + *
> + * (C) Copyright 2012
> + * Alexander Aring <a.aring@phytec.de>
>   *
>   * (C) Copyright 2000
>   * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> @@ -26,330 +29,601 @@
>  #include <common.h>
>  #include <command.h>
>  #include <types.h>
> +#include <getopt.h>
> +#include <memory.h>
> +#include <asm/mmu.h>
> +
> +static const vu_long bitpattern[] = {
> +	0x00000001,	/* single bit */
> +	0x00000003,	/* two adjacent bits */
> +	0x00000007,	/* three adjacent bits */
> +	0x0000000F,	/* four adjacent bits */
> +	0x00000005,	/* two non-adjacent bits */
> +	0x00000015,	/* three non-adjacent bits */
> +	0x00000055,	/* four non-adjacent bits */
> +	0xAAAAAAAA,	/* alternating 1/0 */
> +};
>  
>  /*
> - * Perform a memory test. A more complete alternative test can be
> - * configured using CONFIG_CMD_MTEST_ALTERNATIVE. The complete test
> - * loops until interrupted by ctrl-c or by a failure of one of the
> - * sub-tests.
> + * Perform a memory test. The complete test
> + * loops until interrupted by ctrl-c.
>   */
> -#ifdef CONFIG_CMD_MTEST_ALTERNATIVE
> -static int mem_test(ulong _start, ulong _end, ulong pattern_unused)
> +static int mem_test(vu_long _start, vu_long _end,
> +		int bus_only)
>  {
>  	vu_long *start = (vu_long *)_start;
> -	vu_long *end   = (vu_long *)_end;
> -	vu_long *addr;
> -	ulong	val;
> -	ulong	readback;
> -	vu_long	addr_mask;
> -	vu_long	offset;
> -	vu_long	test_offset;
> -	vu_long	pattern;
> -	vu_long	temp;
> -	vu_long	anti_pattern;
> -	vu_long	num_words;
> -#ifdef CFG_MEMTEST_SCRATCH
> -	vu_long *dummy = (vu_long*)CFG_MEMTEST_SCRATCH;
> -#else
> -	vu_long *dummy = start;
> -#endif
> -	int	j;
> -	int iterations = 1;
> -
> -	static const ulong bitpattern[] = {
> -		0x00000001,	/* single bit */
> -		0x00000003,	/* two adjacent bits */
> -		0x00000007,	/* three adjacent bits */
> -		0x0000000F,	/* four adjacent bits */
> -		0x00000005,	/* two non-adjacent bits */
> -		0x00000015,	/* three non-adjacent bits */
> -		0x00000055,	/* four non-adjacent bits */
> -		0xaaaaaaaa,	/* alternating 1/0 */
> -	};
> -
> -	/* XXX: enforce alignment of start and end? */
> -	for (;;) {
> -		if (ctrlc()) {
> -			putchar ('\n');
> -			return 1;
> +	/* Point the dummy to start[1] */
> +	vu_long *dummy = start+1;

<nitpick> Please add space on both sides of '+' </nitpick>

> +
> +	vu_long val;
> +	vu_long readback;
> +	vu_long offset;
> +	vu_long pattern;
> +	vu_long test_offset;
> +	vu_long temp;
> +	vu_long anti_pattern;
> +	vu_long num_words;
> +
> +	int i;
> +	int ret;
> +
> +	num_words = (_end - _start)/sizeof(vu_long);

ditto here.

> +
> +	/* Exit if ctrl-c is pressed */
> +	if (ctrlc()) {
> +		printf("Memtest interrupted.\n");
> +		return -1;
> +	}
> +
> +	printf("Starting data line test.\n");
> +
> +	/*
> +	 * Data line test: write a pattern to the first
> +	 * location, write the 1's complement to a 'parking'
> +	 * address (changes the state of the data bus so a
> +	 * floating bus doen't give a false OK), and then
> +	 * read the value back. Note that we read it back
> +	 * into a variable because the next time we read it,
> +	 * it might be right (been there, tough to explain to
> +	 * the quality guys why it prints a failure when the
> +	 * "is" and "should be" are obviously the same in the
> +	 * error message).
> +	 *
> +	 * Rather than exhaustively testing, we test some
> +	 * patterns by shifting '1' bits through a field of
> +	 * '0's and '0' bits through a field of '1's (i.e.
> +	 * pattern and ~pattern).
> +	 */
> +	for (i = 0; i < sizeof(bitpattern)/
> +			sizeof(bitpattern[0]); i++) {
> +		ret = address_in_sdram_regions((vu_long)start);
> +		if (ret) {
> +			printf("WARNING (data line): "
> +					"address 0x%08lx is in sdram regions.\n",
> +					(vu_long)start);
> +			break;
> +		}
> +
> +		ret = address_in_sdram_regions((vu_long)dummy);
> +		if (ret) {
> +			printf("WARNING (data line): "
> +					"address 0x%08lx is in sdram regions.\n",
> +					(vu_long)dummy);
> +			break;
>  		}
>  
> -		printf("Iteration: %6d\r", iterations);
> -		iterations++;
> -
> -		/*
> -		 * Data line test: write a pattern to the first
> -		 * location, write the 1's complement to a 'parking'
> -		 * address (changes the state of the data bus so a
> -		 * floating bus doen't give a false OK), and then
> -		 * read the value back. Note that we read it back
> -		 * into a variable because the next time we read it,
> -		 * it might be right (been there, tough to explain to
> -		 * the quality guys why it prints a failure when the
> -		 * "is" and "should be" are obviously the same in the
> -		 * error message).
> -		 *
> -		 * Rather than exhaustively testing, we test some
> -		 * patterns by shifting '1' bits through a field of
> -		 * '0's and '0' bits through a field of '1's (i.e.
> -		 * pattern and ~pattern).
> -		 */
> -		addr = start;
> -		/* XXX */
> -		if (addr == dummy) ++addr;
> -		for (j = 0; j < sizeof(bitpattern)/sizeof(bitpattern[0]); j++) {
> -		    val = bitpattern[j];
> -		    for(; val != 0; val <<= 1) {
> -			*addr  = val;
> -			*dummy  = ~val; /* clear the test data off of the bus */
> -			readback = *addr;
> -			if(readback != val) {
> -			     printf ("FAILURE (data line): "
> -				"expected 0x%08lx, actual 0x%08lx at address 0x%p\n",
> -					  val, readback, addr);
> +		val = bitpattern[i];
> +
> +		for (; val != 0; val <<= 1) {
> +			*start = val;
> +			/* clear the test data off of the bus */
> +			*dummy = ~val;
> +			readback = *start;
> +
> +			if (readback != val) {
> +				printf("FAILURE (data line): "
> +					"expected 0x%08lx, actual 0x%08lx at address 0x%08lx.\n",
> +					val, readback, (vu_long)start);
> +				return -1;
>  			}
> -			*addr  = ~val;
> -			*dummy  = val;
> -			readback = *addr;
> -			if(readback != ~val) {
> -			    printf ("FAILURE (data line): "
> -				"Is 0x%08lx, should be 0x%08lx at address 0x%p\n",
> -					readback, ~val, addr);
> +
> +			*start = ~val;
> +			*dummy = val;
> +			readback = *start;
> +			if (readback != ~val) {
> +				printf("FAILURE (data line): "
> +					"Is 0x%08lx, should be 0x%08lx at address 0x%08lx.\n",
> +					readback,
> +					~val, (vu_long)start);
> +				return -1;
>  			}
> -		    }
>  		}
> +	}
> +
>  
> -		/*
> -		 * Based on code whose Original Author and Copyright
> -		 * information follows: Copyright (c) 1998 by Michael
> -		 * Barr. This software is placed into the public
> -		 * domain and may be used for any purpose. However,
> -		 * this notice must not be changed or removed and no
> -		 * warranty is either expressed or implied by its
> -		 * publication or distribution.
> -		 */
> -
> -		/*
> -		 * Address line test
> -		 *
> -		 * Description: Test the address bus wiring in a
> -		 *              memory region by performing a walking
> -		 *              1's test on the relevant bits of the
> -		 *              address and checking for aliasing.
> -		 *              This test will find single-bit
> -		 *              address failures such as stuck -high,
> -		 *              stuck-low, and shorted pins. The base
> -		 *              address and size of the region are
> -		 *              selected by the caller.
> -		 *
> -		 * Notes:	For best results, the selected base
> -		 *              address should have enough LSB 0's to
> -		 *              guarantee single address bit changes.
> -		 *              For example, to test a 64-Kbyte
> -		 *              region, select a base address on a
> -		 *              64-Kbyte boundary. Also, select the
> -		 *              region size as a power-of-two if at
> -		 *              all possible.
> -		 *
> -		 * Returns:     0 if the test succeeds, 1 if the test fails.
> -		 *
> -		 * ## NOTE ##	Be sure to specify start and end
> -		 *              addresses such that addr_mask has
> -		 *              lots of bits set. For example an
> -		 *              address range of 01000000 02000000 is
> -		 *              bad while a range of 01000000
> -		 *              01ffffff is perfect.
> -		 */
> -		addr_mask = ((ulong)end - (ulong)start)/sizeof(vu_long);
> -		pattern = (vu_long) 0xaaaaaaaa;
> -		anti_pattern = (vu_long) 0x55555555;
> -
> -		debug("%s:%d: addr mask = 0x%.8lx\n",
> -			__FUNCTION__, __LINE__,
> -			addr_mask);
> -		/*
> -		 * Write the default pattern at each of the
> -		 * power-of-two offsets.
> -		 */
> -		for (offset = 1; (offset & addr_mask) != 0; offset <<= 1)
> -			start[offset] = pattern;
> -
> -		/*
> -		 * Check for address bits stuck high.
> -		 */
> -		test_offset = 0;
> +	/*
> +	 * Based on code whose Original Author and Copyright
> +	 * information follows: Copyright (c) 1998 by Michael
> +	 * Barr. This software is placed into the public
> +	 * domain and may be used for any purpose. However,
> +	 * this notice must not be changed or removed and no
> +	 * warranty is either expressed or implied by its
> +	 * publication or distribution.
> +	 */
> +
> +	/*
> +	 * Address line test
> +	 *
> +	 * Description: Test the address bus wiring in a
> +	 *              memory region by performing a walking
> +	 *              1's test on the relevant bits of the
> +	 *              address and checking for aliasing.
> +	 *              This test will find single-bit
> +	 *              address failures such as stuck -high,
> +	 *              stuck-low, and shorted pins. The base
> +	 *              address and size of the region are
> +	 *              selected by the caller.
> +	 *
> +	 * Notes:	For best results, the selected base
> +	 *              address should have enough LSB 0's to
> +	 *              guarantee single address bit changes.
> +	 *              For example, to test a 64-Kbyte
> +	 *              region, select a base address on a
> +	 *              64-Kbyte boundary. Also, select the
> +	 *              region size as a power-of-two if at
> +	 *              all possible.
> +	 *
> +	 * ## NOTE ##	Be sure to specify start and end
> +	 *              addresses such that num_words has
> +	 *              lots of bits set. For example an
> +	 *              address range of 01000000 02000000 is
> +	 *              bad while a range of 01000000
> +	 *              01ffffff is perfect.
> +	 */
> +
> +	pattern = 0xAAAAAAAA;
> +	anti_pattern = 0x55555555;
> +
> +	/*
> +	 * Write the default pattern at each of the
> +	 * power-of-two offsets.
> +	 */
> +	for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
> +		ret = address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret) {
> +			printf("WARNING (stuck high): "
> +					"address 0x%08lx is in sdram regions.\n",
> +					(vu_long)&start[offset]);
> +			continue;
> +		}
> +
> +		start[offset] = pattern;
> +	}
> +
> +	printf("Check for address bits stuck high.\n");
> +
> +	/*
> +	 * Check for address bits stuck high.
> +	 */
> +	test_offset = 0;
> +
> +	ret = address_in_sdram_regions((vu_long)&start[test_offset]);
> +	if (ret)
> +		printf("WARNING (stuck high): "
> +				"address 0x%08lx is in sdram regions.\n",
> +				(vu_long)&start[test_offset]);
> +	else
>  		start[test_offset] = anti_pattern;
>  
> -		for (offset = 1; (offset & addr_mask) != 0; offset <<= 1) {
> -		    temp = start[offset];
> -		    if (temp != pattern) {
> -			printf ("\nFAILURE: Address bit stuck high @ 0x%.8lx:"
> -				" expected 0x%.8lx, actual 0x%.8lx\n",
> -				(ulong)&start[offset], pattern, temp);
> -			return 1;
> -		    }
> +	for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
> +		ret = address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret) {
> +			printf("WARNING (stuck high): "
> +					"address 0x%08lx is in sdram regions.\n",
> +					(vu_long)&start[offset]);
> +			continue;
> +		}
> +
> +		temp = start[offset];
> +
> +		if (temp != pattern) {
> +			printf("FAILURE: Address bit "
> +					"stuck high @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					pattern, temp);
> +			return -1;
>  		}
> +	}
> +
> +	ret = address_in_sdram_regions((vu_long)&start[test_offset]);
> +	if (ret)
> +		printf("WARNING (stuck high): "
> +				"address 0x%08lx is in sdram regions.\n",
> +				(vu_long)&start[test_offset]);
> +	else
>  		start[test_offset] = pattern;
>  
> -		/*
> -		 * Check for addr bits stuck low or shorted.
> -		 */
> -		for (test_offset = 1; (test_offset & addr_mask) != 0; test_offset <<= 1) {
> -		    start[test_offset] = anti_pattern;
> +	printf("Check for address bits stuck "
> +			"low or shorted.\n");
> +
> +	/*
> +	 * Check for address bits stuck low or shorted.
> +	 */
> +	for (test_offset = 1;
> +			(test_offset & num_words) != 0;
> +			test_offset <<= 1) {
> +		ret = address_in_sdram_regions(
> +				(vu_long)&start[test_offset]);
> +		if (ret) {
> +			printf("WARNING (low high): "
> +					"address 0x%08lx is in barebox regions.\n",
> +					(vu_long)&start[test_offset]);
> +			continue;
> +		}
> +
> +		start[test_offset] = anti_pattern;
> +
> +		for (offset = 1; (offset & num_words) != 0; offset <<= 1) {
> +			ret = address_in_sdram_regions(
> +					(vu_long)&start[offset]);
> +			if (ret) {
> +				printf("WARNING (low high): "
> +					"address 0x%08lx is in barebox regions.\n",
> +					(vu_long)&start[test_offset]);
> +				continue;
> +			}
>  
> -		    for (offset = 1; (offset & addr_mask) != 0; offset <<= 1) {
>  			temp = start[offset];
> -			if ((temp != pattern) && (offset != test_offset)) {
> -			    printf ("\nFAILURE: Address bit stuck low or shorted @"
> -				" 0x%.8lx: expected 0x%.8lx, actual 0x%.8lx\n",
> -				(ulong)&start[offset], pattern, temp);
> -			    return 1;
> +
> +			if ((temp != pattern) &&
> +					(offset != test_offset)) {
> +				printf("FAILURE: Address bit stuck"
> +						" low or shorted @"
> +						" 0x%08lx: expected 0x%08lx, actual 0x%08lx.\n",
> +						(vu_long)&start[offset],
> +						pattern, temp);
> +				return -1;
>  			}
> -		    }
> -		    start[test_offset] = pattern;
>  		}
> +		start[test_offset] = pattern;
> +	}
> +
> +	/* We tested only the bus if != 0
> +	 * leaving here */
> +	if (bus_only)
> +		return 0;
> +
> +	printf("Starting integrity check of physicaly ram.\n"
> +			"Filling ram with patterns...\n");
> +
> +	/*
> +	 * Description: Test the integrity of a physical
> +	 *		memory device by performing an
> +	 *		increment/decrement test over the
> +	 *		entire region. In the process every
> +	 *		storage bit in the device is tested
> +	 *		as a zero and a one. The base address
> +	 *		and the size of the region are
> +	 *		selected by the caller.
> +	 */
> +
> +	/*
> +	 * Fill memory with a known pattern.
> +	 */
> +	for (offset = 0; offset < (num_words); offset++) {
> +		ret = address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret)
> +			continue;
> +
> +		start[offset] = offset+1;
> +	}
>  
> -		/*
> -		 * Description: Test the integrity of a physical
> -		 *		memory device by performing an
> -		 *		increment/decrement test over the
> -		 *		entire region. In the process every
> -		 *		storage bit in the device is tested
> -		 *		as a zero and a one. The base address
> -		 *		and the size of the region are
> -		 *		selected by the caller.
> -		 *
> -		 * Returns:     0 if the test succeeds, 1 if the test fails.
> -		 */
> -		num_words = ((ulong)end - (ulong)start)/sizeof(vu_long) + 1;
> -
> -		/*
> -		 * Fill memory with a known pattern.
> -		 */
> -		for (pattern = 1, offset = 0; offset < num_words; pattern++, offset++) {
> -			start[offset] = pattern;
> +	printf("Compare written patterns...\n");
> +
> +	/*
> +	 * Check each location and invert it for the second pass.
> +	 */
> +	for (offset = 0; offset < num_words; offset++) {
> +		ret = address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret)
> +			continue;
> +
> +		temp = start[offset];
> +		if (temp != (offset+1)) {
> +			printf("FAILURE (read/write) @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					(offset+1), temp);
> +			return -1;
>  		}
>  
> -		/*
> -		 * Check each location and invert it for the second pass.
> -		 */
> -		for (pattern = 1, offset = 0; offset < num_words; pattern++, offset++) {
> -		    temp = start[offset];
> -		    if (temp != pattern) {
> -			printf ("\nFAILURE (read/write) @ 0x%.8lx:"
> -				" expected 0x%.8lx, actual 0x%.8lx)\n",
> -				(ulong)&start[offset], pattern, temp);
> -			return 1;
> -		    }
> +		anti_pattern = ~(offset+1);
> +		start[offset] = anti_pattern;
> +	}
>  
> -		    anti_pattern = ~pattern;
> -		    start[offset] = anti_pattern;
> +	printf("Filling ram with inverted pattern and compare it...\n");
> +
> +	/*
> +	 * Check each location for the inverted pattern and zero it.
> +	 */
> +	for (offset = 0; offset < num_words; offset++) {
> +		ret = address_in_sdram_regions((vu_long)&start[offset]);
> +		/* Step over barebox mem usage */
> +		if (ret)
> +			continue;
> +
> +		anti_pattern = ~(offset+1);
> +		temp = start[offset];
> +
> +		if (temp != anti_pattern) {
> +			printf("FAILURE (read/write): @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					anti_pattern, temp);
> +			return -1;
>  		}
>  
> -		/*
> -		 * Check each location for the inverted pattern and zero it.
> -		 */
> -		for (pattern = 1, offset = 0; offset < num_words; pattern++, offset++) {
> -		    anti_pattern = ~pattern;
> -		    temp = start[offset];
> -		    if (temp != anti_pattern) {
> -			printf ("\nFAILURE (read/write): @ 0x%.8lx:"
> -				" expected 0x%.8lx, actual 0x%.8lx)\n",
> -				(ulong)&start[offset], anti_pattern, temp);
> -			return 1;
> -		    }
> -		    start[offset] = 0;
> -		}
> +		start[offset] = 0;
>  	}
>  
> +	return 0;
>  }
> -#else
> -static int mem_test(ulong _start, ulong _end, ulong pattern)
> +
> +#ifdef CONFIG_MMU
> +static void print_region(vu_long start, vu_long size, uint32_t flags)
>  {
> -	vu_long	*addr;
> -	vu_long *start = (vu_long *)_start;
> -	vu_long *end   = (vu_long *)_end;
> -	ulong	val;
> -	ulong	readback;
> -	ulong	incr;
> -	int rcode;
> -
> -	incr = 1;
> -	for (;;) {
> -		if (ctrlc()) {
> -			putchar('\n');
> -			return 1;
> +	if (!size)
> +		return;
> +
> +	switch (flags) {
> +	case PTE_FLAGS_UNCACHED:
> +		printf("Set non caching region at 0x%08lx until"
> +				" 0x%08lx size 0x%08lx.\n", start,
> +				start + size, size);
> +		break;
> +	case PTE_FLAGS_CACHED:
> +		printf("Set caching region at 0x%08lx until"
> +				" 0x%08lx size 0x%08lx.\n", start,
> +				start + size, size);
> +		break;
> +	default:
> +		/* This should never happen. */
> +		BUG();
> +		break;
> +	}
> +}
> +
> +static void do_remap_range(struct memory_bank *bank, uint32_t flags)
> +{
> +	struct resource *r = NULL;
> +	struct resource *r_prev = NULL;
> +
> +	vu_long size;
> +	vu_long start;
> +	vu_long end;
> +
> +	list_for_each_entry(r, &bank->res->children, sibling) {
> +		/* Do on head element for bank boundary */
> +		if (r->sibling.prev == &bank->res->children) {
> +			start = bank->start;
> +			end = r->start;
> +			size = end - start;
> +
> +			size = PAGE_ALIGN(size);
> +			start = PAGE_ALIGN(start);
> +
> +			print_region(start, size, flags);
> +			remap_range((void *)start, size, flags);
> +
> +			/* remember last used element */
> +			r_prev = r;
> +			continue;
>  		}
> +		/* Between used regions */
> +		start = r_prev->start + r_prev->size;
> +		end = r->start;
> +		size = end - start;
> +
> +
> +		size = PAGE_ALIGN(size);
> +		start = PAGE_ALIGN(start);
>  
> -		printf ("\rPattern 0x%08lX  Writing..."
> -			"%12s"
> -			"\b\b\b\b\b\b\b\b\b\b",
> -			pattern, "");
> +		print_region(start, size, flags);
> +		remap_range((void *)start, size, flags);
>  
> -		for (addr=start,val=pattern; addr<end; addr++) {
> -			*addr = val;
> -			val  += incr;
> +		r_prev = r;
> +		/* Do on head element for bank boundary */
> +		if (list_is_last(&r->sibling, &bank->res->children)) {
> +			start = r->start + r->size;
> +			end = bank->start + bank->size;
> +			size = end - start;
> +
> +			size = PAGE_ALIGN(size);
> +			start = PAGE_ALIGN(start);
> +
> +			print_region(start, size, flags);
> +			remap_range((void *)start, size, flags);
>  		}
> +	}
> +}
> +#endif
>  
> -		puts ("Reading...");
> +static int do_mem_memtest(struct command *cmdtp, int argc, char *argv[])
> +{
> +	vu_long start = 0;
> +	vu_long end = 0;
> +
> +	uint i;
> +	uint max_i = 1;
> +
> +	int bus_only = 0;
> +	int err = 0;
> +	int cnt = 0;
> +	int opt;
> +
> +	struct memory_bank *bank = NULL;
> +	struct resource *r = NULL;
> +
> +	while ((opt = getopt(argc, argv, "s:e:i:b")) > 0) {
> +		switch (opt) {
> +		case 's':
> +			start = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'e':
> +			end = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'i':
> +			max_i = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'b':
> +			bus_only = 1;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
>  
> -		for (addr=start,val=pattern; addr<end; addr++) {
> -			readback = *addr;
> -			if (readback != val) {
> -				printf ("\nMem error @ 0x%08X: "
> -					"found 0x%08lX, expected 0x%08lX\n",
> -					(uint)addr, readback, val);
> -				rcode = 1;
> +	if (optind > argc)
> +		return COMMAND_ERROR_USAGE;
> +
> +	/* Error if no end address */
> +	if (start && !end) {
> +		printf("Please add a end address.\n");
> +		return 1;
> +	}
> +
> +	/* Error if no start address */
> +	if (end && !start) {
> +		printf("Please add a start address.\n");
> +		return 1;
> +	}
> +
> +	/* Check parameters */
> +	if (end && start) {
> +		/* We need a even number to start, so we clear the first bit */
> +		start &= ~0x1;
> +
> +		if (end <= start) {
> +			printf("End address less than or"
> +					" equal start address.\n");
> +			return 1;
> +		}
> +
> +		for_each_memory_bank(bank) {
> +			if (ADDRESS_IN_REGIONS(start, bank->start,
> +						bank->start + bank->size + 1)) {
> +				cnt++;
> +			}
> +
> +			if (ADDRESS_IN_REGIONS(end, bank->start,
> +						bank->start + bank->size + 1)) {
> +				cnt++;
>  			}
> -			val += incr;
>  		}
>  
> -		/*
> -		 * Flip the pattern each time to make lots of zeros and
> -		 * then, the next time, lots of ones.  We decrement
> -		 * the "negative" patterns and increment the "positive"
> -		 * patterns to preserve this feature.
> -		 */
> -		if(pattern & 0x80000000) {
> -			pattern = -pattern;	/* complement & increment */
> +		if (cnt != 2) {
> +			printf("Start or end addresses are"
> +					" not in any ram bank.\n");
> +			return 1;
>  		}
> -		else {
> -			pattern = ~pattern;
> +	}
> +
> +
> +	for_each_memory_bank(bank) {
> +		list_for_each_entry(r, &bank->res->children, sibling) {
> +			printf("Will skipping region at 0x%08x"
> +					" until 0x%08x size 0x%08x name %s.\n",
> +					r->start, r->size + r->start,
> +					r->size, r->name);
>  		}
> -		incr = -incr;
> +
> +#ifdef CONFIG_MMU
> +		/* Disable caching */
> +		do_remap_range(bank, PTE_FLAGS_UNCACHED);
> +#endif
>  	}
> -	return rcode;
> -}
> +
> +	/* Do test if we set a start or end address */
> +	if (start && end) {
> +		printf("Testing address range: 0x%08lx until "
> +				"0x%08lx.\n",
> +				start, end);
> +
> +		for (i = 1; (i <= max_i) || !max_i; i++) {
> +			printf("Iteration: %u\n", i);
> +
> +			/* Do the memtest */
> +			err = mem_test(start, end, bus_only);
> +
> +			if (err < 0) {
> +				printf("Test failed.\n");
> +				goto err;
> +			}
> +		}
> +		printf("Tested %u iteration(s) without errors.\n", i-1);
> +#ifdef CONFIG_MMU
> +		/* Enable caching */
> +		for_each_memory_bank(bank)
> +			do_remap_range(bank, PTE_FLAGS_CACHED);
>  #endif

You can't do this as this will remap everything we alloced with
dma_alloc_coherent cached again. You have to do this the same way
you remap it uncached. It's probably best to add a seperate function for
this and pass PTE_FLAGS_* as parameter.

I'll have a closer look at the patch again when you resend it. It's a
bit hard to see the end result when a whole file is rewritten and sent
as a patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
