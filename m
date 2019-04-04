Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k6-0007e5-1A
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:28 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:13 +0200
Message-Id: <20190404145320.11465-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
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
Subject: [RFC PATCH 0/7] Device Tree Overlay Support
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

This series adds devicetree overlay support loosely based on the Linux drivers
and a fpga-region driver to program an FPGA based on a devicetree overlay.

The overlay is registered as a fixup, which is necessary to apply the overlay
either on the build-in device tree or external device trees that are passed to
Linux.

The overlay driver uses notifiers to notify other drivers before and after an
overlay is applied. This allows other drivers to react on overlays, e.g., to
program an FPGA. If other drivers report an error from the notifier, the error
will be ignored and the overlay will be applied anyway.

The fpga-region driver understands the firmware-name property and loads a
firmware if the firmware-name property is added to a device node. The binding
defines that the firmware is searched in the firmware search path. The
global.firmware.path variable stores this path and allows other drivers or the
user to specify the search path. Not sure if this is a good variable name for
that.

I extended the blspec and allow to specify a device tree overlay with the
"devicetree-overlay" key. The overlay is applied before booting the OS from
that blspec entry.

Michael

Michael Tretter (7):
  commands: unify newlines for options
  dtc: add -@ option to enable __symbols__
  of: add support for devicetree overlays
  commands: add oftree -o option for overlays
  firmware: allow to find manager by device node
  firmware: add support for fpga-regions
  blspec: add support for devicetree overlays

 Documentation/user/booting-linux.rst |   4 +
 commands/crc.c                       |   4 +-
 commands/firmwareload.c              |   4 +-
 commands/of_display_timings.c        |   8 +-
 commands/of_dump.c                   |   6 +-
 commands/of_fixup_status.c           |   2 +-
 commands/oftree.c                    |  41 +++-
 common/blspec.c                      |  10 +
 common/bootm.c                       |  35 ++++
 common/firmware.c                    |  18 ++
 drivers/firmware/Kconfig             |   7 +
 drivers/firmware/Makefile            |   1 +
 drivers/firmware/of-fpga-region.c    | 153 +++++++++++++++
 drivers/of/Kconfig                   |   9 +
 drivers/of/Makefile                  |   1 +
 drivers/of/overlay.c                 | 251 ++++++++++++++++++++++++
 drivers/of/resolver.c                | 278 +++++++++++++++++++++++++++
 include/bootm.h                      |   1 +
 include/firmware.h                   |   1 +
 include/of.h                         |  42 ++++
 scripts/Makefile.lib                 |   2 +-
 21 files changed, 860 insertions(+), 18 deletions(-)
 create mode 100644 drivers/firmware/of-fpga-region.c
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
