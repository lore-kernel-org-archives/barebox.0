Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awVzf-0004qr-VE
 for barebox@lists.infradead.org; Sat, 30 Apr 2016 14:35:40 +0000
Received: by mail-lf0-x22d.google.com with SMTP id j8so14781880lfd.2
 for <barebox@lists.infradead.org>; Sat, 30 Apr 2016 07:35:18 -0700 (PDT)
Date: Sat, 30 Apr 2016 17:35:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160430173547.623a7f71b530baae4a138b85@gmail.com>
In-Reply-To: <HK2PR04MB16188B99E2636E36C55AB57BBE670@HK2PR04MB1618.apcprd04.prod.outlook.com>
References: <HK2PR04MB16186F8CC6854410CD25F0CDBE670@HK2PR04MB1618.apcprd04.prod.outlook.com>
 <20160430141937.1220ebe28aa234eeaf9454a9@gmail.com>
 <HK2PR04MB16188B99E2636E36C55AB57BBE670@HK2PR04MB1618.apcprd04.prod.outlook.com>
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
Subject: Re: How to run barebox gui on linux, fb or x?
To: DU HUANPENG <no_rep1y@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, 30 Apr 2016 12:39:20 +0000
DU HUANPENG <no_rep1y@hotmail.com> wrote:

> On Sat, Apr 30, 2016 at 02:19:37PM +0300, Antony Pavlov wrote:
> > On Sat, 30 Apr 2016 10:13:28 +0000
> > DU HUANPENG <no_rep1y@hotmail.com> wrote:
> > =

> > > Hello, I want to test the is the barebox font working
> > > correctly, but I still don't know how to run barebox(sandbox)
> > > on linux fb or x.
> > > any one can help?
> > =

> > Here is barebox-sandbox-sdl howto.
> > =

> > Go to your barebox repo directory and checkout next branch.
> > Generate .config and enable SDL support:
> > =

> >     $ make mrproper
> >     $ make defconfig
> >     $ sed -i "s/# CONFIG_DRIVER_VIDEO_SDL is not set/CONFIG_DRIVER_VIDE=
O_SDL=3Dy/" .config
> thanks very much!
> i got this error msg when compiling:
> - - - - - - - - - - - - - - - - - - - - =

>   CC      arch/sandbox/os/sdl.o
>   arch/sandbox/os/sdl.c:8:17: fatal error: SDL.h: No such file or directo=
ry
>   compilation terminated.
>   scripts/Makefile.build:249: recipe for target 'arch/sandbox/os/sdl.o' f=
ailed
>   make[1]: *** [arch/sandbox/os/sdl.o] Error 1
>   Makefile:775: recipe for target 'arch/sandbox/os' failed
>   make: *** [arch/sandbox/os] Error 2
> - - - - - - - - - - - - - - - - - - - - =

> there are many sdl pageages, which one should i install?
> =


I use the 'libsdl1.2-dev' Debian package.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
