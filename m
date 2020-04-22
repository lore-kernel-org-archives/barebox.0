Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADf-0003F1-DN
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:54:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:41 +0200
Message-Id: <20200422075452.25226-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v4 00/11] Protect code from pollers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Changes since v3:

- Rebased on current master (v2020.04.0+)

Changes since v2:

- Use a const char * as name argument and not a struct device_d. A name is
  more universally available
- Also give pollers names for better debugability
- Add a poller command to show information about registered pollers
- Add Kconfig entries for both poller and slice commands
- Lock pollers with slices against themselves to allow running pollers
  inside of other pollers

Changes since v1:

- Do not recurse into dependencies during slice_acquire
- detect recursice dependencies
- Do not add the phy device as dependency to the ethernet device but
  instead lock them individually
- Add some more patches created during debugging this series

Sascha Hauer (11):
  poller: Give pollers a name
  poller: Add a poller command
  Introduce slices
  net: Add a slice to struct eth_device
  net: mdiobus: Add slice
  usb: Add a slice to usb host controllers
  usbnet: Add slice
  net: Call net_poll() in a poller
  net: reply to ping requests
  usbnet: Be more friendly in the receive path
  poller: Allow to run pollers inside of pollers

 commands/Kconfig               |  18 ++
 common/Kconfig                 |   4 +
 common/Makefile                |   1 +
 common/poller.c                |  90 +++++++++-
 common/ratp/ratp.c             |   2 +-
 common/slice.c                 | 294 +++++++++++++++++++++++++++++++++
 drivers/input/gpio_keys.c      |   2 +-
 drivers/input/imx_keypad.c     |   2 +-
 drivers/input/input.c          |   2 +-
 drivers/input/qt1070.c         |   2 +-
 drivers/input/twl6030_pwrbtn.c |   2 +-
 drivers/led/core.c             |   2 +-
 drivers/net/phy/mdio_bus.c     |  41 +++++
 drivers/net/usb/usbnet.c       |  22 ++-
 drivers/usb/core/usb.c         |   6 +
 drivers/usb/gadget/udc-core.c  |   2 +-
 drivers/watchdog/wd_core.c     |   2 +-
 fs/nfs.c                       |   4 +-
 fs/tftp.c                      |   2 -
 include/linux/phy.h            |  38 ++---
 include/net.h                  |  11 +-
 include/poller.h               |   7 +-
 include/slice.h                |  31 ++++
 include/usb/usb.h              |   7 +
 include/usb/usbnet.h           |   3 +
 net/dhcp.c                     |   1 -
 net/dns.c                      |   1 -
 net/eth.c                      |  29 +++-
 net/net.c                      |  60 ++++++-
 net/netconsole.c               |   4 +-
 net/nfs.c                      |   1 -
 net/ping.c                     |   2 -
 net/sntp.c                     |   2 -
 33 files changed, 626 insertions(+), 71 deletions(-)
 create mode 100644 common/slice.c
 create mode 100644 include/slice.h

-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
