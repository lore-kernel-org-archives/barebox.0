Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra7HZ-0001bM-D6
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 14:55:09 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 765A6DC6875
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 15:45:00 +0100 (CET)
Date: Mon, 12 Dec 2011 15:40:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111212144029.GU23884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] At91 fix + usb udc support
To: barebox@lists.infradead.org

HI,

	this patch series fix the mci supot on 9263 and add the USB device
	drivers UDC present on rm9200/9260/9g20/9261/9g10/9263

The following changes since commit eae6d3beb787a7b0f8576a5e5e1441cce3f96fa2:

  drivers/mci: add PXA host controller (2011-12-08 10:22:58 +0100)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git at91

Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9263: fix mci clock
      at91: add udc usb device controller support
      at91: add at91_udc resource
      usb-a926x: add usb device support

 arch/arm/boards/usb-a926x/init.c         |   17 +
 arch/arm/mach-at91/at91rm9200_devices.c  |   21 +
 arch/arm/mach-at91/at91sam9260_devices.c |   19 +
 arch/arm/mach-at91/at91sam9261_devices.c |   19 +
 arch/arm/mach-at91/at91sam9263.c         |    4 +-
 arch/arm/mach-at91/at91sam9263_devices.c |   19 +
 arch/arm/mach-at91/include/mach/board.h  |   10 +
 drivers/usb/gadget/Kconfig               |    7 +
 drivers/usb/gadget/Makefile              |    1 +
 drivers/usb/gadget/at91_udc.c            | 1513 ++++++++++++++++++++++++++++++
 drivers/usb/gadget/at91_udc.h            |  167 ++++
 11 files changed, 1795 insertions(+), 2 deletions(-)
 create mode 100644 drivers/usb/gadget/at91_udc.c
 create mode 100644 drivers/usb/gadget/at91_udc.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
