Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg01L-0005Lw-0l
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 04:59:00 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 06:58:41 +0200
Message-Id: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH 00/13] HAB for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This patch series adds HAB support for i.MX8MQ.
This was tested on the NXP i.MX8MQ EVK. Other i.MX8MQ boards should
still be supported but will require a lowlevel.c rework similar to this
done for the i.MX8MQ.

The first part adds the necessary HAB interfaces for i.MX8MQ. Than the
ability to read and copy the piggydata to the correct location in DRAM
is added. Next imx-image is adjusted to support signing of the i.MX8MQ
images. The fourth part is the addition of sha256 to the PBL. This is
necessary since only the PBL is authenticated using HAB, the main
barebox binary is than authenticated to a sha256sum built into the PBL.
Finally the EVK board files are adjusted to the changes.

Kind Regards,
Rouven Czerwinski

Rouven Czerwinski (13):
  hab: implement interface for i.MX8MQ
  mach-imx: enable HAB on i.MX8MQ
  arm: lib: add CSF section between PBL and piggy
  esdhc-pbl: extract header parsing from image start
  esdhc-pbl: add piggy load function
  sections: fix macro for barebox_pbl_size
  scripts: imx: support signing for i.MX8MQ
  images: always build sha256sum into pbl
  pbl: add sha256 and piggy verification to PBL
  arm: uncompress: verify sha256 if enabled
  mach-imx: add gencsf header for i.MX8MQ
  mach-imx: hab: select piggy verification for i.MX8
  boards: nxp-mx8-evk: rework to different boot flow

 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg |   1 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c                     |  78 ++---
 arch/arm/cpu/uncompress.c                                     |  18 +-
 arch/arm/lib/pbl.lds.S                                        |  17 +-
 arch/arm/mach-imx/Kconfig                                     |   5 +-
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h            |  59 ++++-
 arch/arm/mach-imx/include/mach/imx-header.h                   |   2 +-
 arch/arm/mach-imx/include/mach/xload.h                        |   5 +-
 arch/arm/mach-imx/xload-common.c                              |   6 +-
 crypto/Makefile                                               |   2 +-
 crypto/sha2.c                                                 |  11 +-
 drivers/hab/hab.c                                             |   2 +-
 drivers/hab/habv4.c                                           | 112 +++++++-
 drivers/mci/imx-esdhc-pbl.c                                   |  90 +++++-
 images/Makefile                                               |  22 +-
 images/sha_sum.S                                              |   6 +-
 include/asm-generic/sections.h                                |   4 +-
 include/crypto/pbl-sha.h                                      |  12 +-
 include/pbl.h                                                 |   2 +-
 pbl/Kconfig                                                   |   9 +-
 pbl/decomp.c                                                  |  40 +++-
 scripts/Makefile.lib                                          |   3 +-
 scripts/imx/imx-image.c                                       |  68 +++-
 scripts/imx/imx.c                                             |  15 +-
 24 files changed, 511 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
 create mode 100644 images/sha_sum.S
 create mode 100644 include/crypto/pbl-sha.h

base-commit: a34fd3272a88101483f74a608b07db4312a64015
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
