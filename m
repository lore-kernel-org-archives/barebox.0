Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9Xi5-00023A-3i
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 10:54:17 +0000
Message-ID: <1406026326.4667.46.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Jul 2014 12:52:06 +0200
In-Reply-To: <CAOpc7mFrJ=CWj5hqVeVxfe=tSxxo0UcdeOTK3UV7WDSxZ5A53w@mail.gmail.com>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
 <1406017939.4667.14.camel@weser.hi.pengutronix.de>
 <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
 <1406019042.4667.23.camel@weser.hi.pengutronix.de>
 <CAOpc7mEBJB=xNTbawAx3PyvquErCsQKHg39-mQzHHjU+YczcSA@mail.gmail.com>
 <CAOpc7mF2QKiSmi2LYpumpBOPyfwg5mkKkHTi2PK2Z4Ehv46GzA@mail.gmail.com>
 <1406022197.4667.39.camel@weser.hi.pengutronix.de>
 <CAOpc7mFrJ=CWj5hqVeVxfe=tSxxo0UcdeOTK3UV7WDSxZ5A53w@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Dienstag, den 22.07.2014, 12:25 +0200 schrieb Holger Schurig:
> > but this doesn't explain a build failure
> 
> The build failure was
> 
>   LD      barebox
> drivers/built-in.o: In function `of_add_memory':
> /home/schurig/d/mkarm/barebox/drivers/of/base.c:1716: undefined
> reference to `of_add_memory_bank'
> collect2: error: ld returned 1 exit status
> make: *** [barebox] Error 1
> 
> To be honest, I simply assumed "sandbox has no memory banks, so adding
> them is futile" and commented them away. Two weeks ago (or so, not
> exactly sure) there was talk on the same function here in the mailing
> list. At that time there have been some other suggestions, but they
> made the MIPS arch not build. Sascha then said he had no further idea.
> 
> > CONFIG_OFTREE_MEM_GENERIC to be enabled on sandbox. Would
> > this work for you?
> 
> Yes, that worked. This now checks even more code than my #ifdeffery
> would have checked, so I like it.
> 
> Would then this be ok?
> 
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -4,7 +4,7 @@ config OFTREE
> 
>  config OFTREE_MEM_GENERIC
>         depends on OFTREE
> -       depends on PPC || ARM || ARCH_EFI
> +       depends on PPC || ARM || ARCH_EFI || SANDBOX
>         def_bool y
> 
I'm fine with this solution.

> 
> 
> Unrelated: which static checkers use you in non-kernel project?  I
> know sparse, but that isn't really usable outisde the kernel, or is
> it?
> 
Personally I've used smatch (it also needs to run a build), but don't
know how useful this is outside of a kernel/barebox source tree. My
current favorite is cppcheck as it doesn't need a build run and provides
a really good signal-to-noise level, but this also means it might
overlook some potential problems.
 
> I found clang's static checker giving out lots of warning, similar to
> -Wall -Weverything, e.g. he spits out things that aren't technically
> errors, but not clean code (e.g. assignment to a variable that is not
> used afterwards). But in my own code he found via reasoning some paths
> where a null-pointer dereference could happen, or a division by zero.
> That's something I don't want. BTW, clangs static checker finds also
> both things in barebox, I've had not yet the time to check if they are
> indeed possible. He also finds various places of usage of initialized
> variables. Some of them I checked, and they have been true. In the
> HTML output he writes exactly what circumstances must be valid to
> reach that specific point in the code. You cannot easily see that from
> what it spits to stdout.

Good to know. I think I'll give it another go after your patches are
accepted.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
