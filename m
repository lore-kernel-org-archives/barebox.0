Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQvGU-0007Mj-Th
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 09:29:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  8 Sep 2014 11:29:06 +0200
Message-Id: <1410168551-6588-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v4 0/5] firmware programming interface
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

Changes since v3:
	- minor clean up
	- add binding documentation in 5/5
	- rebase to v2014.09.0

The interface was tested on a Socfpga SoCkit board with v2014.09.0.

Regards,
Steffen


Juergen Beisert (2):
  Add a Firmware programming framework
  Firmware: provide a handler to program Altera FPGAs

Sascha Hauer (2):
  DT: Add binding for Altera FPGAs in passive-serial mode
  Firmware: socfpga: Add SoCFPGA FPGA program support

Steffen Trumtrar (1):
  DT: Add binding for Altera SOCFPGA FPGA Manager

 .../bindings/firmware/altr,passive-serial.txt      |  24 ++
 .../bindings/firmware/altr,socfpga-fpga-mgr.txt    |  19 +
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
 18 files changed, 1158 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt
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
