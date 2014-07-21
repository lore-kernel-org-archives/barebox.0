Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003Xz-BL
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:15 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X9FIf-00034W-9Y
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 17:14:49 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X9FIf-00079P-8E
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 17:14:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:24 +0200
Message-Id: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB Gadget updates
To: barebox@lists.infradead.org

This series is a huge rework of the USB Gadget stack. Highlights
are:

- Update the Gadget stack to Linux-3.15
- Make USB serial support non experimental
- Add Android Fastboot support
- Add Composite Multifunction Device support

Sascha

----------------------------------------------------------------
Sascha Hauer (23):
      USB: gadget: Update to 3.15
      USB: gadget: dequeue descriptor before freeing it
      USB: gadget: composite: Break out of potential endless loop
      USB: gadget: fsl_udc: Warn about freeing queued descriptors
      USB: gadget: usbserial: Always enable console
      param: Add dev_add_param_string
      USB: gadget: specify vendor/product id with device parameters
      USB: gadget: DFU: remove unused code
      USB: gadget: DFU: Use usb_assign_descriptors/usb_free_all_descriptors
      USB: gadget: DFU: Move locally used defines/structs to dfu driver
      Add function to parse a string in dfu format
      USB: gadget: DFU: Move stuff to dfu_bind
      USB: gadget: DFU: use usb_gstrings_attach
      USB: gadget: DFU: free resources when usb_gadget_poll fails
      USB: gadget: DFU: return -EINTR when interrupted
      USB: gadget: DFU: register as USB function
      USB: gadget: DFU: drop app idle state
      Add release string
      USB: gadget: Add Android fastboot support
      USB: gadget: Add a multi function gadget
      USB: gadget: fsl_udc: Be more tolerant in fsl_ep_dequeue
      Documentation: Add documentation for USB serial console
      Documentation: Add documentation for Fastboot and Composite Multifunction Gadget

 Documentation/user/usb.rst        |   55 ++
 commands/Kconfig                  |    5 +
 commands/Makefile                 |    1 +
 commands/dfu.c                    |  136 +----
 commands/usbgadget.c              |  108 ++++
 commands/usbserial.c              |   47 +-
 common/Kconfig                    |    3 +
 common/Makefile                   |    1 +
 common/file-list.c                |  113 ++++
 common/version.c                  |    4 +
 drivers/usb/core/Makefile         |    1 +
 drivers/usb/core/common.c         |   19 +
 drivers/usb/core/usb.c            |    1 +
 drivers/usb/gadget/Kconfig        |    8 +-
 drivers/usb/gadget/Makefile       |    3 +-
 drivers/usb/gadget/at91_udc.c     |  121 ++--
 drivers/usb/gadget/composite.c    | 1188 ++++++++++++++++++++++++++++++-------
 drivers/usb/gadget/config.c       |  128 +++-
 drivers/usb/gadget/dfu.c          |  437 ++++++++------
 drivers/usb/gadget/epautoconf.c   |  233 +++++---
 drivers/usb/gadget/f_acm.c        |  300 ++++++----
 drivers/usb/gadget/f_fastboot.c   |  767 ++++++++++++++++++++++++
 drivers/usb/gadget/f_serial.c     |  197 +++---
 drivers/usb/gadget/fsl_udc.c      |   77 +--
 drivers/usb/gadget/functions.c    |   99 ++++
 drivers/usb/gadget/gadget_chips.h |   60 +-
 drivers/usb/gadget/multi.c        |  248 ++++++++
 drivers/usb/gadget/pxa27x_udc.c   |   37 +-
 drivers/usb/gadget/serial.c       |  282 +++++----
 drivers/usb/gadget/u_serial.c     |  256 ++++----
 drivers/usb/gadget/u_serial.h     |   16 +-
 drivers/usb/gadget/udc-core.c     |  368 ++++++++++++
 include/common.h                  |    1 +
 include/file-list.h               |   26 +
 include/param.h                   |   13 +
 include/usb/ch9.h                 |  241 +++++++-
 include/usb/composite.h           |  234 ++++++--
 include/usb/dfu.h                 |   92 +--
 include/usb/gadget-multi.h        |   17 +
 include/usb/gadget.h              |  239 ++++++--
 include/usb/usbserial.h           |   10 +-
 lib/parameter.c                   |   76 +++
 42 files changed, 4814 insertions(+), 1454 deletions(-)
 create mode 100644 commands/usbgadget.c
 create mode 100644 common/file-list.c
 create mode 100644 drivers/usb/core/common.c
 create mode 100644 drivers/usb/gadget/f_fastboot.c
 create mode 100644 drivers/usb/gadget/functions.c
 create mode 100644 drivers/usb/gadget/multi.c
 create mode 100644 drivers/usb/gadget/udc-core.c
 create mode 100644 include/file-list.h
 create mode 100644 include/usb/gadget-multi.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
