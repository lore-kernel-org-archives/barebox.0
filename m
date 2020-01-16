Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2iW-0002mz-Pa
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 10:49:42 +0000
Date: Thu, 16 Jan 2020 11:49:31 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <579667717.12546207.1579171771523.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200116092648.gkvfpjprffkutvej@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
 <20200115102650.11739-2-cleger@kalray.eu>
 <20200116092648.gkvfpjprffkutvej@pengutronix.de>
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
Subject: Re: [PATCH 1/5] k1c: Initial Kalray Coolidge (k1c) architecture
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha

----- On 16 Jan, 2020, at 10:26, Sascha Hauer s.hauer@pengutronix.de wrote:

> On Wed, Jan 15, 2020 at 11:26:46AM +0100, Clement Leger wrote:
>> +config MALLOC_BASE
>> +	hex
>> +	default 0x100000000
>> +
>> +config MALLOC_SIZE
>> +	hex
>> +	default 0x800000
>> +	prompt "malloc area size"
>> +endmenu
> 
>> diff --git a/arch/k1c/lib/board.c b/arch/k1c/lib/board.c
>> new file mode 100644
>> index 000000000..d17a32614
>> --- /dev/null
>> +++ b/arch/k1c/lib/board.c
>> @@ -0,0 +1,20 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (C) 2019 Kalray Inc.
>> + */
>> +
>> +#include <common.h>
>> +#include <malloc.h>
>> +#include <memory.h>
>> +#include <asm-generic/memory_layout.h>
>> +
>> +
>> +void __noreturn k1c_start_barebox(void)
>> +{
>> +	mem_malloc_init((void *)CONFIG_MALLOC_BASE,
>> +			(void *)(CONFIG_MALLOC_BASE + MALLOC_SIZE - 1));
> 
> You could extract valid memory from the device tree instead and pick
> some memory for malloc there. See of_find_mem() how this can be done.

I think we are going to bite our tail here since of_unflatten_dtb does
some xzalloc to unflatten the DTB so we need to initialize the malloc
allocator before accessing DTB.


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
