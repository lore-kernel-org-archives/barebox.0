Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP6XT-00009L-9w
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aP6X7-00071L-7x
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 11:44:05 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aP6X7-0007MP-0c
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 11:44:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:40 +0100
Message-Id: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX HABv4 rework and HABv3 support
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

----------------------------------------------------------------
Sascha Hauer (23):
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
      scripts: imx: move macro definitions to common header file
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

 arch/arm/mach-imx/Kconfig                          |  34 +
 .../arm/mach-imx/include/mach/habv3-imx25-gencsf.h |  43 ++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h |  44 ++
 drivers/Makefile                                   |   2 +-
 drivers/hab/Makefile                               |   2 +
 drivers/hab/habv3.c                                |  78 +++
 drivers/{habv4 => hab}/habv4.c                     |   2 +-
 drivers/habv4/Makefile                             |   1 -
 images/Makefile                                    |   1 -
 images/Makefile.imxhabv4                           |  48 --
 include/{habv4.h => hab.h}                         |   9 +
 scripts/habv4/gencsf.sh                            |  47 --
 scripts/habv4/habv4-imx28.csf.in                   |  33 -
 scripts/habv4/habv4-imx6.csf.in                    |  37 --
 scripts/imx/Makefile                               |   8 +-
 scripts/imx/imx-image.c                            | 724 +++++++++------------
 scripts/imx/imx-usb-loader.c                       | 666 ++++++++-----------
 scripts/imx/imx.c                                  | 442 +++++++++++++
 scripts/imx/imx.h                                  |  76 +++
 19 files changed, 1337 insertions(+), 960 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
 create mode 100644 drivers/hab/Makefile
 create mode 100644 drivers/hab/habv3.c
 rename drivers/{habv4 => hab}/habv4.c (99%)
 delete mode 100644 drivers/habv4/Makefile
 delete mode 100644 images/Makefile.imxhabv4
 rename include/{habv4.h => hab.h} (86%)
 delete mode 100755 scripts/habv4/gencsf.sh
 delete mode 100644 scripts/habv4/habv4-imx28.csf.in
 delete mode 100644 scripts/habv4/habv4-imx6.csf.in
 create mode 100644 scripts/imx/imx.c
 create mode 100644 scripts/imx/imx.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
