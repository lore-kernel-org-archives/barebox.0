Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3P67-0006cx-8z
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:52:56 +0000
Message-ID: <5113877F.1070406@pengutronix.de>
Date: Thu, 07 Feb 2013 11:52:47 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
 <1360233900-26486-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360233900-26486-6-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2964107581204190619=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] common: add mem_test routine
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2964107581204190619==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2ADGCQPQNGQPNUMIVUIAF"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2ADGCQPQNGQPNUMIVUIAF
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/07/2013 11:44 AM, Alexander Aring wrote:
> Useful to detect timing problems if someone porting a new
> device to barebox.
>=20
> This test includes a data bus test, address bus test and
> integrity check of memory.
>=20
> Allocated barebox regions between start and end will skip
> automatically.

Some nitpicking inline.

Is there a nice alternative to usage of the vu_long type?
>=20
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  common/Kconfig        |   7 +
>  common/Makefile       |   1 +
>  common/memory_test.c  | 399 ++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  include/memory_test.h |  13 ++
>  4 files changed, 420 insertions(+)
>  create mode 100644 common/memory_test.c
>  create mode 100644 include/memory_test.h
>=20
> diff --git a/common/Kconfig b/common/Kconfig
> index 3f6c11e..c6988df 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -100,6 +100,13 @@ config MEMINFO
>  	bool "display memory info"
>  	default y
> =20
> +config MEMTEST
> +	bool "Offers routines for memory test"
> +	help
> +	  Offers memtest routines in common/memory_test.c
> +	  This is helpful for porting devices to detect
> +	  memory timing problems.
> +
>  config ENVIRONMENT_VARIABLES
>  	bool "environment variables support"
> =20
> diff --git a/common/Makefile b/common/Makefile
> index 7206eed..684953c 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -17,6 +17,7 @@ obj-$(CONFIG_MALLOC_DLMALLOC) +=3D dlmalloc.o
>  obj-$(CONFIG_MALLOC_TLSF) +=3D tlsf_malloc.o
>  obj-$(CONFIG_MALLOC_TLSF) +=3D tlsf.o
>  obj-$(CONFIG_MALLOC_DUMMY) +=3D dummy_malloc.o
> +obj-$(CONFIG_MEMTEST) +=3D memory_test.o
>  obj-y +=3D clock.o
>  obj-$(CONFIG_BANNER) +=3D version.o
>  obj-$(CONFIG_MEMINFO) +=3D meminfo.o
> diff --git a/common/memory_test.c b/common/memory_test.c
> new file mode 100644
> index 0000000..80b4ff4
> --- /dev/null
> +++ b/common/memory_test.c
> @@ -0,0 +1,399 @@
> +/*
> + * memory_test.c
> + *
> + * Copyright (c) 2013 Alexander Aring <aar@pengutronix.de>, Pengutroni=
x
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modif=
y
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <memory_test.h>
> +
> +static const vu_long bitpattern[] =3D {
> +	0x00000001,	/* single bit */
> +	0x00000003,	/* two adjacent bits */
> +	0x00000007,	/* three adjacent bits */
> +	0x0000000F,	/* four adjacent bits */
> +	0x00000005,	/* two non-adjacent bits */
> +	0x00000015,	/* three non-adjacent bits */
> +	0x00000055,	/* four non-adjacent bits */
> +	0xAAAAAAAA,	/* alternating 1/0 */
> +};
> +
> +/*
> + * Perform a memory test. The complete test
> + * loops until interrupted by ctrl-c.
> + *
> + * Highly recommended to test with disabled and
> + * enabled cache.
> + *
> + * start: start address
> + * end: end address
> + * bus_only: skip integrity check
> + */
> +int mem_test(vu_long _start, vu_long _end,
> +		int bus_only)
> +{
> +	vu_long *start;
> +	vu_long *dummy;
> +
> +	vu_long val;
> +	vu_long readback;
> +	vu_long offset;
> +	vu_long offset2;
> +	vu_long pattern;
> +	vu_long temp;
> +	vu_long anti_pattern;
> +	vu_long num_words;
> +
> +	int i;
> +	int ret;
> +
> +	if (!IS_ALIGNED(_start, sizeof(vu_long)))
> +		_start =3D ALIGN(_start, sizeof(vu_long));
> +	/*
> +	 * check if end is a multiple of vu_long.
> +	 * need to add 1 because ALIGNED works with
> +	 * inclusive byte at end address.
> +	 *
> +	 * Also check on _end =3D=3D 0. Otherwise we get a
> +	 * underflow.
> +	 */
> +	if (!IS_ALIGNED(_end + 1, sizeof(vu_long)) && _end)
> +		_end =3D ALIGN_DOWN(_end, sizeof(vu_long)) - 1;
> +
> +	/*
> +	 * TODO
> +	 * recheck after align. That's not a quite
> +	 * solution now because we already done this
> +	 * in memtest command.
> +	 */
> +	if (_end <=3D _start)
> +		return -1;
> +
> +	start =3D (vu_long *)_start;
> +	/*
> +	 * Point the dummy to start[1]
> +	 */
> +	dummy =3D start+1;
> +	num_words =3D (_end - _start + 1)/sizeof(vu_long);
> +
> +	/*
> +	 * Checking if start and dummy address are in one
> +	 * of barebox regions. Otherwise next data line testing
> +	 * will maybe fail.
> +	 */
> +	ret =3D address_in_sdram_regions((vu_long)start);
> +	ret |=3D address_in_sdram_regions((vu_long)dummy);
> +	if (ret) {
> +		printf("WARNING (data line): "
> +				"address 0x%08lx is in sdram regions.\n"
> +				"Try another start address to fix this issue.\n",
> +				(vu_long)start);
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
> +	for (i =3D 0; i < sizeof(bitpattern)/
> +			sizeof(bitpattern[0]); i++) {

ARRAY_SIZE(bitpattern)

> +		val =3D bitpattern[i];
> +
> +		for (; val !=3D 0; val <<=3D 1) {
> +			*start =3D val;
> +			/* clear the test data off of the bus */
> +			*dummy =3D ~val;
> +			readback =3D *start;
> +
> +			if (readback !=3D val) {
> +				printf("FAILURE (data line): "
> +					"expected 0x%08lx, actual 0x%08lx at address 0x%08lx.\n",
> +					val, readback, (vu_long)start);
> +				return -1;
> +			}
> +
> +			*start =3D ~val;
> +			*dummy =3D val;
> +			readback =3D *start;
> +			if (readback !=3D ~val) {
> +				printf("FAILURE (data line): "
> +					"Is 0x%08lx, should be 0x%08lx at address 0x%08lx.\n",
> +					readback,
> +					~val, (vu_long)start);
> +				return -1;
> +			}
> +		}
> +	}
> +
> +
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
> +	pattern =3D 0xAAAAAAAA;
> +	anti_pattern =3D 0x55555555;
> +
> +	/*
> +	 * Write the default pattern at each of the
> +	 * power-of-two offsets.
> +	 */
> +	for (offset =3D 1; offset <=3D num_words; offset <<=3D 1) {
> +		ret =3D address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret) {
> +			printf("WARNING (stuck high): "
> +					"address 0x%08lx is in barebox regions.\n",
> +					(vu_long)&start[offset]);
> +			continue;
> +		}
> +
> +		start[offset] =3D pattern;
> +	}
> +
> +	printf("Check for address bits stuck high.\n");
> +
> +	/*
> +	 * Check for address bits stuck high.
> +	 */
> +	for (offset =3D 1; offset <=3D num_words; offset <<=3D 1) {
> +		ret =3D address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret)
> +			continue;
> +
> +		temp =3D start[offset];
> +		if (temp !=3D pattern) {
> +			printf("FAILURE: Address bit "
> +					"stuck high @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					pattern, temp);
> +			return -1;
> +		}
> +	}
> +
> +	printf("Check for address bits stuck "
> +			"low or shorted.\n");
> +
> +	/*
> +	 * Check for address bits stuck low or shorted.
> +	 */
> +	for (offset2 =3D 1; offset2 <=3D num_words; offset2 <<=3D 1) {
> +		ret =3D address_in_sdram_regions(
> +				(vu_long)&start[offset2]);
> +		if (ret) {
> +			printf("WARNING (low high): "
> +					"address 0x%08lx is in barebox regions.\n",
> +					(vu_long)&start[offset2]);
> +			continue;
> +		}
> +
> +		start[offset2] =3D anti_pattern;
> +
> +		for (offset =3D 1; offset <=3D num_words; offset <<=3D 1) {
> +			ret =3D address_in_sdram_regions(
> +					(vu_long)&start[offset]);
> +			if (ret)
> +				continue;
> +
> +			temp =3D start[offset];
> +
> +			/*
> +			 * That's some complicated for loop with
> +			 * condition offset !=3D test_offset inside. I
> +			 * think this is necessary to put some another
> +			 * address on the bus.
> +			 *
> +			 * TODO
> +			 * check if loop is necessary.
> +			 */
> +			if ((temp !=3D pattern) &&
> +					(offset !=3D offset2)) {
> +				printf("FAILURE: Address bit stuck"
> +						" low or shorted @"
> +						" 0x%08lx: expected 0x%08lx, actual 0x%08lx.\n",
> +						(vu_long)&start[offset],
> +						pattern, temp);
> +				return -1;
> +			}
> +		}
> +		start[offset2] =3D pattern;
> +	}
> +
> +	/*
> +	 * We tested only the bus if !=3D 0
> +	 * leaving here
> +	 */
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
> +	init_progression_bar(num_words);
> +	for (offset =3D 0; offset < num_words; offset++) {
> +		if (!(offset & 0xfff)) {
> +			if (ctrlc())
> +				return -EINTR;
> +			show_progress(offset);
> +		}
> +
> +		ret =3D address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret)
> +			continue;
> +
> +		start[offset] =3D offset + 1;
> +	}
> +
> +	show_progress(offset);
> +
> +	printf("\nCompare written patterns...\n");
> +
> +	/*
> +	 * Check each location and invert it for the second pass.
> +	 */
> +	init_progression_bar(num_words - 1);
> +	for (offset =3D 0; offset < num_words; offset++) {
> +		if (!(offset & 0xfff)) {
> +			if (ctrlc())
> +				return -EINTR;
> +			show_progress(offset);
> +		}
> +
> +		ret =3D address_in_sdram_regions((vu_long)&start[offset]);
> +		if (ret)
> +			continue;
> +
> +		temp =3D start[offset];
> +		if (temp !=3D (offset + 1)) {
> +			printf("\nFAILURE (read/write) @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					(offset + 1), temp);
> +			return -1;
> +		}
> +
> +		anti_pattern =3D ~(offset + 1);
> +		start[offset] =3D anti_pattern;
> +	}
> +
> +	show_progress(offset);
> +
> +	printf("\nFilling ram with inverted pattern and compare it...\n");
> +
> +	/*
> +	 * Check each location for the inverted pattern and zero it.
> +	 */
> +	init_progression_bar(num_words - 1);
> +	for (offset =3D 0; offset < num_words; offset++) {
> +		if (!(offset & 0xfff)) {
> +			if (ctrlc())
> +				return -EINTR;
> +			show_progress(offset);
> +		}
> +
> +		ret =3D address_in_sdram_regions((vu_long)&start[offset]);
> +		/*
> +		 * Step over barebox mem usage
> +		 */
> +		if (ret)
> +			continue;
> +
> +		anti_pattern =3D ~(offset + 1);
> +		temp =3D start[offset];
> +
> +		if (temp !=3D anti_pattern) {
> +			printf("\nFAILURE (read/write): @ 0x%08lx:"
> +					" expected 0x%08lx, actual 0x%08lx.\n",
> +					(vu_long)&start[offset],
> +					anti_pattern, temp);
> +			return -1;

what about returning an errno?

> +		}
> +
> +		start[offset] =3D 0;
> +	}
> +
> +	show_progress(offset);
> +
> +	/*
> +	 * end of progressbar
> +	 */
> +	printf("\n");
> +
> +	return 0;
> +}
> diff --git a/include/memory_test.h b/include/memory_test.h
> new file mode 100644
> index 0000000..6959dc6
> --- /dev/null
> +++ b/include/memory_test.h
> @@ -0,0 +1,13 @@
> +
> +#ifndef __MEMORY_TEST_H
> +#define __MEMORY_TEST_H
> +
> +#include <progress.h>
> +#include <common.h>
> +#include <memory.h>
> +#include <types.h>
> +
> +int mem_test(vu_long _start, vu_long _end,
> +		int bus_only);
> +
> +#endif
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2ADGCQPQNGQPNUMIVUIAF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlETh4IACgkQjTAFq1RaXHP8bACfYOhA1o4p0R5EPdOj08SkuN8I
Yg0AoI/y/j3hzfeJ7OutlNUqG2DGP0s1
=VPDG
-----END PGP SIGNATURE-----

------enig2ADGCQPQNGQPNUMIVUIAF--


--===============2964107581204190619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2964107581204190619==--
