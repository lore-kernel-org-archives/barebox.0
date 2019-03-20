Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6THz-00005T-O3
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 04:57:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id s1so1101026qte.5
 for <barebox@lists.infradead.org>; Tue, 19 Mar 2019 21:57:19 -0700 (PDT)
MIME-Version: 1.0
From: Lewis Zhou <lewisou@gmail.com>
Date: Wed, 20 Mar 2019 12:57:07 +0800
Message-ID: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
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
Subject: selected processor does not support `rev r7,r7'
To: barebox@lists.infradead.org

Hi

I got a compiling error, please see the log below:

lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
CROSS_COMPILE=arm-cortex_a8-linux-gnueabihf- am335x_mlo_defconfig
#
# configuration written to .config
#

lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
CROSS_COMPILE=arm-corte-linux-gnueabihf-
  Generating include/generated/mach-types.h
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CREATE  include/config.h
  HOSTCC  scripts/basic/fixdep
  CC      arch/arm/lib/asm-offsets.s
  GEN     include/generated/asm-offsets.h
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  HOSTCC  scripts/dtc/fdtget.o
  HOSTCC  scripts/dtc/fdt.o
  HOSTCC  scripts/dtc/fdt_ro.o
  HOSTCC  scripts/dtc/fdt_strerror.o
  HOSTCC  scripts/dtc/fdt_wip.o
  HOSTCC  scripts/dtc/fdt_overlay.o
  HOSTCC  scripts/dtc/fdt_empty_tree.o
  HOSTCC  scripts/dtc/fdt_rw.o
  HOSTCC  scripts/dtc/fdt_sw.o
  HOSTLD  scripts/dtc/fdtget
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/mod/modpost.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  HOSTCC  scripts/bin2c
  HOSTCC  scripts/mkimage
  HOSTCC  scripts/fix_size
  HOSTCC  scripts/bareboxenv
  HOSTCC  scripts/bareboxcrc32
  HOSTCC  scripts/kernel-install
  HOSTCC  scripts/omap_signGP
  HOSTCC  scripts/mk-omap-image
  CC      common/memory.o
{standard input}: Assembler messages:
{standard input}:123: Error: selected processor does not support `rev
r7,r7' in Thumb mode
{standard input}:135: Error: selected processor does not support `rev
r7,r7' in Thumb mode
scripts/Makefile.build:249: recipe for target 'common/memory.o' failed
make[1]: *** [common/memory.o] Error 1
Makefile:785: recipe for target 'common' failed
make: *** [common] Error 2
lewis@lewis-ubuntu:~/OpenProj/barebox$


Kind regards,
Lewis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
