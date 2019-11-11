Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHWV-0005KY-VE
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 21:47:02 +0000
Received: by mail-lf1-x142.google.com with SMTP id q28so11072459lfa.5
 for <barebox@lists.infradead.org>; Mon, 11 Nov 2019 13:46:58 -0800 (PST)
Date: Tue, 12 Nov 2019 00:46:54 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20191112004654.a2048136fe7d3a99994c8329@gmail.com>
In-Reply-To: <911adbc2-61ca-dd09-f42d-a656a844a2ba@mclink.it>
References: <911adbc2-61ca-dd09-f42d-a656a844a2ba@mclink.it>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on VoCore2
To: Mauro Condarelli <mc5686@mclink.it>
Cc: barebox@lists.infradead.org

On Mon, 11 Nov 2019 10:48:26 +0100
Mauro Condarelli <mc5686@mclink.it> wrote:

> Hi,
> I would like to use barebox with a custom board (VoCore2, based on
> MT7628) currently running on a paleolithic version of u-boot.
> I've seen there has been some work on this board
> (http://lists.infradead.org/pipermail/barebox/2017-August/030945.html),
> but it's unclear to me if this resulted in a usable barebox and, if so,
> what's the right branch to use.
> I'm not scared about dirtying my fingers in low (register) level
> programming, if needed, but I know very little about barebox, so some
> guidance (and documentation) would be needed.

Please try this branch for your initial experiments
https://github.com/frantony/barebox/commits/20160815.mediatek

At the moment there is no PBL support for mediatek mips chips.
You can only run barebox from u-boot.

> =

> Where can I find detailed description of needed steps?

First try to run barebox for qemu-mips-malta (big endian version is simplie=
r).

The qemu run instruction can be found in Documentation/boards/mips/qemu-mal=
ta.rst

There is an old but stil usefull barebox mips compilation demo at youtube:
https://www.youtube.com/watch?v=3DWWnX__5wJfg

For cross compiling I recommend to use Debian linux: just install gcc-mips-=
linux-gnu package.


> Note: I tried a "dumb compilation" (after rule-of-thumb configuration),
> but I got link error:
> =

> mcon@cinderella:~/vocore/prove/barebox$
> PATH=3D/home/mcon/vocore/prove/mipsel-buildroot-linux-uclibc_sdk-buildroo=
t/bin:$PATH
> make ARCH=3Dmips CROSS_COMPILE=3Dmipsel-linux-
> =A0 CHK=A0=A0=A0=A0 include/generated/version.h
> =A0 CHK=A0=A0=A0=A0 include/generated/utsrelease.h=A0
> =A0 ...
> =A0 CC=A0=A0=A0=A0=A0 common/version.o
> =A0 LD=A0=A0=A0=A0=A0 common/built-in.o
> =A0 LD=A0=A0=A0=A0=A0 barebox
> mipsel-linux-ld: arch/mips/boot/built-in.o: in function `main_entry':
> (.text_bare_init.text+0xe4): undefined reference to `glob_fdt'
> mipsel-linux-ld: (.text_bare_init.text+0xe8): undefined reference to
> `glob_fdt'
> mipsel-linux-ld: (.text_bare_init.text+0xec): undefined reference to
> `glob_fdt_size'
> mipsel-linux-ld: (.text_bare_init.text+0xf4): undefined reference to
> `glob_fdt_size'
> Unable to open input file barebox
> make: *** [Makefile:784: barebox] Error 2
> =

> ... so I'm surely missing some relevant step.
> =

> Thanks in Advance
> Mauro
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
