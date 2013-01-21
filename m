Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNfW-0002dU-Hs
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:08:35 +0000
Date: Mon, 21 Jan 2013 21:07:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130121200712.GJ26329@game.jcrosoft.org>
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
Subject: [PATCH 0/9] atmel: add ehci support
To: barebox@lists.infradead.org

HI,

	the following patch series add the ehci support to atmel

	it also allow to discover the caps resources via cr_capbase
	so no need to hardcode it anymore

The following changes since commit 3de3b677ee3adc4e10235b623a8e0aa45be48893:

  Makefile: move cmd_check_file_size to Makefile.lib (2013-01-20 12:51:28 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/atmel_usb_ehci

for you to fetch changes up to 44aea6f57969984648a0686ce698b14e55e55752:

  at91sam9x5ek: add usb support (2013-01-17 22:45:45 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      usb: add parameters info on usb device
      usb: fix for USB_ST_STALLED status reporting in ehci_submit_async()
      ehci: if caps ressource is not provided discover it via cr_capbase
      ehci: add atmel support
      at91: usb: allow to specicfy inverted vbus
      at91sam9g45: add ehci support
      at91sam9m10g45ek: add usb support
      at91sam9x5: add ehci support
      at91sam9x5ek: add usb support

 arch/arm/boards/at91sam9m10g45ek/init.c     |   20 ++++++++++++++++++++
 arch/arm/boards/at91sam9x5ek/init.c         |   20 +++++++++++++++-----
 arch/arm/configs/at91sam9m10g45ek_defconfig |    6 ++++++
 arch/arm/configs/at91sam9x5ek_defconfig     |    6 ++++++
 arch/arm/mach-at91/at91rm9200_devices.c     |    9 +++++++++
 arch/arm/mach-at91/at91sam9260_devices.c    |    9 +++++++++
 arch/arm/mach-at91/at91sam9261_devices.c    |    9 +++++++++
 arch/arm/mach-at91/at91sam9263_devices.c    |    3 ++-
 arch/arm/mach-at91/at91sam9g45.c            |    1 +
 arch/arm/mach-at91/at91sam9g45_devices.c    |   25 ++++++++++++++++++++++++-
 arch/arm/mach-at91/at91sam9n12_devices.c    |    3 ++-
 arch/arm/mach-at91/at91sam9x5.c             |    1 +
 arch/arm/mach-at91/at91sam9x5_devices.c     |   25 ++++++++++++++++++++++++-
 arch/arm/mach-at91/include/mach/board.h     |    2 ++
 drivers/usb/core/usb.c                      |   14 ++++++++++++++
 drivers/usb/host/Kconfig                    |    5 +++++
 drivers/usb/host/Makefile                   |    1 +
 drivers/usb/host/ehci-atmel.c               |   96 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/host/ehci-hcd.c                 |   18 ++++++++++++++----
 19 files changed, 260 insertions(+), 13 deletions(-)
 create mode 100644 drivers/usb/host/ehci-atmel.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
