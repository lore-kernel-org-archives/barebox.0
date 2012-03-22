Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAg6x-0003By-Mc
 for barebox@lists.infradead.org; Thu, 22 Mar 2012 11:23:20 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 22 Mar 2012 12:23:11 +0100
Message-Id: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 0/2] Add support for Karo TX51 module 
To: barebox@lists.infradead.org

This patch introduces board support for the Karo TX51 i.mx51 sodimm module.

Supported features:
 - nand
 - ethernet
 - mmc0, mmc1 (on stk5v3 development board)
 - led (on stk5v3 development board)

What changed from patch V1:
 - fixed ethernet initialization
 - added mmc1 support
 - update defconfig to include commands for supported devices
 - updated env:
    - don't add 'tx51_base' parameter to kernel cmdline
    - update kernel image name to zImage_tx51, which comes with Karo BSP

What doesn't work:
 - fec mac is read in reverse byte order.

Kind regards,
Christian Kapeller


Christian Kapeller (2):
  update mx51 pad definition for Karo TX51 board
  Add board support for Karo TX51 i.mx51 SODIMM module.

 arch/arm/Makefile                           |    1 +
 arch/arm/boards/karo-tx51/Makefile          |    2 +
 arch/arm/boards/karo-tx51/config.h          |   21 ++
 arch/arm/boards/karo-tx51/env/config        |   43 ++++
 arch/arm/boards/karo-tx51/flash_header.c    |   58 ++++++
 arch/arm/boards/karo-tx51/tx51.c            |  290 +++++++++++++++++++++++++++
 arch/arm/boards/karo-tx51/tx51.dox          |   50 +++++
 arch/arm/configs/tx51stk5_defconfig         |  148 ++++++++++++++
 arch/arm/mach-imx/Kconfig                   |    8 +
 arch/arm/mach-imx/include/mach/iomux-mx51.h |   43 ++++-
 10 files changed, 659 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx51/Makefile
 create mode 100644 arch/arm/boards/karo-tx51/config.h
 create mode 100644 arch/arm/boards/karo-tx51/env/config
 create mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.dox
 create mode 100644 arch/arm/configs/tx51stk5_defconfig

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
