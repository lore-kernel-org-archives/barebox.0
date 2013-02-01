Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1DwC-0006Ly-51
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 10:33:41 +0000
Message-ID: <510B99F9.9000801@phytec.de>
Date: Fri, 01 Feb 2013 11:33:29 +0100
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: make mrproper depends on a .config file?
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hi Sascha,
why does a "make mrproper" depends on a .config file?

It looks like commit 789fad984a11f63ad0728cd6eabad97b185dceea is =

responsible...

If there is a valid .config file, the problem doesn't pop up.

=3D=3D=3D=3D
barebox-2013.01.0$ make ARCH=3Darm =

CROSS_COMPILE=3D/opt/OSELAS.Toolchain-2012.12.0/arm-cortexa9-linux-gnueabi/=
gcc-4.7.3-glibc-2.16.0-binutils-2.22-kernel-3.6-sanitized/bin/arm-cortexa9-=
linux-gnueabi- =

mrproper
make -f scripts/Makefile.clean obj=3Darch/arm/pbl
   HOSTCC  scripts/basic/fixdep
   HOSTCC  scripts/basic/docproc
   HOSTCC  scripts/kconfig/conf.o
   SHIPPED scripts/kconfig/zconf.tab.c
   SHIPPED scripts/kconfig/zconf.lex.c
   SHIPPED scripts/kconfig/zconf.hash.c
   HOSTCC  scripts/kconfig/zconf.tab.o
   HOSTLD  scripts/kconfig/conf
scripts/kconfig/conf --silentoldconfig Kconfig
***
*** Configuration file ".config" not found!
***
*** Please run some configurator (e.g. "make oldconfig" or
*** "make menuconfig" or "make xconfig").
***
make[3]: *** [silentoldconfig] Fehler 1
make[2]: *** [silentoldconfig] Fehler 2
   CLEAN   scripts/basic
   CLEAN   scripts/kconfig
barebox-2013.01.0$
=3D=3D=3D

greetings,
J=FCrgen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
