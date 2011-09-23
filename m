Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R6zhr-0003DZ-Np
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 06:57:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 08:57:43 +0200
Message-Id: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: USB mass storage support
To: barebox@lists.infradead.org

Hi,

The following adds USB mass storage support to barebox. The patches
are from Rosen Kolev, I am just sending these patches for him because
git send-email does not work for him (yet).

Sascha

Rosen Kolev (3):
      Modified timeout in the ehci-hcd USB host driver.
      Extended USB device matching.
      USB mass storage device driver initial implementation

 drivers/usb/Kconfig             |    2 +
 drivers/usb/Makefile            |    1 +
 drivers/usb/core/usb.c          |   34 +++
 drivers/usb/host/ehci-hcd.c     |    5 +-
 drivers/usb/storage/Kconfig     |    2 +
 drivers/usb/storage/Makefile    |    4 +
 drivers/usb/storage/transport.c |  251 ++++++++++++++++
 drivers/usb/storage/transport.h |   95 ++++++
 drivers/usb/storage/usb.c       |  619 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/storage/usb.h       |   96 ++++++
 include/scsi.h                  |  208 +++++++++++++
 include/usb/usb.h               |   22 ++
 12 files changed, 1337 insertions(+), 2 deletions(-)
 create mode 100644 drivers/usb/storage/Kconfig
 create mode 100644 drivers/usb/storage/Makefile
 create mode 100644 drivers/usb/storage/transport.c
 create mode 100644 drivers/usb/storage/transport.h
 create mode 100644 drivers/usb/storage/usb.c
 create mode 100644 drivers/usb/storage/usb.h
 create mode 100644 include/scsi.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
