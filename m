Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x233.google.com ([2a00:1450:400c:c0c::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMBzk-00035u-5Z
 for barebox@lists.infradead.org; Fri, 25 May 2018 12:40:56 +0000
Received: by mail-wr0-x233.google.com with SMTP id i14-v6so8988017wre.2
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 05:38:44 -0700 (PDT)
Date: Fri, 25 May 2018 15:55:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180525155540.91ff25f4f2d02a10da2d9b05@gmail.com>
In-Reply-To: <847290015.313235.1527239993231@mail.vodafone.de>
References: <847290015.313235.1527239993231@mail.vodafone.de>
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
Subject: Re: barebox for an i586 board
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Fri, 25 May 2018 11:19:53 +0200 (CEST)
Giorgio Dal Molin <giorgio.nicole@arcor.de> wrote:

> Hi,
> =

> I'm trying to build a barebox image for an i586 (Vortex86) based board.
> =

> The config file I'm using was derived from the arch/x86/configs/generic_d=
efconfig
> =

> The build error I see is:
> =

> ...
>   LD      defaultenv/built-in.o
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      common/version.o
>   LD      common/built-in.o
>   LD      barebox
> ld: section .bootstrapping VMA [0000000000007e00,000000000000826b] overla=
ps section .bootsector VMA [0000000000007c00,0000000000007fff]
> make[1]: *** [/tmp/barebox/Makefile:767: barebox] Error 1
> make: *** [Makefile:123: _all] Error 2
> =

> First of all: does barebox really support booting such a 'normal PC'
> without EFI bios ?

There is very interesting video at youtube:

  https://www.youtube.com/watch?v=3DDLGzcbOqaCY

Alas AFAIK Bach Nguyen has not shared his results with community.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
