Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJKo-00083b-Gk
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:36:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2020 09:35:36 +0100
Message-Id: <20200312083555.10793-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v3 00/19] Protect code from pollers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

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

Sascha Hauer (19):
  net: fec_imx: Do not clear MII interrupt during receive
  miitool: Use mdiobus_read()
  net: phy: mdio-mux: Use mdiobus_read/write()
  net: Open ethernet devices explicitly
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
  net: phy: Also print link down messages
  net: ifup command: add ethernet device completion
  net: phy: Do not claim the link is up initially
  net: Add ifdown support and command
  poller: Allow to run pollers inside of pollers

 commands/Kconfig               |  18 ++
 commands/miitool.c             |   4 +-
 common/Kconfig                 |   4 +
 common/Makefile                |   1 +
 common/poller.c                |  90 +++++++++-
 common/ratp/ratp.c             |   2 +-
 common/slice.c                 | 295 +++++++++++++++++++++++++++++++++
 drivers/input/gpio_keys.c      |   2 +-
 drivers/input/imx_keypad.c     |   2 +-
 drivers/input/input.c          |   2 +-
 drivers/input/qt1070.c         |   2 +-
 drivers/input/twl6030_pwrbtn.c |   2 +-
 drivers/led/core.c             |   2 +-
 drivers/net/fec_imx.c          |   1 +
 drivers/net/phy/mdio-mux.c     |   5 +-
 drivers/net/phy/mdio_bus.c     |  41 +++++
 drivers/net/phy/phy.c          |   7 +-
 drivers/net/usb/usbnet.c       |  22 ++-
 drivers/usb/core/usb.c         |   6 +
 drivers/usb/gadget/udc-core.c  |   2 +-
 drivers/watchdog/wd_core.c     |   2 +-
 fs/nfs.c                       |   2 -
 fs/tftp.c                      |   2 -
 include/linux/phy.h            |  38 ++---
 include/net.h                  |  18 +-
 include/poller.h               |   7 +-
 include/slice.h                |  31 ++++
 include/usb/usb.h              |   7 +
 include/usb/usbnet.h           |   3 +
 net/dhcp.c                     |   5 +-
 net/dns.c                      |   1 -
 net/eth.c                      |  82 +++++----
 net/ifup.c                     |  75 +++++++++
 net/net.c                      |  60 ++++++-
 net/netconsole.c               |   4 +-
 net/nfs.c                      |   1 -
 net/ping.c                     |   2 -
 net/sntp.c                     |   2 -
 38 files changed, 747 insertions(+), 105 deletions(-)
 create mode 100644 common/slice.c
 create mode 100644 include/slice.h

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
