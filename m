Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-x234.google.com ([2607:f8b0:4002:c09::234])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c5oob-0007cD-ML
 for barebox@lists.infradead.org; Sun, 13 Nov 2016 07:02:58 +0000
Received: by mail-yb0-x234.google.com with SMTP id d128so16187125ybh.2
 for <barebox@lists.infradead.org>; Sat, 12 Nov 2016 23:02:32 -0800 (PST)
MIME-Version: 1.0
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Sun, 13 Nov 2016 08:02:31 +0100
Message-ID: <CAKZffXE4+sTX3Ex9VW7O9rfN+dDLTE9JRNa1gM5+Bbg2W9uz4Q@mail.gmail.com>
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
Subject: Compiler issues
To: barebox@lists.infradead.org

Hello everybody

I continue to have problems with memory size but I suspect they may be
due to a compiler issue.

It is possible?

I am using this compiler (from ubuntu package on X86_64)


$ arm-linux-gnueabi-gcc -v

Using built-in specs.
COLLECT_GCC=arm-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/lto-wrapper
Target: arm-linux-gnueabi
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro
4.7.3-12ubuntu1'
--with-bugurl=file:///usr/share/doc/gcc-4.7/README.Bugs
--enable-languages=c,c++,go,fortran,objc,obj-c++ --prefix=/usr
--program-suffix=-4.7 --enable-shared --enable-linker-build-id
--libexecdir=/usr/lib --without-included-gettext
--enable-threads=posix
--with-gxx-include-dir=/usr/arm-linux-gnueabi/include/c++/4.7.3
--libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu
--enable-libstdcxx-debug --enable-gnu-unique-object
--disable-libmudflap --disable-libitm --enable-plugin
--with-system-zlib --enable-objc-gc --with-cloog
--enable-cloog-backend=ppl --disable-cloog-version-check
--disable-ppl-version-check --enable-multiarch --enable-multilib
--disable-sjlj-exceptions --with-arch=armv5t --with-float=soft
--disable-werror --enable-checking=release --build=x86_64-linux-gnu
--host=x86_64-linux-gnu --target=arm-linux-gnueabi
--program-prefix=arm-linux-gnueabi-
--includedir=/usr/arm-linux-gnueabi/include
Thread model: posix
gcc version 4.7.3 (Ubuntu/Linaro 4.7.3-12ubuntu1)


Thanks in advanced

-- 

jlz.3008  a t  gmail.com
Linux Counter 172551
https://linuxcounter.net/cert/172551.png

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
