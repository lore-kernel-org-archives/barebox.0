Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTfO0-0007fY-RQ
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 22:04:13 +0000
Received: by mail-ea0-f175.google.com with SMTP id m14so4243289eaj.6
 for <barebox@lists.infradead.org>; Tue, 08 Oct 2013 15:03:49 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed,  9 Oct 2013 00:03:35 +0200
Message-Id: <1381269816-12830-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH v2] Add support for Voipac X53-DMM-668 module
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

This patchset adds support for Voipac X53-DMM-668 module equipped
with i.mx53 CPU. More info about the module may be found at:
http://www.voipac.com/#X53-DMM-668

The board specific code enables UART0, NAND flash, Ethernet.

Changes since v1:
  Use gpio_request()
  Use already defined VMX53 MACH_TYPE
  A bit of code refactoring

Rostislav Lisovy (1):
  i.MX53: vmx53: Add support for Voipac X53-DMM-668 (aka vmx53) module

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/freescale-mx53-vmx53/Makefile      |    3 +
 arch/arm/boards/freescale-mx53-vmx53/board.c       |  183 ++++++++++++++++++++
 arch/arm/boards/freescale-mx53-vmx53/env/config    |   46 +++++
 .../arm/boards/freescale-mx53-vmx53/flash_header.c |  103 +++++++++++
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |    9 +
 arch/arm/mach-imx/Kconfig                          |    9 +
 7 files changed, 354 insertions(+)
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
