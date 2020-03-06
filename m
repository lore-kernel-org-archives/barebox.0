Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIk5-0001r2-Op
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 19:34:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Mar 2020 20:33:58 +0100
Message-Id: <20200306193406.20531-1-s.hauer@pengutronix.de>
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
Subject: Protect code from pollers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

barebox runs code in pollers. This works reasonably well when the
pollers do not touch any resources that are used by code outside the
pollers as well. Currently we also have fastboot running in a poller
and this is where things become dangerous. This series aims to provide a
way for solving resource conflicts with pollers. It is currently enough
to safely run the networking receive loop inside of pollers, but there
are more possible issues, one of them described below. There are several
more places that have to be sprinkled with:

slices, the barebox idea of locking
===================================

barebox has pollers which execute code in the background whenever one of the
delay functions (udelay, mdelay, ...) or is_timeout() are called. This
introduces resource problems when some device triggers a poller by calling
a delay function and then the poller code calls into the same device again.

As an example consider a I2C GPIO expander which drives a LED which shall
be used as a heartbeat LED:

poller -> LED on/off -> GPIO high/low -> I2C transfer

The I2C controller has a timeout loop using is_timeout() and thus can trigger
a poller run. With this the following can happen during an unrelated I2C
transfer:

I2C transfer -> is_timeout() -> poller -> LED on/off -> GPIO high/low -> I2C transfer

We end up with issuing an I2C transfer during another I2C transfer and
things go downhill.

Due to the lack of interrupts we can't do real locking in barebox. We use
a mechanism called slices instead. A slice describes a resource to which
other slices can be attached. Whenever a slice is needed it must be acquired.
Acquiring a slice never fails, it just increases the acquired counter of
the slice and its dependent slices. when a slice shall be used inside a
poller it must first be tested if the slice is already in use. If it is,
we can't do the operation on the slice now and must return and hope that
we have more luck in the next poller call.

slices can be attached other slices as dependencies. In the example above
LED driver would add a dependency to the GPIO controller and the GPIO driver
would add a dependency to the I2C bus:

GPIO driver probe:

slice_add(&gpio->slice, i2c_device_slice(i2cdev));

LED driver probe:

slice_add(&led->slice, gpio_slice(gpio));

The GPIO code would call slice_acquire(&gpio->slice) before doing any
operation on the GPIO chip providing this GPIO, likewise the I2C core
would call slice_acquire(&i2cbus->slice) before doing an operation on
this I2C bus.

The heartbeat poller code would call slice_acquired(led_slice(led)) and
only continue when the slice is not acquired.

Sascha

Sascha Hauer (8):
  Introduce slices
  net: Add a slice to struct eth_device
  net: mdiobus: Add slice
  usb: Add a slice to usb host controllers
  usbnet: Add slice
  net: Call net_poll() in a poller
  net: reply to ping requests
  usbnet: Be more friendly in the receive path

 common/Makefile            |   1 +
 common/slice.c             | 316 +++++++++++++++++++++++++++++++++++++
 drivers/net/phy/mdio_bus.c |  40 +++++
 drivers/net/phy/phy.c      |   2 +
 drivers/net/usb/usbnet.c   |  22 ++-
 drivers/usb/core/usb.c     |   6 +
 fs/nfs.c                   |   2 -
 fs/tftp.c                  |   2 -
 include/linux/phy.h        |  32 ++--
 include/net.h              |  11 +-
 include/slice.h            |  31 ++++
 include/usb/usb.h          |   7 +
 include/usb/usbnet.h       |   3 +
 net/dhcp.c                 |   1 -
 net/dns.c                  |   1 -
 net/eth.c                  |  29 +++-
 net/net.c                  |  60 ++++++-
 net/netconsole.c           |   4 +-
 net/nfs.c                  |   1 -
 net/ping.c                 |   2 -
 net/sntp.c                 |   2 -
 21 files changed, 524 insertions(+), 51 deletions(-)
 create mode 100644 common/slice.c
 create mode 100644 include/slice.h

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
