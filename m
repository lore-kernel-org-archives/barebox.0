Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4wI-0000wb-1t
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 13:12:03 +0000
Date: Thu, 16 Jan 2020 14:11:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116131153.mpmtntns4c4s5kk3@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
 <20200115102650.11739-2-cleger@kalray.eu>
 <20200116092648.gkvfpjprffkutvej@pengutronix.de>
 <579667717.12546207.1579171771523.JavaMail.zimbra@kalray.eu>
 <20200116105534.6wfpjkmrgeixaehy@pengutronix.de>
 <1878342639.12568406.1579177481299.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1878342639.12568406.1579177481299.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] k1c: Initial Kalray Coolidge (k1c) architecture
 support
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 16, 2020 at 01:24:41PM +0100, Cl=E9ment Leger wrote:
> =

> ----- On 16 Jan, 2020, at 11:55, Sascha Hauer s.hauer@pengutronix.de wrot=
e:
> =

> > On Thu, Jan 16, 2020 at 11:49:31AM +0100, Cl=E9ment Leger wrote:
> >> Hi Sasha
> >> =

> >> ----- On 16 Jan, 2020, at 10:26, Sascha Hauer s.hauer@pengutronix.de w=
rote:
> >> =

> >> > On Wed, Jan 15, 2020 at 11:26:46AM +0100, Clement Leger wrote:
> >> >> +config MALLOC_BASE
> >> >> +	hex
> >> >> +	default 0x100000000
> >> >> +
> >> >> +config MALLOC_SIZE
> >> >> +	hex
> >> >> +	default 0x800000
> >> >> +	prompt "malloc area size"
> >> >> +endmenu
> >> > =

> >> >> diff --git a/arch/k1c/lib/board.c b/arch/k1c/lib/board.c
> >> >> new file mode 100644
> >> >> index 000000000..d17a32614
> >> >> --- /dev/null
> >> >> +++ b/arch/k1c/lib/board.c
> >> >> @@ -0,0 +1,20 @@
> >> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> >> +/*
> >> >> + * Copyright (C) 2019 Kalray Inc.
> >> >> + */
> >> >> +
> >> >> +#include <common.h>
> >> >> +#include <malloc.h>
> >> >> +#include <memory.h>
> >> >> +#include <asm-generic/memory_layout.h>
> >> >> +
> >> >> +
> >> >> +void __noreturn k1c_start_barebox(void)
> >> >> +{
> >> >> +	mem_malloc_init((void *)CONFIG_MALLOC_BASE,
> >> >> +			(void *)(CONFIG_MALLOC_BASE + MALLOC_SIZE - 1));
> >> > =

> >> > You could extract valid memory from the device tree instead and pick
> >> > some memory for malloc there. See of_find_mem() how this can be done.
> >> =

> >> I think we are going to bite our tail here since of_unflatten_dtb does
> >> some xzalloc to unflatten the DTB so we need to initialize the malloc
> >> allocator before accessing DTB.
> > =

> > of_find_mem() doesn't use of_unflatten_dtb(), it uses libfdt to parse
> > the device tree.
> =

> Oh indeed. I looked at it and I see potential problems:
> - Stack address/size will still need to be hardcoded because it needs to
>   be setup before executing C code.

mem_malloc_init() actually is C code, so you must have have configured a
stack already ;)

> - We have multiple memory nodes in our device tree (SMEM and DDR) so we w=
ill
>   probably have to do some quirks to finally find the DDR memory node.

Indeed.

> - MALLOC_SIZE will still needs to be there

On ARM we use roughly half of the available memory for malloc. Maximum
is 1GiB anyway, as this is the maximum supported by tlsf malloc.

The preferred layout is to put barebox binary and stack to the end of
available SDRAM and put the malloc area beneath it. That of course needs
a relocatable barebox binary, I don't know if you can generate such an
image. If not you have to think of some good base address and put the
malloc area whereever it fits.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
