Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pMg-00074c-K7
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 10:51:49 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 12:51:35 +0200
Message-Id: <20190905105142.13681-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 0/7] Device Tree Overlay Support
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

This series adds device tree overlay support loosely based on the Linux
driver.

In contrast to Linux, the overlay is not applied to the live tree, but
registered as a device tree fixup. This allows to apply the overlay to the
build-in device tree and external device trees, which is necessary for booting
Linux with an overlaid device tree.

I further added the "devicetree-overlay" key to the blspec. This allows to
specify device tree overlays that should be applied before booting the OS from
that blspec entry. Note that if an overlay fails to apply, Linux still would
boot normally with the base device tree.

The RFC extended the oftree command, but I now defined a new "of_overlay"
command that accepts the file name of the overlay as an argument. Having a
separate command with separate options for overlays looks much cleaner to me.

Compared to the RFC, I dropped the notifiers, because they are too limited to
get information from the module that registers the overlay to the module that
is notified and reacts on an overlay. Now, any other module that should react
on an overlay must be called explicitly.

Michael

Changelog:

rfc -> v1:
 - new of_overlay command
 - no more notifiers for device tree overlays

Michael Tretter (7):
  dtc: add -@ option to enable __symbols__
  of: add support for devicetree overlays
  blspec: add support for devicetree overlays
  of: add iterator for overlays
  firmware: add support to load firmware from dt overlay
  blspec: load firmware if specified in dt overlay
  commands: add of_overlay command for device tree overlays

 Documentation/user/booting-linux.rst |   4 +
 commands/Kconfig                     |  12 ++
 commands/Makefile                    |   1 +
 commands/of_overlay.c                |  89 +++++++++
 common/blspec.c                      |  75 ++++++++
 common/firmware.c                    |  77 ++++++++
 drivers/of/Kconfig                   |   9 +
 drivers/of/Makefile                  |   1 +
 drivers/of/overlay.c                 | 245 +++++++++++++++++++++++
 drivers/of/resolver.c                | 278 +++++++++++++++++++++++++++
 include/firmware.h                   |   3 +
 include/of.h                         |  33 ++++
 scripts/Makefile.lib                 |   2 +-
 13 files changed, 828 insertions(+), 1 deletion(-)
 create mode 100644 commands/of_overlay.c
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
