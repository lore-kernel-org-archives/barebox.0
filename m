Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tod3R-0003j1-SO
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 16:45:07 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C6A8DFF981E
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 17:57:42 +0100 (CET)
Date: Fri, 28 Dec 2012 17:43:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121228164327.GB7216@game.jcrosoft.org>
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
Subject: [PATCH 0/3] atmel nand/spi/udc: request gpio
To: barebox@lists.infradead.org

Hi,

	request and configure gpio via gpiolib for some of the Atmel drivers:

	 - Nand
	 - SPI
	 - at91 udc

The following changes since commit 95bc1eacae260a56c233179bc0fbd6245f2c68ed:

  qil-a9260-64: ser2net config (2012-12-28 00:33:06 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_gpio

for you to fetch changes up to 52f0cda71c7e10a8bdf4a0976c7f7dee3a4f9678:

  spi: atmel: request cs pin via gpiolib (2012-12-29 00:29:39 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      mtd: atmel_nand: request and configure pio via gpiolib
      usb: at91_udc: request and configure vbus pin via gpiolib
      spi: atmel: request cs pin via gpiolib

 drivers/mtd/nand/atmel_nand.c |   53 +++++++++++++++++++++++++++++++++++++++++++++++++++--
 drivers/spi/atmel_spi.c       |    8 ++++++++
 drivers/usb/gadget/at91_udc.c |    7 +++++++
 3 files changed, 66 insertions(+), 2 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
