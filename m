Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ6KP-0005Xm-9M
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 20:13:38 +0000
Received: by mail-la0-f54.google.com with SMTP id s18so2566817lam.13
 for <barebox@lists.infradead.org>; Wed, 04 Feb 2015 12:13:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAMhH57R8UDZRL8B36RKU4s4eyzTdANmS5TQriRtUYquogw4w7A@mail.gmail.com>
References: <CAMhH57R8UDZRL8B36RKU4s4eyzTdANmS5TQriRtUYquogw4w7A@mail.gmail.com>
Date: Wed, 4 Feb 2015 21:13:11 +0100
Message-ID: <CAJfOKBzNMGyQcmWvOntAdSzUUEsAv9QJwNqVFz7vb2+TH49czg@mail.gmail.com>
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
Subject: Re: How to build barebox for NIOS2
To: Masahiro YAMADA <yamada.m@jp.panasonic.com>
Cc: barebox <barebox@lists.infradead.org>

2015-02-04 17:25 GMT+01:00 Masahiro YAMADA <yamada.m@jp.panasonic.com>:
> Hi,
>
>
> I can't build barebox for NIOS2.
>
>
> I am using Soucery tool chain which is available at:
> http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/
>
>
> I can build Linux and U-Boot with it,
> but I can't for barebox.
>
>
>
>
> $ make ARCH=nios2 generic_defconfig && make ARCH=nios2
> CROSS_COMPILE=nios2-linux-gnu-
>
>  [ snip ]
>
>   LD      barebox
> common/built-in.o: In function `mem_malloc_start':
> (.text+0x0): warning: Unable to reach (null) (at 0xc1fb1188) from the
> global pointer (at 0x00000000) because the offset (-1040510584) is out
> of the allowed range, -32678 to 32767.
>
>
>
> I tried another tool-chain, but I got the same link error.
>
> How can we solve this?
>
>
>
> --
> Best Regards
> Masahiro Yamada
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Hi,

I have a GCC 4.1.2 and it does compile.
This problem need some investigation. I don't have much time for this.

You can find the GCC I'm using here:
https://www.dropbox.com/s/z6pwevvgw7sb697/nios_gcc.tar.bz2?dl=0

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
