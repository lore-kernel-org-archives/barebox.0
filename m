Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKXeF-00062d-HG
 for barebox@lists.infradead.org; Sun, 08 Feb 2015 19:36:04 +0000
Received: by labgd6 with SMTP id gd6so774123lab.7
 for <barebox@lists.infradead.org>; Sun, 08 Feb 2015 11:35:40 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150208232614.f704a8d152576f0c47ca9c50@gmail.com>
References: <20150208232614.f704a8d152576f0c47ca9c50@gmail.com>
Date: Sun, 8 Feb 2015 20:35:40 +0100
Message-ID: <CAJfOKBz5UuqQJtcuPP8nLwLymje7+mPkKDgDSC8yHfj_pbvD+w@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: openrisc build problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

2015-02-08 20:26 GMT+01:00 Antony Pavlov <antonynpavlov@gmail.com>:
> Hi Franck !
>
> Here is sample openrisc barebox build error log :
>
>     /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld  -Map barebox.map -o
>     barebox -T arch/openrisc/cpu/barebox.lds --start-group
>     common/built-in.o  drivers/built-in.o  commands/built-in.o
>     lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
>     arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
>     arch/openrisc/cpu/built-in.o  arch/openrisc/dts/built-in.o
>     defaultenv/built-in.o --end-group
>     /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld: target elf32-or32 not found
>
>     $ /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld --version
>     GNU ld (GNU Binutils) 2.23.51.20121129
>     Copyright 2012 Free Software Foundation, Inc.
>     This program is free software; you may redistribute it under the terms
>     of the GNU General Public License version 3 or (at your option) a later
>     version.
>     This program has absolutely no warranty.
>
>
> My current quick-and-dirty solution is :
>
> --- a/arch/openrisc/cpu/barebox.lds.S
> +++ b/arch/openrisc/cpu/barebox.lds.S
> @@ -16,7 +16,7 @@
>  #include <config.h>
>  #include <asm-generic/barebox.lds.h>
>
> -OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32")
> +/* OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32") */
>  __DYNAMIC  =  0;
>
>  MEMORY
>
>
> Franck !
> Please comment this message !
>
> --
> Best regards,
>   Antony Pavlov

Hi,

Yes I know :) Until now, the official openrisc toolchain was called or32.
However, the new one (and maintained one)  is called or1k. So we need
to change "elf32-or32" to "elf32-or1k" in barebox.lds.S.

Feel free to send a patch. Or I'll do that later.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
