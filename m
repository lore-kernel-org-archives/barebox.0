Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E9u-0004Nx-9e
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 13:20:17 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Sep 2019 15:20:01 +0200
Message-Id: <20190906132008.25309-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v2 0/7] Device Tree Overlay Support
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

This is the v2 for adding device tree overlay support to barebox.

The biggest change is the new function of_overlay_apply_tree() which accepts a
devicetree and the root node of an overlay and applies the overlay to the
devicetree.

Apart from that, I fixed various issues like memory leaks, useless includes,
missing documentation, formatting of output messages, and a missing "static
inline".

Michael

Changelog:

v1 -> v2:
 - export function for applying a device tree overlay
 - define pr_fmt for overlay and resolver
 - remove useless notifier.h
 - fix error handling/memory leak in blspec handling
 - document ownership of overlay memory

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
 common/blspec.c                      |  77 ++++++++
 common/firmware.c                    |  77 ++++++++
 drivers/of/Kconfig                   |   9 +
 drivers/of/Makefile                  |   1 +
 drivers/of/overlay.c                 | 254 ++++++++++++++++++++++++
 drivers/of/resolver.c                | 279 +++++++++++++++++++++++++++
 include/firmware.h                   |   3 +
 include/of.h                         |  40 ++++
 scripts/Makefile.lib                 |   2 +-
 13 files changed, 847 insertions(+), 1 deletion(-)
 create mode 100644 commands/of_overlay.c
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
