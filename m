Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pc-VJ
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aQcFf-0001v3-5s
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 15:48:19 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aQcFe-0004Wh-Un
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 15:48:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:43 +0100
Message-Id: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] i.MX HABv4 rework and HABv3 support
To: Barebox List <barebox@lists.infradead.org>

This series reworks the i.MX HABv4 support and adds support for HABv3 as
found on i.MX25, i.MX35 and i.MX51.

HABv4 support was implemented using a relatively complicated makefile
in images/Makefile.imxhabv4. Since the makefiles in images/ are
complicated enough already this is changed in this series. We now
call CST directly from imx-image. With this we can configure CST
from the imx-image configuration file. No additional Makefile changes
are needed, so we can remove Makefile.imxhabv4.

This series also adds HABv3 support. This is slightly different from
HABv4 support. For HABv3 the CSF needs the certificates in DER format
rather than PEM format. Also the super root key hash is not included
in the CSF but in the flash header.

This series has been tested on an i.MX25 for HABv3 and an i.MX6 for
HABv4.

Sascha

Changes since v1:

- create a common include directory for commonly used defines
- Add an option to imx-image to create images suitable for USB upload

----------------------------------------------------------------
Sascha Hauer (34):
      scripts: Add common header files for tools
      scripts/include: Add ARRAY_SIZE
      scripts: Add scripts/include to host compiler includes
      scripts: imx: Use Kernel includes
      scripts: mxs: Use Kernel includes
      ARM: i.MX: Add HABv3 Kconfig variables
      imx: hab: rename driver dir to hab/
      hab: Add HABv3 status report function
      scripts: imx-usb-loader: Make readonly arguments const
      scripts: imx-usb-loader: Move definitions up
      scripts: imx-image: Allow dcd offset 0x0
      scripts: imx-usb-loader: fully read images into memory
      scripts: imx-usb-loader: Move load_file up
      scripts: imx: Consolidate flash headers in imx tools
      scripts: imx-image: Add context struct to config parsers
      scripts: imx-image: move write_mem to context data
      scripts: imx-image: move check to context data
      scripts: imx: move config file parser to separate file
      scripts: imx: make libusb variables global
      scripts: imx-usb-loader: Add -s and -i options
      scripts: imx: Drop double check
      scripts: imx-image: move more variables to context data
      scripts: imx-image: pass config data to add_header_*
      scripts: imx-image: Support adding a Super Root Key to the image
      scripts: imx: Create CSF files from imx config file
      scripts: imx: Allow to create signed images
      scripts: imx: Generate signed images with imx-image
      scripts: imx-usb-loader: Use dcd len to invalidate dcd data
      scripts: imx-image: Factor out a read_file function
      scripts: imx-image: Allow to create HAB signed images suitable for USB upload
      Make: i.MX: Allow to pass config file to cmd_imx_image
      images: imx: Add targets for signed images and signed usb images
      scripts: imx-usb-loader: Do not zero out boot_data_ptr
      imx: hab: Make hab status functions SoC specific

 arch/arm/mach-imx/Kconfig                          |  34 +
 .../arm/mach-imx/include/mach/habv3-imx25-gencsf.h |  43 ++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h |  44 ++
 drivers/Makefile                                   |   2 +-
 drivers/hab/Makefile                               |   2 +
 drivers/hab/habv3.c                                |  78 ++
 drivers/{habv4 => hab}/habv4.c                     |  48 +-
 drivers/habv4/Makefile                             |   1 -
 images/Makefile                                    |   4 +-
 images/Makefile.imx                                |  10 +-
 images/Makefile.imxhabv4                           |  48 --
 include/{habv4.h => hab.h}                         |  18 +-
 scripts/Makefile                                   |   1 +
 scripts/Makefile.lib                               |   4 +-
 scripts/habv4/gencsf.sh                            |  47 --
 scripts/habv4/habv4-imx28.csf.in                   |  33 -
 scripts/habv4/habv4-imx6.csf.in                    |  37 -
 scripts/imx/Makefile                               |   8 +-
 scripts/imx/imx-image.c                            | 826 ++++++++++-----------
 scripts/imx/imx-usb-loader.c                       | 671 +++++++----------
 scripts/imx/imx.c                                  | 444 +++++++++++
 scripts/imx/imx.h                                  |  72 ++
 scripts/include/asm-generic/atomic-gcc.h           |  63 ++
 scripts/include/asm-generic/barrier.h              |  44 ++
 scripts/include/asm-generic/bitops.h               |  29 +
 scripts/include/asm-generic/bitops/__ffs.h         |  43 ++
 scripts/include/asm-generic/bitops/__fls.h         |   1 +
 scripts/include/asm-generic/bitops/arch_hweight.h  |   1 +
 scripts/include/asm-generic/bitops/atomic.h        |  22 +
 scripts/include/asm-generic/bitops/const_hweight.h |   1 +
 scripts/include/asm-generic/bitops/find.h          |  33 +
 scripts/include/asm-generic/bitops/fls.h           |   1 +
 scripts/include/asm-generic/bitops/fls64.h         |   1 +
 scripts/include/asm-generic/bitops/hweight.h       |   7 +
 scripts/include/asm/atomic.h                       |  10 +
 scripts/include/asm/barrier.h                      |  27 +
 scripts/include/asm/bug.h                          |  25 +
 scripts/include/linux/atomic.h                     |   6 +
 scripts/include/linux/bitmap.h                     |  68 ++
 scripts/include/linux/bitops.h                     |  58 ++
 scripts/include/linux/compiler.h                   | 118 +++
 scripts/include/linux/err.h                        |  49 ++
 scripts/include/linux/export.h                     |  10 +
 scripts/include/linux/kernel.h                     | 109 +++
 scripts/include/linux/list.h                       | 771 +++++++++++++++++++
 scripts/include/linux/log2.h                       | 185 +++++
 scripts/include/linux/poison.h                     |   1 +
 scripts/include/linux/string.h                     |  15 +
 scripts/include/linux/types.h                      |  83 +++
 scripts/include/tools/be_byteshift.h               |  70 ++
 scripts/include/tools/endian.h                     |  56 ++
 scripts/include/tools/le_byteshift.h               |  70 ++
 scripts/mxsimage.c                                 |   4 +-
 53 files changed, 3442 insertions(+), 1014 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
 create mode 100644 drivers/hab/Makefile
 create mode 100644 drivers/hab/habv3.c
 rename drivers/{habv4 => hab}/habv4.c (92%)
 delete mode 100644 drivers/habv4/Makefile
 delete mode 100644 images/Makefile.imxhabv4
 rename include/{habv4.h => hab.h} (71%)
 delete mode 100755 scripts/habv4/gencsf.sh
 delete mode 100644 scripts/habv4/habv4-imx28.csf.in
 delete mode 100644 scripts/habv4/habv4-imx6.csf.in
 create mode 100644 scripts/imx/imx.c
 create mode 100644 scripts/imx/imx.h
 create mode 100644 scripts/include/asm-generic/atomic-gcc.h
 create mode 100644 scripts/include/asm-generic/barrier.h
 create mode 100644 scripts/include/asm-generic/bitops.h
 create mode 100644 scripts/include/asm-generic/bitops/__ffs.h
 create mode 100644 scripts/include/asm-generic/bitops/__fls.h
 create mode 100644 scripts/include/asm-generic/bitops/arch_hweight.h
 create mode 100644 scripts/include/asm-generic/bitops/atomic.h
 create mode 100644 scripts/include/asm-generic/bitops/const_hweight.h
 create mode 100644 scripts/include/asm-generic/bitops/find.h
 create mode 100644 scripts/include/asm-generic/bitops/fls.h
 create mode 100644 scripts/include/asm-generic/bitops/fls64.h
 create mode 100644 scripts/include/asm-generic/bitops/hweight.h
 create mode 100644 scripts/include/asm/atomic.h
 create mode 100644 scripts/include/asm/barrier.h
 create mode 100644 scripts/include/asm/bug.h
 create mode 100644 scripts/include/linux/atomic.h
 create mode 100644 scripts/include/linux/bitmap.h
 create mode 100644 scripts/include/linux/bitops.h
 create mode 100644 scripts/include/linux/compiler.h
 create mode 100644 scripts/include/linux/err.h
 create mode 100644 scripts/include/linux/export.h
 create mode 100644 scripts/include/linux/kernel.h
 create mode 100644 scripts/include/linux/list.h
 create mode 100644 scripts/include/linux/log2.h
 create mode 100644 scripts/include/linux/poison.h
 create mode 100644 scripts/include/linux/string.h
 create mode 100644 scripts/include/linux/types.h
 create mode 100644 scripts/include/tools/be_byteshift.h
 create mode 100644 scripts/include/tools/endian.h
 create mode 100644 scripts/include/tools/le_byteshift.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
