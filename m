Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOon7-0004x3-Ak
 for barebox@lists.infradead.org; Tue, 12 Dec 2017 17:56:31 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 12 Dec 2017 18:55:52 +0100
Message-Id: <20171212175557.20067-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 0/5] add support for DPTechnics DPT-Module v1
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

changes v2:
- remove dummy board code.
- provide HAS_NO_BOARD_HL_CODE option

Oleksij Rempel (5):
  MIPS: provide HAS_NO_BOARD_HL_CODE
  MIPS: ar9331: add watchdog support
  MIPS: ath79: ar9331: add generic RAM macro
  MIPS: ath79: ar9331: add ar9331_pbl_generic_start macro
  MIPS: add support for DPTechnics DPT-Module v1

 arch/mips/Kconfig                                  |  3 +
 arch/mips/Makefile                                 |  7 +-
 .../include/board/board_pbl_start.h                | 20 +++++
 arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 ++++++++++++++++++++++
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
 arch/mips/dts/ar9331.dtsi                          |  6 ++
 arch/mips/mach-ath79/Kconfig                       |  8 ++
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  1 +
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 72 ++++++++++++++++-
 drivers/watchdog/Kconfig                           |  2 +-
 10 files changed, 234 insertions(+), 5 deletions(-)
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
 create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts

-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
