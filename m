Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3P9I-0006kG-F0
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:56:14 +0000
Message-ID: <51138847.8080100@pengutronix.de>
Date: Thu, 07 Feb 2013 11:56:07 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
 <1360233900-26486-7-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360233900-26486-7-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2249953191274033169=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] commands: add new memtest command
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2249953191274033169==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2RCEUNGIIXWHKHOAWEEWN"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2RCEUNGIIXWHKHOAWEEWN
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/07/2013 11:45 AM, Alexander Aring wrote:
> Add new memtest command which can enable or disable caching
> on non allocted barebox regions(test area).
>=20
> This command simply parse and check parameters then call
> the mem_test routine.
>=20
> If no address parameters are given then mem_test will call
> for each memory bank.
>=20
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

A howto-get-rid-of-ifdef nitpick inline

> ---
>  commands/Kconfig   |  10 ++
>  commands/Makefile  |   1 +
>  commands/memtest.c | 362 +++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  3 files changed, 373 insertions(+)
>  create mode 100644 commands/memtest.c
>=20
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7cc759c..d158c3f 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -516,6 +516,16 @@ config CMD_NANDTEST
>  	select PARTITION_NEED_MTD
>  	prompt "nandtest"
> =20
> +config CMD_MEMTEST
> +    tristate
> +    select MEMTEST
> +    prompt "memtest"
> +	help
> +	  This command enables a memtest to test installed memory.
> +	  During this test allocated iomem regions will be skipped.
> +	  If tested architecture has MMU with PTE flags support,
> +	  caching can be set enabled or disabled.
> +
>  endmenu
> =20
>  menu "video command"
> diff --git a/commands/Makefile b/commands/Makefile
> index 393ba51..b39b489 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_CMD_LOADY)		+=3D loadxy.o
>  obj-$(CONFIG_CMD_LOADS)		+=3D loads.o
>  obj-$(CONFIG_CMD_ECHO)		+=3D echo.o
>  obj-$(CONFIG_CMD_MEMORY)	+=3D mem.o
> +obj-$(CONFIG_CMD_MEMTEST)	+=3D memtest.o
>  obj-$(CONFIG_CMD_EDIT)		+=3D edit.o
>  obj-$(CONFIG_CMD_EXEC)		+=3D exec.o
>  obj-$(CONFIG_CMD_SLEEP)		+=3D sleep.o
> diff --git a/commands/memtest.c b/commands/memtest.c
> new file mode 100644
> index 0000000..22e8006
> --- /dev/null
> +++ b/commands/memtest.c
> @@ -0,0 +1,362 @@
> +/*
> + * memtest - Perform a memory test
> + *
> + * (C) Copyright 2013
> + * Alexander Aring <aar@pengutronix.de>, Pengutronix
> + *
> + * (C) Copyright 2000
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <command.h>
> +#include <getopt.h>
> +#include <asm/mmu.h>
> +
> +#include <memory_test.h>
> +
> +/*
> + * In CONFIG_MMU we have a special c flag.
> + */
> +#ifdef CONFIG_MMU
> +static char optstr[] =3D "s:e:i:cb";

const?

> +
> +/*
> + * PTE flags variables to set cached and
> + * uncached regions.
> + */
> +static uint32_t pte_flags_cached;
> +static uint32_t pte_flags_uncached;
> +#else
> +static char optstr[] =3D "s:e:i:b";

const?

> +#endif
> +
> +#ifdef CONFIG_MMU

