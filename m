Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh6p-0007ns-BQ
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:48:29 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id 17B3718B425D
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:42 +0100
Message-Id: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 00/14] Smatch warning fixups
To: barebox@lists.infradead.org

I've run smatch over a imx_v7_defconfig build
and fixed the resulting warnings.

Some of them are just minor issues with no
real impact, but some of them are real potential
problems or even real bugs.

Lucas Stach (14):
  remove redundant NULL check on free
  commands: edit: properly propagate error code
  common: env: properly propagate error code
  clk: imx: unsigned mfn is never less than zero
  lib: math: fix return path (numstack may be NULL)
  lib: libbb: f should never be NULL
  comamnds: uimage: actually print error message
  usb: ulpi: fix logic-op
  usb: dfu: fix error path to avoid NULL ptr deref
  net: usb: smsc95xx: fix wrong phy reset condition
  net: usb: asix: properly propagate error code
  mtd: core: avoid possible NULL ptr deref
  clk: avoid possible NULL ptr deref
  don't cast negative error codes to unsigned size_t

 arch/arm/mach-imx/clk-pllv1.c | 2 --
 commands/edit.c               | 2 +-
 commands/uimage.c             | 2 +-
 common/environment.c          | 5 ++---
 common/uimage.c               | 6 +++---
 drivers/clk/clkdev.c          | 8 +++++---
 drivers/eeprom/at25.c         | 3 +--
 drivers/mtd/core.c            | 3 ++-
 drivers/net/usb/asix.c        | 4 ++--
 drivers/net/usb/smsc95xx.c    | 2 +-
 drivers/usb/core/usb.c        | 3 +--
 drivers/usb/gadget/dfu.c      | 4 +++-
 drivers/usb/otg/ulpi.c        | 4 ++--
 include/image.h               | 2 +-
 lib/libbb.c                   | 2 +-
 lib/math.c                    | 4 ++--
 lib/parameter.c               | 3 +--
 net/eth.c                     | 2 +-
 18 files changed, 30 insertions(+), 31 deletions(-)

-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
