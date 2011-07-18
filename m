Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QinZd-0005wx-3u
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:09:29 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 29C3CFF9884
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:09:50 +0200 (CEST)
Date: Mon, 18 Jul 2011 14:52:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110718125241.GA5247@game.jcrosoft.org>
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
Subject: [PULL] Add multi resource support
To: barebox@lists.infradead.org

Hi,

	you will found here the support of the multiple resource support
	and the start of the switch to it

	done fully on at91 and nomadik

The following changes since commit f4f952faa4047bfeb80ba6b960d331724807d52a:

  serial_ns16550: remove legacy code copied from U-Boot v1 (2011-07-17 17:42:21 +0200)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git resource

Jean-Christophe PLAGNIOL-VILLARD (10):
      device: introduce resource structure to simplify resource declaration
      at91: switch to all resource declaration to "struct resource"
      at91/serial: switch to "struct resource"
      macb: switch to "struct resource"
      atmel_mci: switch to "struct resource"
      atmel_nand: switch to "struct resource"
      dm9200: use "struct resource" instead of platform_data
      nomadik: switch to all resource declaration to "struct resource"
      nomadik_nand: use "struct resource" instead of platform_data
      amba-pl011: switch to "struct resource"

 arch/arm/boards/at91rm9200ek/init.c       |    9 ++-
 arch/arm/boards/at91sam9261ek/init.c      |   17 +++-
 arch/arm/boards/at91sam9263ek/init.c      |   11 ++-
 arch/arm/boards/mini2440/mini2440.c       |   17 +++-
 arch/arm/boards/mmccpu/init.c             |   10 ++-
 arch/arm/boards/nhk8815/setup.c           |   29 ++++++-
 arch/arm/boards/pm9261/init.c             |   17 +++-
 arch/arm/boards/pm9263/init.c             |   11 ++-
 arch/arm/boards/scb9328/scb9328.c         |   23 ++++--
 arch/arm/mach-at91/at91rm9200_devices.c   |   88 +++++++++++++++++----
 arch/arm/mach-at91/at91sam9260_devices.c  |  121 +++++++++++++++++++++++-----
 arch/arm/mach-at91/at91sam9261_devices.c  |   77 +++++++++++++++----
 arch/arm/mach-at91/at91sam9263_devices.c  |  101 +++++++++++++++++++-----
 arch/arm/mach-at91/at91sam9g45_devices.c  |  110 +++++++++++++++++++++-----
 arch/arm/mach-nomadik/8815.c              |   33 +++++++--
 arch/arm/mach-nomadik/include/mach/nand.h |    3 -
 drivers/mci/atmel_mci.c                   |    2 +-
 drivers/mtd/nand/atmel_nand.c             |    2 +-
 drivers/mtd/nand/nomadik_nand.c           |    8 +-
 drivers/net/dm9000.c                      |   10 ++-
 drivers/net/macb.c                        |    4 +-
 drivers/serial/amba-pl011.c               |   28 ++++---
 drivers/serial/atmel.c                    |   27 ++++---
 include/dm9000.h                          |    2 -
 include/driver.h                          |    4 +
 include/linux/ioport.h                    |  115 +++++++++++++++++++++++++++
 lib/driver.c                              |   19 +++++
 27 files changed, 729 insertions(+), 169 deletions(-)
 create mode 100644 include/linux/ioport.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
