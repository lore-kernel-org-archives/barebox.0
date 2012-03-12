Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S72y9-0006SR-R1
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 10:59:15 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 07821DC6A63
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:02:24 +0100 (CET)
Date: Mon, 12 Mar 2012 11:47:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120312104736.GC444@game.jcrosoft.org>
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
Subject: [PATCH 00/14] Atmel ref board update
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

Hi,

	The following patch sereis update the Atmel reference board support
	with

	 - MMU Support
	 - USB Device
	 - DFU
	 - USB Gadget Serial
	 - GPIO Keyboard
	 - LEDS
	 - of boot

please pull
The following changes since commit e0d674735b26c279d4cb6c73c140f1e0866a7953:

  mach-omap: add HAS_DEBUG_LL (2012-03-05 18:13:00 +0100)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git at91-update

Jean-Christophe PLAGNIOL-VILLARD (14):
      macb: fix mmu support
      at91sam9263ek: add runtime nor detection
      at91sam9263ek: add leds support
      at91sam9263ek: add dfu and usb serial support
      at91sam9263ek: update defconfig
      at91sam9261ek/9g10ek: update partition layout
      at91sam9261ek/9g10ek: add leds support
      at91sam9261ek/9g10ek: add dfu and usb serial support
      at91sam9261ek/9g10ek: add gpio Keyboard support
      at91sam9261ek/9g10ek: update board supprt
      at91sam9m10g45ek: update partition layout
      at91sam9m10g45ek: add leds support
      at91sam9m10g45ek: update defconfig
      at91sam9260ek/9g20ek: update defconfig

 arch/arm/boards/at91sam9261ek/env/bin/init_board |   51 ++++++++++
 arch/arm/boards/at91sam9261ek/env/config         |    7 +-
 arch/arm/boards/at91sam9261ek/init.c             |  111 +++++++++++++++++++++-
 arch/arm/boards/at91sam9263ek/env/bin/init_board |   51 ++++++++++
 arch/arm/boards/at91sam9263ek/env/config         |    6 +-
 arch/arm/boards/at91sam9263ek/init.c             |   83 ++++++++++++++--
 arch/arm/boards/at91sam9m10g45ek/env/config      |    4 +-
 arch/arm/boards/at91sam9m10g45ek/init.c          |   46 +++++++++-
 arch/arm/configs/at91sam9260ek_defconfig         |    3 +-
 arch/arm/configs/at91sam9261ek_defconfig         |   29 +++++-
 arch/arm/configs/at91sam9263ek_defconfig         |   31 +++++-
 arch/arm/configs/at91sam9g10ek_defconfig         |   39 +++++++-
 arch/arm/configs/at91sam9g20ek_defconfig         |    3 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig      |   32 +++++--
 drivers/net/macb.c                               |    8 +-
 15 files changed, 453 insertions(+), 51 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/init_board
 create mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init_board

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
