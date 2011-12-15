Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aa-0004Db-V5
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Rb8aB-0000D0-F5
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 11:30:35 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1Rb8aB-0007Ed-86
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 11:30:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:22 +0100
Message-Id: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: reimplement bootm support
To: barebox@lists.infradead.org

The following series reimplements bootm. bootm now can handle
all kinds of images and becomes the single point of booting.

The simplest case for booting an image still is:

bootm <image>

With image being a uImage, or, if the architecture supports
it, a zImage, a raw image or a barebox image.

the bootm implementation also supports initrds and oftrees in
uImage or native format. An example for booting with initrd
and oftree is:

bootm -r uImage.initrd -o uImage.oftree uImage.kernel
bootm -r initrd.lzo -o oftree.dtb zImage

or:

bootm -r uImage.multi@1 -o uImage.multi@2 uImage.multi@0

for multifile uImages.

uImages have a hardcoded load address which does work for
multi SoC kernel images with different SDRAM addresses. For
this reason this implementation interprets a load address
of 0xffffffff as "let the handler decide". If the handlers
decision is wrong then the load address can be forced with
-a <address>

Unlike the old implementation this one uses the resource mechanism
to make sure that the images are really loaded to SDRAM and that
the images do not overlap with either other images or parts
of barebox.

All this is based on a new uImage implementation which provides
a simple API for loading and checking uImages.

This API is also used to implement a new 'uimage' command which
superseeds the iminfo command. Unlike iminfo uimage can also
be used for extracting and verifying images.

The arm 'bootz' and 'bootu' commands are not necessary anymore
but kept in the tree for now.

Here is a complete list of options for the bootm command:

Usage: bootm [OPTIONS] image
Boot an application image.
-c      crc check uImage data
-r <initrd>     specify an initrd image
-L <load addr>  specify initrd load address
-a <load addr>  specify os load address
-e <ofs>        entry point to the image relative to start (0)
-o <oftree>     specify oftree
-v      verbose

Sascha


Sascha Hauer (12):
      oftree: add of_fix_tree()
      filetype: Add oftree detection
      uncompress: implement uncompress_fd_to_buf
      libbb: add read_full/write_full functions
      ARM: call start_linux directly with initrd start/size and oftree
      reimplement uImage code
      bootm: use new uimage code
      add uimage command
      remove now obsolete iminfo command
      remove now unused uImage code
      move code now only used in mkimage to mkimage
      defaultenv: simplify boot

 arch/arm/boards/at91rm9200ek/env/config           |    5 -
 arch/arm/boards/at91sam9261ek/env/config          |    5 -
 arch/arm/boards/at91sam9263ek/env/config          |    5 -
 arch/arm/boards/at91sam9m10g45ek/env/config       |    5 -
 arch/arm/boards/chumby_falconwing/env/bin/boot    |    9 +-
 arch/arm/boards/chumby_falconwing/env/config      |    2 -
 arch/arm/boards/dss11/env/config                  |    5 -
 arch/arm/boards/eukrea_cpuimx25/env/config        |    1 -
 arch/arm/boards/eukrea_cpuimx35/env/config        |    1 -
 arch/arm/boards/eukrea_cpuimx51/env/config        |    1 -
 arch/arm/boards/freescale-mx35-3-stack/env/config |    5 -
 arch/arm/boards/freescale-mx51-pdk/env/config     |    5 -
 arch/arm/boards/freescale-mx53-loco/env/config    |    5 -
 arch/arm/boards/freescale-mx53-smd/env/config     |    5 -
 arch/arm/boards/guf-cupid/env/config              |    5 -
 arch/arm/boards/guf-neso/env/config               |    5 -
 arch/arm/boards/karo-tx25/env/config              |    5 -
 arch/arm/boards/karo-tx28/env/config              |    5 -
 arch/arm/boards/mini2440/env/config               |    5 -
 arch/arm/boards/nhk8815/env/config                |    5 -
 arch/arm/boards/panda/env/config                  |    5 -
 arch/arm/boards/pcm037/env/config                 |    5 -
 arch/arm/boards/pcm038/env/config                 |    5 -
 arch/arm/boards/pcm043/env/config                 |    5 -
 arch/arm/boards/pcm049/env/config                 |    5 -
 arch/arm/boards/phycard-i.MX27/env/config         |    5 -
 arch/arm/boards/pm9261/env/config                 |    5 -
 arch/arm/boards/pm9g45/env/config                 |    5 -
 arch/arm/boards/scb9328/env/config                |    5 -
 arch/arm/boards/usb-a926x/env/config              |    5 -
 arch/arm/boards/versatile/env/config              |    5 -
 arch/arm/include/asm/armlinux.h                   |    3 +-
 arch/arm/lib/armlinux.c                           |   20 +-
 arch/arm/lib/bootm.c                              |  221 +++++++++-
 arch/arm/lib/bootu.c                              |    8 +-
 arch/arm/lib/bootz.c                              |    7 +-
 arch/blackfin/lib/blackfin_linux.c                |   12 +-
 arch/nios2/boards/generic/env/config              |    1 -
 arch/nios2/lib/bootm.c                            |   11 +-
 arch/ppc/lib/ppclinux.c                           |   16 +-
 commands/Kconfig                                  |   28 +-
 commands/Makefile                                 |    2 +-
 commands/bootm.c                                  |  451 +++++++++++++-----
 commands/iminfo.c                                 |   71 ---
 commands/uimage.c                                 |  108 +++++
 common/Makefile                                   |    1 +
 common/filetype.c                                 |    3 +
 common/image.c                                    |  287 ------------
 common/oftree.c                                   |   22 +-
 common/uimage.c                                   |  505 +++++++++++++++++++++
 defaultenv/bin/boot                               |   43 +--
 defaultenv/config                                 |    5 -
 include/boot.h                                    |   62 +++-
 include/filetype.h                                |    1 +
 include/image.h                                   |  155 ++------
 include/libbb.h                                   |    3 +
 include/of.h                                      |    1 +
 lib/libbb.c                                       |   50 ++
 lib/uncompress.c                                  |    8 +
 scripts/mkimage.c                                 |  240 ++++++++++
 60 files changed, 1629 insertions(+), 860 deletions(-)
 delete mode 100644 commands/iminfo.c
 create mode 100644 commands/uimage.c
 create mode 100644 common/uimage.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
