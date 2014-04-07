Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4Tk-0007Bz-B6
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 08:00:29 +0000
Received: by mail-lb0-f179.google.com with SMTP id p9so4499819lbv.10
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 01:00:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:59:55 +0400
Message-Id: <1396857600-20407-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/5] add SPI controller driver for Atheros AR7XXX/AR9XXX
 SoCs
To: barebox@lists.infradead.org

This patchseries adds the SPI controller driver for Atheros AR7XXX/AR9XXX SoCs.
The driver uses bitbang SPI driver infrastructure from linux kernel.

Changes since v1:
  * spi: ath79: fix ath79_spi_setup() return error codes

Antony Pavlov (5):
  spi: import bitbang txrx utility functions from linux
  spi: add controller driver for Atheros AR7XXX/AR9XXX SoCs
  MIPS: ar9331.dtsi: add SPI master
  MIPS: tplink-mr3020.dts: add S25FL032PIF SPI flash chip
  MIPS: tplink-mr3020_defconfig: add SPI support

 arch/mips/configs/tplink-mr3020_defconfig |   7 +-
 arch/mips/dts/ar9331.dtsi                 |   6 +
 arch/mips/dts/tplink-mr3020.dts           |  20 ++
 drivers/spi/Kconfig                       |   4 +
 drivers/spi/Makefile                      |   1 +
 drivers/spi/ath79_spi.c                   | 299 ++++++++++++++++++++++++++++++
 drivers/spi/spi-bitbang-txrx.h            |  95 ++++++++++
 7 files changed, 431 insertions(+), 1 deletion(-)
 create mode 100644 drivers/spi/ath79_spi.c
 create mode 100644 drivers/spi/spi-bitbang-txrx.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
