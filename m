Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-2.e-mind.com ([188.94.192.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aQI-0001qD-TC
 for barebox@lists.infradead.org; Fri, 28 Feb 2020 07:51:04 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-2.e-mind.com (Postfix) with ESMTP id BFC9E80023C
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 07:50:55 +0000 (UTC)
Received: from submit-2.e-mind.com ([127.0.0.1])
 by localhost (submit-2.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iHEsMlSOVBNV for <barebox@lists.infradead.org>;
 Fri, 28 Feb 2020 08:50:55 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-2.e-mind.com (Postfix) with SMTP id 7895283EF94
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 08:50:54 +0100 (CET)
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
 <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
 <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
 <4e386cf3-69f3-fd0a-dfae-2827cc2b1c5e@pengutronix.de>
 <2b5d2afe-c71e-34b9-efa5-57aaa5f28445@eurek.it>
 <8da838d3-ac20-adcb-74c0-e0f921c4a083@pengutronix.de>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <701628bd-3198-a670-a3e7-13f137a99d2d@eurek.it>
Date: Fri, 28 Feb 2020 08:50:54 +0100
MIME-Version: 1.0
In-Reply-To: <8da838d3-ac20-adcb-74c0-e0f921c4a083@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox as first and second stage bootloader
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On 02/27/2020 12:51 PM, Ahmad Fatoum wrote:
> Hello,
>
> please keep the barebox mailing list in CC.
>
> On 2/27/20 12:44 PM, gianluca wrote:
>>> ST's TF-A fork does. Upstream TF-A doesn't. The Programmer software uses vendor TF-A.
>>>
>>
>> I've found the forked ST's TF-A repo:
>>
>> https://github.com/STMicroelectronics/arm-trusted-firmware
>>
>> is it right?
>
> Yes. I have only tried upstream TF-A though.
>
>> I tried to compile for STM32MP1 but it gives me a lot of issues regarding the compiler toolchain.
>>
>> I have used:
>>
>>> Using built-in specs.
>>> COLLECT_GCC=arm-none-eabi-gcc
>>> COLLECT_LTO_WRAPPER=/home/gianluca/gcc-arm-none-eabi-7-2018-q2-update/bin/../lib/gcc/arm-none-eabi/7.3.1/lto-wrapper
>>> Target: arm-none-eabi
>>> Configured with: /tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/src/gcc/configure --target=arm-none-eabi --prefix=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native --libexecdir=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/lib --infodir=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/share/doc/gcc-arm-none-eabi/info --mandir=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/share/doc/gcc-arm-none-eabi/man --htmldir=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/share/doc/gcc-arm-none-eabi/html --pdfdir=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/share/doc/gcc-arm-none-eabi/pdf --enable-languages=c,c++ --enable-plugins --disable-decimal-float --disable-libffi --disable-libgomp --disable-libmudflap
>>> --disable-libquadmath --disable-libssp --disable-libstdcxx-pch --disable-nls --disable-shared --disable-threads --disable-tls --with-gnu-as --with-gnu-ld --with-newlib --with-headers=yes --with-python-dir=share/gcc-arm-none-eabi --with-sysroot=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/install-native/arm-none-eabi --build=x86_64-linux-gnu --host=x86_64-linux-gnu --with-gmp=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/build-native/host-libs/usr --with-mpfr=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/build-native/host-libs/usr --with-mpc=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/build-native/host-libs/usr --with-isl=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/build-native/host-libs/usr --with-libelf=/tmp/jenkins/jenkins-GCC-7-build_toolchain_docker-775_20180622_1529687456/build-native/host-libs/usr
>>> --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic -lm' --with-pkgversion='GNU Tools for Arm Embedded Processors 7-2018-q2-update' --with-multilib-list=rmprofile
>>> Thread model: single
>>> gcc version 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907] (GNU Tools for Arm Embedded Processors 7-2018-q2-update)
>>
>> but when trying compiling it gives me this error:
>>
>>> STM32MP_EMMC=1 CROSS_COMPILE=arm-none-eabi- make PLAT=stm32mp1
>>>   CC      lib/libfdt/fdt.c
>>> arm-none-eabi-gcc: error: unrecognized command line option '-mgeneral-regs-only'
>>> arm-none-eabi-gcc: error: unrecognized command line option '-mstrict-align'; did you mean '-Wstrict-aliasing'?
>>> lib/libfdt/libfdt.mk:19: recipe for target 'build/stm32mp1/release/libfdt/fdt.o' failed
>>> make: *** [build/stm32mp1/release/libfdt/fdt.o] Error 1
>>
>> What compiler are you using to compile TF-A???
>
> OSELAS.Toolchain-2019.09.1
>
> But I think you are calling it with the wrong parameters, you need:
>
> make ARCH=aarch32 ARM_ARCH_MAJOR=7 AARCH32_SP=sp_min DEBUG=1 STM32MP_EMMC=1 \
>         DTB_FILE_NAME=stm32mp157c-dk2.dtb \
>         CROSS_COMPILE=${CROSS_COMPILE} \
>         PLAT=stm32mp
>

PLAT=stm32mp1

;-)

Now it compiles with the gcc version 7.3.1 20180622 (release) 
[ARM/embedded-7-branch revision 261907] (GNU Tools for Arm Embedded 
Processors 7-2018-q2-update).
Built build/stm32mp1/debug/tf-a-stm32mp157c-dk2.bin successfully


Generated build/stm32mp1/debug/tf-a-stm32mp157c-dk2.stm32
tools/stm32image/stm32image -s 
./build/stm32mp1/debug/tf-a-stm32mp157c-dk2.bin -d 
build/stm32mp1/debug/tf-a-stm32mp157c-dk2.stm32 -l 0x000000002ffc2500 -e 
0x000000002ffd8000 -v 0
Image Type   : ST Microelectronics STM32 V1.0
Image Size   : 245128 bytes
Image Load   : 0x2ffc2500
Entry Point  : 0x2ffd8000
Checksum     : 0x00ebe57e
Option     : 0x00000001
Version	   : 0x00000000


> It's described in the TF-A platform documentation.

Frankly, the documentation in the github repo is quite messy. Anyway 
thanks for your support.

> You can also check out the ptxdist rule for building it:
> https://www.mail-archive.com/ptxdist@pengutronix.de/msg15787.html
>

I will do ASAP. Thank you again.

Gianluca
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
