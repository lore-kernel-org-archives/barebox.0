Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7OrX-0005OJ-Rf
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 14:07:44 +0000
Received: by wgck11 with SMTP id k11so10796801wgc.0
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2015 07:07:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <558961C0.2090005@teledigit.eu>
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de>
 <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
 <558961C0.2090005@teledigit.eu>
Date: Tue, 23 Jun 2015 16:07:21 +0200
Message-ID: <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: =?UTF-8?B?R3nDtnJneSBLw7Z2ZXNkaQ==?= <kgy@teledigit.eu>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Look at barebox/arch/arm/Makefile. Around line 47 you see
"-msoft-float" specified to both CPPFLAGS and AFLAGS. So specifying
"CC=-msoft-hard" would bites with this.

Does compiling Barebox outside of Yocto work?  E.g. something like:

make ARCH=arm CROSS_COMPILE=/home/schurig/d/mkarm/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux/bin/arm-linux-gnueabihf-

(I'm using http://releases.linaro.org/14.04/components/toolchain/binaries/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux.tar.xz,
but you'd of corse specify your own prefix). Also note that my
compiler is gnueabiarmhf (hf is "hard-float"), but has not trouble
compiling in something with -msoft-float. Maybe your cross-compiler
cannot do that?



PS: despite I was once heavily involved into the early bitbake (during
OpenEmbedded time), I stopped using it. I now run Debian on my i.MX6
and don't fuzz with bitbake/OE/Poky/Yocto anymore :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
