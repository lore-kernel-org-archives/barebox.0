Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x232.google.com ([2607:f8b0:400c:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnSbb-0003c8-Nf
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 12:28:04 +0000
Received: by mail-ve0-f178.google.com with SMTP id c14so8733434vea.37
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2013 04:27:39 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131202091320.GF24559@pengutronix.de>
References: <CANvTkNaK9f0dviyowuSspx2yuKQem3tvwMo_2ig0rZ6s0Oq0Lw@mail.gmail.com>
 <CANvTkNaxQS489FzWdyozrKnXHeACd5PnCB05GVgMqm82-jBGPg@mail.gmail.com>
 <20131202091320.GF24559@pengutronix.de>
Date: Mon, 2 Dec 2013 20:27:39 +0800
Message-ID: <CANvTkNa710tfGW0=xeLwg-Qrb3YccoKui7d6zWMnio5e4CSZGg@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: Re: [Makefile bug] make barebox.s : dead loop
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

hi, Hauer:
There is two targets of barebox.S,
one is X86,
I just try to compile the x86 barebox,
to  test if there is the same problem with x86 arch.
but i got this:
0. my host & gcc:
$ cat /proc/version
Linux version 3.8.0-29-generic (buildd@akateko) (gcc version 4.6.3
(Ubuntu/Linaro 4.6.3-1ubuntu5) ) #42~precise1-Ubuntu SMP Wed Aug 14
15:31:16 UTC 2013
$ gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/i686-linux-gnu/4.6/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro
4.6.3-1ubuntu5'
--with-bugurl=file:///usr/share/doc/gcc-4.6/README.Bugs
--enable-languages=c,c++,fortran,objc,obj-c++ --prefix=/usr
--program-suffix=-4.6 --enable-shared --enable-linker-build-id
--with-system-zlib --libexecdir=/usr/lib --without-included-gettext
--enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.6
--libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu
--enable-libstdcxx-debug --enable-libstdcxx-time=yes
--enable-gnu-unique-object --enable-plugin --enable-objc-gc
--enable-targets=all --disable-werror --with-arch-32=i686
--with-tune=generic --enable-checking=release --build=i686-linux-gnu
--host=i686-linux-gnu --target=i686-linux-gnu
Thread model: posix
gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)


1. edit Makefile
  ARCH=x86
  CROSS_COMPILE=
2. $ make generic_defconfig
3.  make

  LD      arch/x86/boot/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  LD      common/built-in.o
  LD      barebox
ld: section .eh_frame loaded at [000000000001605c,000000000001f01b]
overlaps section .barebox_initcalls loaded at
[000000000001605c,00000000000160b7]
make: *** [barebox] Error 1
dev@bogon:~/wr720n/bug.dis/x86$

2013/12/2 Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, Dec 02, 2013 at 04:36:50PM +0800, Kevin Du Huanpeng wrote:
>> I add barebox.s after the target barebox.S,
>> It works.
>> maybe should add the same thing with
>>
>> ----------
>> ifdef CONFIG_X86
>> barebox.S: barebox
>> ifdef CONFIG_X86_HDBOOT
>> ------------
>>
>>
>> @@ -723,7 +724,7 @@ endif
>>         @echo " * Init Calls content" >> barebox.S
>>         $(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
>>  else
>> -barebox.S: barebox FORCE
>> +barebox.S barebox.s: barebox FORCE
>>         $(call if_changed,disasm)
>
> Normally you are supposed to call 'make barebox.S' (with uppercase 'S'),
> but I think it's fine to just add the same target with a lowercase 's'
> like you did to make both work. Care to send a proper patch with
> Signed-off-by?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
