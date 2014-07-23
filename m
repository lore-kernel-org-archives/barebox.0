Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxn-0006H3-OV
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:12 +0000
Received: by mail-wg0-f51.google.com with SMTP id b13so1180732wgh.10
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:47 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:41 +0200
Message-Id: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/10] More USB cleanup and fixes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

I have assembled a bunch of additional imports, cleanup, and fixes
before actually rebasing xHCI HCD on top of your latest USB changes.

Patches 1-3 import ch11.h from Linux and prepare it for use in
Barebox.

Patch 4 fixes a copy-and-paste error in usb_hub_configure().

Patches 5-8 clean up ehci-hcd and make it use ch9.h defines.

Patch 9 installs ch11.h and removes the duplicates from usb.h.

Patch 10 finally removes now redundant defines from usb_defs.h.

I have only compile-tested this as far as I could, so at least a
Tested-by on any EHCI driver would be good.

Sebastian

Sebastian Hesselbarth (10):
  USB: import ch11.h from Linux
  USB: reduce USB_MAXCHILDREN on imported ch11.h
  USB: fixup usb_hub_descriptor length name
  USB: fix PowerPowerCtrlMask assignment
  USB: Move FooRequest defines and add class requests
  USB: EHCI: reuse ch9.h config and interface descriptors
  USB: EHCI: make use of defines for descriptors
  USB: EHCI: use descriptor length fields
  USB: Use descriptors from ch11.h
  USB: remove redundant defines from usb_defs.h

 drivers/usb/core/hub.c      |  10 +-
 drivers/usb/host/ehci-hcd.c | 114 +++++++++---------
 drivers/usb/host/ehci.h     |  41 -------
 include/usb/ch11.h          | 279 ++++++++++++++++++++++++++++++++++++++++++++
 include/usb/usb.h           |  27 +----
 include/usb/usb_defs.h      | 135 ++++-----------------
 6 files changed, 364 insertions(+), 242 deletions(-)
 create mode 100644 include/usb/ch11.h

---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
