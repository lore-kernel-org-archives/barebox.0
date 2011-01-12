Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pd1EW-0001nU-6k
	for barebox@lists.infradead.org; Wed, 12 Jan 2011 13:59:30 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Wed, 12 Jan 2011 19:29:18 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB5930248349F07@dbde02.ent.ti.com>
References: <AANLkTim3AJb3tTuL1x1syWzt-Z1W6vcOJ16PAX_uk0j1@mail.gmail.com>
In-Reply-To: <AANLkTim3AJb3tTuL1x1syWzt-Z1W6vcOJ16PAX_uk0j1@mail.gmail.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: Issues in compiling
To: Nataraj S Narayan <natarajsn@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Nataraj S Narayan
> Sent: Wednesday, January 12, 2011 4:01 PM
> To: barebox@lists.infradead.org
> Subject: Issues in compiling
> 
> Hi
> 
> When compiling using
> 
> "make ARCH=arm 
> CROSS_COMPILE=/software/buildroot-git/output/external-toolchai
> n/bin/arm-none-linux-gnueabi-"
> 
> where Codesourcery tool chain is the external-toolchain, 
> getting the following:-
> 
> 
>   AS      arch/arm/cpu/cache-armv5.o
>   LD      arch/arm/cpu/built-in.o
>   LD      barebox
> common/built-in.o: In function `image_multi_getimg':
> memsize.c:(.text.image_multi_getimg+0x38): undefined 
> reference to `__bswapsi2'
> memsize.c:(.text.image_multi_getimg+0x50): undefined 
> reference to `__bswapsi2'
> common/built-in.o: In function `image_print_contents':
> memsize.c:(.text.image_print_contents+0x30): undefined 
> reference to `__bswapsi2'
> memsize.c:(.text.image_print_contents+0xc8): undefined 
> reference to `__bswapsi2'
> memsize.c:(.text.image_print_contents+0xd4): undefined 
> reference to `__bswapsi2'
> common/built-in.o:memsize.c:(.text.image_print_contents+0xec): more
> undefined references to `__bswapsi2' follow
> make: *** [barebox] Error 1
> 
> 
> But with Buildroot internal tool chain, compiles to give barebox.bin.
> 
> 
> # /buildroot/output/staging/usr/bin/arm-linux-gcc -v
> Using built-in specs.
> Target: arm-unknown-linux-uclibcgnueabi
> Configured with: /buildroot/output/toolchain/gcc-4.4.4/configure
> --prefix=/buildroot/output/staging/usr --build=i686-pc-linux-gnu
> --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi
> --enable-languages=c,c++ --with-sysroot=/buildroot/output/staging
> --with-build-time-tools=/buildroot/output/staging/usr/arm-unkn
> own-linux-uclibcgnueabi/bin
> --disable-__cxa_atexit --enable-target-optspace --with-gnu-ld
> --disable-libssp --disable-multilib --enable-tls --enable-shared
> --with-gmp=/buildroot/output/toolchain/gmp
> --with-mpfr=/buildroot/output/toolchain/mpfr --enable-threads
> --disable-decimal-float --with-float=soft --with-abi=aapcs-linux
> --with-arch=armv5te --with-tune=arm926ej-s
> --with-pkgversion='Buildroot 2010.08-git'
> --with-bugurl=http://bugs.buildroot.net/ : (reconfigured)
> /buildroot/output/toolchain/gcc-4.4.4/configure
> --prefix=/buildroot/output/staging/usr --build=i686-pc-linux-gnu
> --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi
> --enable-languages=c,c++ --with-sysroot=/buildroot/output/staging
> --with-build-time-tools=/buildroot/output/staging/usr/arm-unkn
> own-linux-uclibcgnueabi/bin
> --disable-__cxa_atexit --enable-target-optspace --with-gnu-ld
> --disable-libssp --disable-multilib --enable-tls --enable-shared
> --with-gmp=/buildroot/output/toolchain/gmp
> --with-mpfr=/buildroot/output/toolchain/mpfr --enable-threads
> --disable-decimal-float --with-float=soft --with-abi=aapcs-linux
> --with-arch=armv5te --with-tune=arm926ej-s
> --with-pkgversion='Buildroot 2010.08-git'
> --with-bugurl=http://bugs.buildroot.net/ : (reconfigured)
> /buildroot/output/toolchain/gcc-4.4.4/configure
> --prefix=/buildroot/output/staging/usr --build=i686-pc-linux-gnu
> --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi
> --enable-languages=c,c++ --with-sysroot=/buildroot/output/staging
> --with-build-time-tools=/buildroot/output/staging/usr/arm-unkn
> own-linux-uclibcgnueabi/bin
> --disable-__cxa_atexit --enable-target-optspace --with-gnu-ld
> --disable-libssp --disable-multilib --enable-tls --enable-shared
> --with-gmp=/buildroot/output/toolchain/gmp
> --with-mpfr=/buildroot/output/toolchain/mpfr --enable-threads
> --disable-decimal-float --with-float=soft --with-abi=aapcs-linux
> --with-arch=armv5te --with-tune=arm926ej-s
> --with-pkgversion='Buildroot 2010.08-git'
> --with-bugurl=http://bugs.buildroot.net/
> Thread model: posix
> gcc version 4.4.4 (Buildroot 2010.08-git)
> 
> 
>  # 
> /software/buildroot-git/output/external-toolchain/bin/arm-none
> -linux-gnueabi-gcc
> -v
> Using built-in specs.
> COLLECT_GCC=/software/buildroot-git/output/external-toolchain/
> bin/arm-none-linux-gnueabi-gcc
> COLLECT_LTO_WRAPPER=/home/vignesh/software/buildroot-git/outpu
> t/external-toolchain/bin/../libexec/gcc/arm-none-linux-gnueabi
> /4.5.1/lto-wrapper
> Target: arm-none-linux-gnueabi
> Configured with:
> /scratch/nathan/arm-lite/src/gcc-4.5-2010.09/configure
> --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
> --target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap
> --disable-libssp --disable-libstdcxx-pch
> --enable-extra-sgxxlite-multilibs --with-arch=armv5te --with-gnu-as
> --with-gnu-ld --with-specs='%{save-temps: -fverbose-asm}
> %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdl
> ib:;:-funwind-tables}
> -D__CS_SOURCERYGXX_MAJ__=2010 -D__CS_SOURCERYGXX_MIN__=9
> -D__CS_SOURCERYGXX_REV__=50 %{O2:%{!fno-remove-local-statics:
> -fremove-local-statics}}
> %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
> -fremove-local-statics}}}' --enable-languages=c,c++ --enable-shared
> --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
> --with-pkgversion='Sourcery G++ Lite 2010.09-50'
> --with-bugurl=https://support.codesourcery.com/GNUToolchain/
> --disable-nls --prefix=/opt/codesourcery
> --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
> --with-build-sysroot=/scratch/nathan/arm-lite/install/arm-none
> -linux-gnueabi/libc
> --with-gmp=/scratch/nathan/arm-lite/obj/host-libs-2010.09-50-a
> rm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --with-mpfr=/scratch/nathan/arm-lite/obj/host-libs-2010.09-50-
> arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --with-mpc=/scratch/nathan/arm-lite/obj/host-libs-2010.09-50-a
> rm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --with-ppl=/scratch/nathan/arm-lite/obj/host-libs-2010.09-50-a
> rm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic
> -lm' 
> --with-cloog=/scratch/nathan/arm-lite/obj/host-libs-2010.09-50
> -arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --with-libelf=/scratch/nathan/arm-lite/obj/host-libs-2010.09-5
> 0-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
> --disable-libgomp --enable-poison-system-directories
> --with-build-time-tools=/scratch/nathan/arm-lite/install/arm-n
> one-linux-gnueabi/bin
> --with-build-time-tools=/scratch/nathan/arm-lite/install/arm-n
> one-linux-gnueabi/bin
> Thread model: posix
> gcc version 4.5.1 (Sourcery G++ Lite 2010.09-50)

I notice many differences between the default config for two versions
above. Of these, I suspect "--with-float=soft" missing in the
configuration for gcc4.5.1 could be behind those errors.

Can you try explicitly enabling this option (if not already) to
compiler options when building with gcc4.5.1?

I am far from my build machine to check default barebox flags :(

> 
> 
> regards
> 
> Nataraj
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
