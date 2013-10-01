Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22a.google.com ([2a00:1450:4013:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VR7by-0006nT-JI
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 21:36:08 +0000
Received: by mail-ea0-f170.google.com with SMTP id h14so3709253eak.15
 for <barebox@lists.infradead.org>; Tue, 01 Oct 2013 14:35:44 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  1 Oct 2013 23:35:18 +0200
Message-Id: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 0/4] Add support for Voipac X53-DMM-668 module
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

This patchset adds support for Voipac X53-DMM-668 module equipped
with i.mx53 CPU. More info about the module may be found at:
http://www.voipac.com/#X53-DMM-668

The board specific code enables UART0, NAND flash, Ethernet.
The flash_header.c containing DCD configuration data is almost
the same (except for one line) as the one in freescale-mx53-smd.


Rostislav Lisovy (4):
  i.mx53: voipac: Change machine type identifier
  i.mx53: voipac: Add board specific + flash header constructing code
  i.mx53: voipac: Add barebox environment configuration file
  i.mx53: voipac: Modify Make- and config-files to enable building of
    mx53-voipac

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/freescale-mx53-voipac/Makefile     |    3 +
 arch/arm/boards/freescale-mx53-voipac/board.c      |  168 ++++++++++++++++++++
 arch/arm/boards/freescale-mx53-voipac/env/config   |   46 ++++++
 .../boards/freescale-mx53-voipac/flash_header.c    |  102 ++++++++++++
 arch/arm/boards/freescale-mx53-voipac/lowlevel.c   |    9 ++
 arch/arm/mach-imx/Kconfig                          |   10 ++
 arch/arm/tools/mach-types                          |    2 +-
 8 files changed, 340 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/lowlevel.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
