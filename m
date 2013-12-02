Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vb0-x22e.google.com ([2607:f8b0:400c:c02::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnOm9-0006Ms-U8
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 08:22:42 +0000
Received: by mail-vb0-f46.google.com with SMTP id i12so8059659vbh.5
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2013 00:22:20 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 2 Dec 2013 16:22:20 +0800
Message-ID: <CANvTkNaK9f0dviyowuSspx2yuKQem3tvwMo_2ig0rZ6s0Oq0Lw@mail.gmail.com>
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
Subject: [Makefile bug] make barebox.s : dead loop
To: barebox@lists.infradead.org

How to reproduce this:
1. edit Makefile
> 169 ARCH            ?= mips
> 170 CROSS_COMPILE   ?= mips-linux-gnu-
2. make some defconfig
> make dlink-dir-320_defconfig
3. make barebox.s
>make barebox.s
4. endless make....
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  LD      barebox
  SYSMAP  System.map
  DISASM  barebox.S
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/compile.h
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  AS      arch/mips/boot/start.o
  LD      arch/mips/boot/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  LD      barebox
  SYSMAP  System.map
  DISASM  barebox.S
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/compile.h
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  AS      arch/mips/boot/start.o
  LD      arch/mips/boot/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  LD      barebox
  SYSMAP  System.map
  DISASM  barebox.S
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/compile.h
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  AS      arch/mips/boot/start.o
  LD      arch/mips/boot/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  LD      barebox
  SYSMAP  System.map
  DISASM  barebox.S
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/compile.h
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  AS      arch/mips/boot/start.o
  LD      arch/mips/boot/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  PWDH    include/generated/passwd.h
  CC      common/password.o
  LD      common/built-in.o
  LD      barebox
  SYSMAP  System.map
  DISASM  barebox.S
^Cmake[9]: *** wait: No child processes.  Stop.
make[9]: *** Waiting for unfinished jobs....
make[9]: *** wait: No child processes.  Stop.
make[8]: *** [barebox.s] Error 2
make[7]: *** [barebox.s] Interrupt
make[6]: *** [barebox.s] Interrupt
make[5]: *** [barebox.s] Interrupt
make[4]: *** [barebox.s] Interrupt
make[3]: *** [barebox.s] Interrupt
make[2]: *** [barebox.s] Interrupt
make[1]: *** [barebox.s] Interrupt
make: *** [barebox.s] Interrupt

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