Can
> +static void print_region(vu_long start, vu_long size, uint32_t flags)
> +{
> +	if (!size)
> +		return;
> +
> +	printf("\t0x%08lx - "
> +			"0x%08lx (size 0x%08lx)\n",
> +			start, start + size - 1, size);
> +}
> +
> +static void do_remap_range(struct memory_bank *bank, uint32_t flags)
> +{
> +	struct resource *r =3D NULL;
> +	struct resource *r_prev =3D NULL;
> +
> +	vu_long size;
> +	vu_long start;
> +	vu_long end;
> +
> +	if (flags =3D=3D pte_flags_uncached)
> +		printf("Set non caching regions:\n");
> +	else if (flags =3D=3D pte_flags_cached)
> +		printf("Set caching regions:\n");
> +	else
> +		BUG();
> +
> +	/*
> +	 * We assume that the regions are sorted in this list
> +	 */
> +	list_for_each_entry(r, &bank->res->children, sibling) {
> +		/*
> +		 * Do on head element for bank boundary
> +		 */
> +		if (r->sibling.prev =3D=3D &bank->res->children) {
> +			/*
> +			 * remember last used element
> +			 */
> +			r_prev =3D r;
> +
> +			start =3D PAGE_ALIGN(bank->start);
> +			end =3D PAGE_ALIGN_DOWN(r->start) - 1;
> +			if (start >=3D end)
> +				continue;
> +			size =3D end - start + 1;
> +
> +			print_region(start, size, flags);
> +			remap_range((void *)start, size, flags);
> +
> +			continue;
> +		}
> +		/*
> +		 * Between used regions
> +		 */
> +		start =3D PAGE_ALIGN(r_prev->end);
> +		end =3D PAGE_ALIGN_DOWN(r->start) - 1;
> +		if (start < end) {
> +			size =3D end - start + 1;
> +			print_region(start, size, flags);
> +			remap_range((void *)start, size, flags);
> +		}
> +
> +		r_prev =3D r;
> +		/*
> +		 * Do on head element for bank boundary
> +		 */
> +		if (list_is_last(&r->sibling, &bank->res->children)) {
> +			start =3D PAGE_ALIGN(r->end);
> +			end =3D PAGE_ALIGN_DOWN(bank->start + bank->size) - 1;
> +			if (start >=3D end)
> +				continue;
> +			size =3D end - start + 1;
> +
> +			print_region(start, size, flags);
> +			remap_range((void *)start, size, flags);
> +		}
> +	}
> +}
> +#endif
> +
> +static int do_mem_memtest(int argc, char *argv[])
> +{
> +	/*
> +	 * Set start address to 0xffffffff which
> +	 * can't be.
> +	 */
> +	vu_long start =3D 0xffffffff;
> +	vu_long end =3D 0;
> +
> +	uint i;
> +	uint max_i =3D 1;
> +
> +#ifdef CONFIG_MMU
> +	int cache =3D 0;
> +#endif
> +	int bus_only =3D 0;
> +	int err =3D 0;
> +	int cnt =3D 0;
> +	int opt;
> +
> +	struct memory_bank *bank =3D NULL;
> +	struct resource *r =3D NULL;
> +
> +	while ((opt =3D getopt(argc, argv, optstr)) > 0) {
> +		switch (opt) {
> +		case 's':
> +			start =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'e':
> +			end =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'i':
> +			max_i =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +#ifdef CONFIG_MMU
> +		case 'c':
> +			cache =3D 1;
> +			break;
> +#endif
> +		case 'b':
> +			bus_only =3D 1;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (optind > argc)
> +		return COMMAND_ERROR_USAGE;
> +
> +	/*
> +	 * Error if no end address
> +	 */
> +	if (start !=3D 0xffffffff && !end) {
> +		printf("Please add an end address.\n");
> +		return 1;
> +	}
> +
> +	/*
> +	 * Error if no start address
> +	 */
> +	if (end && start =3D=3D 0xffffffff) {
> +		printf("Please add a start address.\n");
> +		return 1;
> +	}
> +
> +	/*
> +	 * Check parameters
> +	 */
> +	if (start !=3D 0xffffffff && end) {
> +		if (end <=3D start) {
> +			printf("End address less than or"
> +					" equal start address.\n");
> +			return 1;
> +		}
> +
> +		/*
> +		 * Check if given start and end address are in any banks
> +		 */
> +		for_each_memory_bank(bank) {
> +			if (ADDRESS_IN_REGIONS(start, bank->start,
> +						bank->start + bank->size))
> +				cnt++;
> +
> +			if (ADDRESS_IN_REGIONS(end, bank->start,
> +						bank->start + bank->size))
> +				cnt++;
> +		}
> +
> +		if (cnt !=3D 2) {
> +			printf("Start or end addresses are"
> +					" not in any ram bank.\n");
> +			return 1;
> +		}
> +	}
> +
> +#ifdef CONFIG_MMU
> +	/*
> +	 * Get pte flags. Which are configured at
> +	 * runtime at booting.
> +	 */
> +	pte_flags_cached =3D mmu_get_pte_cached_flags();
> +	pte_flags_uncached =3D mmu_get_pte_uncached_flags();
> +#endif
> +
> +	printf("Skipping regions:\n");
> +	for_each_memory_bank(bank) {
> +		list_for_each_entry(r, &bank->res->children, sibling)
> +			printf("\t0x%08x - "
> +					"0x%08x (size 0x%08x) %s\n",
> +					r->start, r->end,
> +					r->end - r->start + 1, r->name);
> +#ifdef CONFIG_MMU

Use if (IS_ENABLED(CONFIG_MMU) and you can get rid of most ifdefs

Marc


> +		/*
> +		 * Disable or enable caching
> +		 */
> +		if (cache)
> +			do_remap_range(bank, pte_flags_cached);
> +		else
> +			do_remap_range(bank, pte_flags_uncached);
> +#endif
> +	}
> +
> +	/*
> +	 * Do test if we set a start or end address
> +	 */
> +	if (start !=3D 0xffffffff && end) {
> +		printf("Testing address range:\n\t0x%08lx - 0x%08lx"
> +				" (size 0x%08lx)\n",
> +				start, end, end - start + 1);
> +
> +		for (i =3D 1; (i <=3D max_i) || !max_i; i++) {
> +			printf("Iteration: %u\n", i);
> +
> +			/*
> +			 * Do the Memtest
> +			 */
> +			err =3D mem_test(start, end, bus_only);
> +			if (err =3D=3D -EINTR) {
> +				printf("Test interrupted.\n");
> +				goto err;
> +			}
> +
> +			if (err < 0) {
> +				printf("Test failed.\n");
> +				goto err;
> +			}
> +			printf("Tested %u iteration(s) without errors.\n", i);
> +		}
> +#ifdef CONFIG_MMU
> +		/*
> +		 * Renable caching
> +		 */
> +		if (!cache)
> +			for_each_memory_bank(bank)
> +				do_remap_range(bank, pte_flags_cached);
> +#endif
> +		printf("Memtest done.\n");
> +
> +		return 0;
> +	}
> +
> +	/*
> +	 * If we set no start or end address
> +	 * we do the test on all ram banks
> +	 */
> +	for (i =3D 1; (i <=3D max_i) || !max_i; i++) {
> +		for_each_memory_bank(bank) {
> +			start =3D bank->start;
> +			end =3D bank->start + bank->size - 1;
> +
> +			printf("Iteration: %u\n", i);
> +
> +			printf("Testing address range:\n\t0x%08lx - "
> +					"0x%08lx (size 0x%08lx) on bank /dev/%s\n",
> +					start, end, bank->size,
> +					bank->res->name);
> +
> +			err =3D mem_test(start, end, bus_only);
> +			if (err =3D=3D -EINTR) {
> +				printf("Test interrupted.\n");
> +				goto err;
> +			}
> +
> +			if (err < 0) {
> +				printf("Test on bank /dev/%s failed.\n",
> +						bank->res->name);
> +				goto err;
> +			}
> +			printf("Tested %u iteration(s) without errors.\n", i);
> +		}
> +	}
> +#ifdef CONFIG_MMU
> +	/*
> +	 * Renable caching
> +	 */
> +	if (!cache)
> +		for_each_memory_bank(bank)
> +			do_remap_range(bank, pte_flags_cached);
> +#endif
> +	printf("Memtest done.\n");
> +
> +	return 0;
> +
> +err:
> +#ifdef CONFIG_MMU
> +	/*
> +	 * Enable caching
> +	 */
> +	for_each_memory_bank(bank)
> +		do_remap_range(bank, pte_flags_cached);
> +#endif
> +
> +	return 1;
> +}
> +
> +static const __maybe_unused char cmd_memtest_help[] =3D
> +"Usage: memtest [OPTION]...\n"
> +"memtest related commands\n"
> +"	-s	<start>		start address to begin memtest.\n"
> +"	-e	<end>		end address to stop memtest.\n"
> +"	-i	<iterations>	iterations [default=3D1, endless=3D0].\n"
> +#ifdef CONFIG_MMU
> +"	-c			run test with enable cache.\n"
> +#endif
> +"	-b			only test bus datalines.";
> +
> +BAREBOX_CMD_START(memtest)
> +	.cmd		=3D do_mem_memtest,
> +	.usage		=3D "Memory Test",
> +	BAREBOX_CMD_HELP(cmd_memtest_help)
> +BAREBOX_CMD_END
>=20


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2RCEUNGIIXWHKHOAWEEWN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlETiEcACgkQjTAFq1RaXHPpsgCbBP+kzgK8piM7PFZQO5QSA3rj
R0sAnRwxa2vB1plb+P9UgpKx0s0LGrGp
=4UyX
-----END PGP SIGNATURE-----

------enig2RCEUNGIIXWHKHOAWEEWN--


--===============2249953191274033169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2249953191274033169==--
