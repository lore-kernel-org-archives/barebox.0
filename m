Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPZK-0007Oz-Cq
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:01:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:01:25 +0100
Message-Id: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 0/5] Enable a console over a serial USB gadget
To: barebox@lists.infradead.org

This patchset aims at providing a working console over a USB port.
It includes:
 - a driver for PXA27x SoC UDC device
 - various fixes in the serial gadgets
 - a small evolution in the generic console to sustain a console unregistering
  (as when a USB cable is severed)

This serie was obviously tested on a XScale PX27x chip.

Cheers.

--
Robert

Robert Jarzmik (5):
  console: add console unregistering
  usb/gadget: add pxa27x_udc driver
  usb/gadget: use generic usb_gadget_poll() in u_serial
  usb/gadget: add USB serial connect and disconnect
  usb/gadget: make serial gadget resistant to cable unplug

 arch/arm/mach-pxa/include/mach/udc_pxa2xx.h |   26 +
 common/console.c                            |   24 +-
 common/console_simple.c                     |    4 +
 drivers/usb/gadget/Kconfig                  |    7 +
 drivers/usb/gadget/Makefile                 |    1 +
 drivers/usb/gadget/f_serial.c               |    5 +-
 drivers/usb/gadget/pxa27x_udc.c             | 1524 +++++++++++++++++++++++++++
 drivers/usb/gadget/pxa27x_udc.h             |  393 +++++++
 drivers/usb/gadget/u_serial.c               |   27 +-
 include/console.h                           |    1 +
 10 files changed, 1997 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
 create mode 100644 drivers/usb/gadget/pxa27x_udc.c
 create mode 100644 drivers/usb/gadget/pxa27x_udc.h

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
