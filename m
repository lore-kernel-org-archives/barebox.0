Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWGh-0000rI-23
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:00 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:26 +0200
Message-Id: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 00/10] kwbimage improvements, Kirkwood support
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Hello,

This is a resend of yesterday patch set, rebased on top of the current
'next' branch. I have dropped the commits from Sebastian, since they
have been merged by Sascha, and I've added one commit that fixes the
SolidRun CuBox kwbimage.cfg to remove some lines that are no longer
necessary after the kwbimage improvements that are introduced by this
patch set.

Best regards,

Thomas

Thomas Petazzoni (10):
  scripts/kwbimage: add a new function image_count_options()
  scripts/kwbimage: add a few sanity checks
  scripts/kwbimage: make the v0 image creation more flexible
  scripts/kwbimage: simplify the v1 image creation
  scripts/kwbimage: make image_boot_mode_id() return -1 on failure
  scripts/kwbimage: add support for NAND ECC and page size header
    fields
  arm: mvebu: add Feroceon CPU type
  arm: mvebu: initial support for Marvell Kirkwood SoCs
  arm: mvebu: add basic support for Globalscale Guruplug board
  arm: mvebu: remove useless lines in kwbimage.cfg for CuBox

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/globalscale-guruplug/Makefile      |    2 +
 arch/arm/boards/globalscale-guruplug/config.h      |    4 +
 .../globalscale-guruplug/globalscale-guruplug.c    |   26 ++
 arch/arm/boards/globalscale-guruplug/kwbimage.cfg  |   27 ++
 arch/arm/boards/globalscale-guruplug/lowlevel.c    |   26 ++
 arch/arm/boards/solidrun-cubox/kwbimage.cfg        |    2 -
 arch/arm/configs/globalscale_guruplug_defconfig    |    6 +
 arch/arm/cpu/Kconfig                               |    8 +
 arch/arm/mach-mvebu/Kconfig                        |   19 ++
 arch/arm/mach-mvebu/Makefile                       |    1 +
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h   |   37 +++
 arch/arm/mach-mvebu/include/mach/kirkwood.h        |   22 ++
 arch/arm/mach-mvebu/kirkwood.c                     |  111 ++++++++
 scripts/kwbimage.c                                 |  279 ++++++++++++--------
 15 files changed, 453 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm/boards/globalscale-guruplug/Makefile
 create mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 create mode 100644 arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
 create mode 100644 arch/arm/boards/globalscale-guruplug/kwbimage.cfg
 create mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c
 create mode 100644 arch/arm/configs/globalscale_guruplug_defconfig
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood.h
 create mode 100644 arch/arm/mach-mvebu/kirkwood.c

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
