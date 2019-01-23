Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmCtX-0000JV-0b
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 07:24:20 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 23 Jan 2019 08:24:00 +0100
Message-Id: <20190123072403.30981-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/3] ath79: enhancements
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v2 20190123:
- squash bootstrap helper patches to one patch
- rename helper macro
- Add more comments

Oleksij Rempel (3):
  MIPS: tplink-mr3020: use ar9331_pbl_generic_start
  MIPS: black-swift: use ar9331_pbl_generic_start
  MIPS: ath79: add spi and sram bootstrap helpers

 arch/mips/boards/black-swift/lowlevel.S       | 29 +------------------
 arch/mips/boards/tplink-mr3020/lowlevel.S     | 29 +------------------
 arch/mips/include/asm/asm.h                   | 20 +++++++++++++
 arch/mips/lib/Makefile                        |  1 +
 arch/mips/lib/end.S                           | 16 ++++++++++
 arch/mips/mach-ath79/Makefile                 |  3 ++
 .../mips/mach-ath79/include/mach/pbl_macros.h | 21 ++++++++++++++
 .../mach-ath79/lowlevel_ar9331_spi_trap.S     | 18 ++++++++++++
 arch/mips/mach-ath79/lowlevel_ar9331_sram.S   | 18 ++++++++++++
 images/Makefile.ath79                         |  8 +++++
 10 files changed, 107 insertions(+), 56 deletions(-)
 create mode 100644 arch/mips/lib/end.S
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_sram.S

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
