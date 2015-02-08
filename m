Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f53.google.com ([209.85.215.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKXS5-0001kC-Ni
 for barebox@lists.infradead.org; Sun, 08 Feb 2015 19:23:30 +0000
Received: by labgd6 with SMTP id gd6so744404lab.7
 for <barebox@lists.infradead.org>; Sun, 08 Feb 2015 11:23:06 -0800 (PST)
Date: Sun, 8 Feb 2015 23:26:14 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150208232614.f704a8d152576f0c47ca9c50@gmail.com>
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
Subject: openrisc build problem
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franck !

Here is sample openrisc barebox build error log :

    /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld  -Map barebox.map -o
    barebox -T arch/openrisc/cpu/barebox.lds --start-group
    common/built-in.o  drivers/built-in.o  commands/built-in.o
    lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
    arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
    arch/openrisc/cpu/built-in.o  arch/openrisc/dts/built-in.o
    defaultenv/built-in.o --end-group
    /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld: target elf32-or32 not f=
ound

    $ /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-ld --version
    GNU ld (GNU Binutils) 2.23.51.20121129
    Copyright 2012 Free Software Foundation, Inc.
    This program is free software; you may redistribute it under the terms
    of the GNU General Public License version 3 or (at your option) a later
    version.
    This program has absolutely no warranty.


My current quick-and-dirty solution is :

--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -16,7 +16,7 @@
 #include <config.h>
 #include <asm-generic/barebox.lds.h>
 =

-OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32")
+/* OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32") */
 __DYNAMIC  =3D  0;
 =

 MEMORY


Franck !
Please comment this message !

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
