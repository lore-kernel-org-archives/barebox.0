Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lPc-0004ob-Kt
 for barebox@lists.infradead.org; Fri, 13 Sep 2019 13:14:58 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Sep 2019 15:14:38 +0200
Message-Id: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 0/8] Device Tree Overlay Support
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

This is the v3 for adding device tree overlay support to barebox.

I added a new config item for building the build-in device tree with
__symbols__. As __symbols__ increases the size of the dtb and you don't need
symbols in the build-in device tree to use overlays on other device trees.
Therefore, this should be disabled unless actually needed.

Furthermore, I completely reworked the function to load firmware from a
devicetree overlay, because it must be successful whenever the overlay does
not reference firmware. However, it must always fail if the overlay references
firmware which cannot be loaded, because Barebox must not apply the overlay
without the according firmware.

There are a few other minor changes which I describe in the respective
patches.

Michael

Changelog:

v2 -> v3:
 - new file of_firmware for loading firmware from overlay
 - fix error handling when CONFIG_FIRMWARE is off
 - separate patch for firmwaremgr_find_by_node
 - make __symbols__ in build-in devicetree configurable

v1 -> v2:
 - export function for applying a device tree overlay
 - define pr_fmt for overlay and resolver
 - remove useless notifier.h
 - fix error handling/memory leak in blspec handling
 - document ownership of overlay memory

rfc -> v1:
 - new of_overlay command
 - no more notifiers for device tree overlays


Michael Tretter (8):
  of: add support for devicetree overlays
  blspec: add support for devicetree overlays
  of: add iterator for overlays
  firmware: add function to find firmware by devicetree node
  firmware: add support to load firmware from dt overlay
  blspec: load firmware if specified in dt overlay
  commands: add of_overlay command for device tree overlays
  dtc: optionally add add __symbols__ to build-in devicetree

 Documentation/user/booting-linux.rst |   4 +
 commands/Kconfig                     |  12 ++
 commands/Makefile                    |   1 +
 commands/of_overlay.c                |  89 +++++++++
 common/blspec.c                      |  78 ++++++++
 common/firmware.c                    |  18 ++
 drivers/of/Kconfig                   |  26 +++
 drivers/of/Makefile                  |   1 +
 drivers/of/of_firmware.c             |  86 +++++++++
 drivers/of/overlay.c                 | 247 ++++++++++++++++++++++++
 drivers/of/resolver.c                | 279 +++++++++++++++++++++++++++
 include/firmware.h                   |  15 ++
 include/of.h                         |  47 +++++
 scripts/Makefile.lib                 |   4 +
 14 files changed, 907 insertions(+)
 create mode 100644 commands/of_overlay.c
 create mode 100644 drivers/of/of_firmware.c
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
