Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPXOG-0007S3-VC
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 13:47:57 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  4 Sep 2014 15:47:13 +0200
Message-Id: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 0/4] firmware programming interface
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

Changes since v2:

- don't forget to call the close hook
- change compatible to make it clear that passive-serial means a fpga programming mode
- minor cleanup

The interface was tested on a Socfpga SoCkit board with v2014.08.0.

Regards,
Steffen

Juergen Beisert (2):
  Add a Firmware programming framework
  Firmware: provide a handler to program Altera FPGAs

Sascha Hauer (2):
  DT: Add binding for Altera FPGAs in passive-serial mode
  Firmware: socfpga: Add SoCFPGA FPGA program support

 .../bindings/firmware/altr,passive-serial.txt      |  13 +
 arch/arm/dts/socfpga.dtsi                          |   6 +
 arch/arm/mach-socfpga/Makefile                     |   1 +
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h  |   2 +
 commands/Kconfig                                   |   9 +
 commands/Makefile                                  |   1 +
 commands/firmwareload.c                            |  66 ++++
 common/Kconfig                                     |   3 +
 common/Makefile                                    |   1 +
 common/firmware.c                                  | 211 ++++++++++
 drivers/Kconfig                                    |   1 +
 drivers/Makefile                                   |   1 +
 drivers/firmware/Kconfig                           |  14 +
 drivers/firmware/Makefile                          |   2 +
 drivers/firmware/altera_serial.c                   | 315 +++++++++++++++
 drivers/firmware/socfpga.c                         | 440 +++++++++++++++++++++
 include/firmware.h                                 |  42 ++
 17 files changed, 1128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
 create mode 100644 commands/firmwareload.c
 create mode 100644 common/firmware.c
 create mode 100644 drivers/firmware/Kconfig
 create mode 100644 drivers/firmware/Makefile
 create mode 100644 drivers/firmware/altera_serial.c
 create mode 100644 drivers/firmware/socfpga.c
 create mode 100644 include/firmware.h

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
