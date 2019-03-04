Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvW-0004yk-Dk
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:17 +0100
Message-Id: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] SPD EEPROM improvements
To: Barebox List <barebox@lists.infradead.org>

This series adds the SPD EEPROM definitions for DDR4, also we get a
function to read SPD EEPROMs in the PBL, using the early i.MX I2C driver
added in another series in "[PATCH 10/10] i2c: i.MX: Add early driver for use in PBL"

Sascha

Sascha Hauer (6):
  crc: import crc_itu_t() from kernel
  crc: Add PBL variant for crc_itu_t()
  ddr_spd: Update from U-Boot
  ddr_spd: Add function to read eeprom
  ddr_spd: provide common SPD type
  ddr_spd: Enable in PBL

 arch/ppc/ddr-8xxx/ddr2_dimm_params.c |   6 +-
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c |  10 +-
 arch/ppc/include/asm/fsl_ddr_sdram.h |   4 +-
 commands/Kconfig                     |   2 +-
 common/Kconfig                       |   2 +-
 common/Makefile                      |   2 +-
 common/ddr_spd.c                     | 203 +++++++-
 common/ratp/Kconfig                  |   2 +-
 crypto/Kconfig                       |   3 +-
 crypto/Makefile                      |   2 +-
 crypto/crc-itu-t.c                   |  60 +++
 crypto/crc16.c                       | 103 ----
 drivers/mci/Kconfig                  |   2 +-
 drivers/mci/mci_spi.c                |   4 +-
 include/crc.h                        |  32 +-
 include/ddr_spd.h                    | 695 ++++++++++++++++++++-------
 lib/Kconfig                          |   4 +-
 lib/ratp.c                           |   4 +-
 lib/xymodem.c                        |   2 +-
 19 files changed, 805 insertions(+), 337 deletions(-)
 create mode 100644 crypto/crc-itu-t.c
 delete mode 100644 crypto/crc16.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
