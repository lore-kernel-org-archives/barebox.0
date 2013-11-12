Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgF0i-0007ex-Pv
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 15:31:37 +0100
Message-Id: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

v2 of the firmware programming framework.

Changes since v1:

- Create a device file under /dev/ and let the firmwareload command
  use it. This way the user has a choice whether to cp directly to
  the device or to use the provided command
- Rename everything from 'fpga' to 'firmware' since the stuff is useful
  for DSPs and other devices needing firmware aswell.
- Add a SoCFPGA FPGA firmware driver as second user

Sascha

----------------------------------------------------------------
Juergen Beisert (2):
      Add a Firmware programming framework
      Firmware: provide a handler to program Altera FPGAs

Sascha Hauer (2):
      DT: Add binding for Altera FPGAs in passive-serial mode
      Firmware: socfpga: Add SoCFPGA FPGA program support

 .../bindings/firmware/altr,passive-serial.txt      |  13 +
 arch/arm/dts/socfpga_cyclone5.dtsi                 |   5 +
 arch/arm/mach-socfpga/Makefile                     |   1 +
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h  |   2 +
 commands/Kconfig                                   |   8 +
 commands/Makefile                                  |   1 +
 commands/firmwareload.c                            |  67 ++++
 common/Kconfig                                     |   3 +
 common/Makefile                                    |   1 +
 common/firmware.c                                  | 207 ++++++++++
 drivers/Kconfig                                    |   1 +
 drivers/Makefile                                   |   1 +
 drivers/firmware/Kconfig                           |  14 +
 drivers/firmware/Makefile                          |   2 +
 drivers/firmware/altera_serial.c                   | 307 +++++++++++++++
 drivers/firmware/socfpga.c                         | 437 +++++++++++++++++++++
 include/firmware.h                                 |  42 ++
 17 files changed, 1112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
 create mode 100644 commands/firmwareload.c
 create mode 100644 common/firmware.c
 create mode 100644 drivers/firmware/Kconfig
 create mode 100644 drivers/firmware/Makefile
 create mode 100644 drivers/firmware/altera_serial.c
 create mode 100644 drivers/firmware/socfpga.c
 create mode 100644 include/firmware.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
