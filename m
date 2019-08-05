Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZDv-00043V-CN
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:13 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:39 +0200
Message-Id: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 00/16] HAB for i.MX8MQ
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

To test, add the following lines to Makefile.imx:

FILE_barebox-nxp-imx8mq-evk-signed.img = start_nxp_imx8mq_evk.pblb.psimximg
image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) = barebox-nxp-imx8mq-evk-signed.img

v2:
- Add the -p option to imx-image and use this options to distinguish the
  different HAB insertion methods.
- Add wrappers and rework panic for PBL, allowing the same use in PBL as
  in barebox.
- Rework hab initcalls by moving the status calls under explanation and
  removing the return variable.
By Sascha Hauer

Kind Regards,
Rouven Czerwinski

Rouven Czerwinski (16):
  i.MX: HABv4: ignore return for i.MX28/6 initcalls
  i.MX: HABv4: implement interface for i.MX8MQ
  mach-imx: enable HAB on i.MX8MQ
  arm: lib: add CSF section between PBL and piggy
  esdhc-pbl: extract header parsing from image start
  esdhc-pbl: add piggy load function
  sections: fix macro for barebox_pbl_size
  scripts: imx: support signing for i.MX8MQ
  images: always build sha256sum into pbl
  pbl: add sha256 and piggy verification to PBL
  stdio: puts and putchar static inline wrappers
  pbl: support panic with log output
  arm: uncompress: verify sha256 if enabled
  mach-imx: add gencsf header for i.MX8MQ
  mach-imx: hab: select piggy verification for i.MX8
  boards: nxp-mx8-evk: rework to different boot flow

 arch/arm/boards/nxp-imx8mq-evk/Makefile                       |   4 +-
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg |   1 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c                     |  83 ++---
 arch/arm/boards/nxp-imx8mq-evk/trampoline.S                   |  11 +-
 arch/arm/cpu/uncompress.c                                     |  17 +-
 arch/arm/lib/pbl.lds.S                                        |  17 +-
 arch/arm/mach-imx/Kconfig                                     |   5 +-
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h            |  59 +++-
 arch/arm/mach-imx/include/mach/imx-header.h                   |   2 +-
 arch/arm/mach-imx/include/mach/xload.h                        |   5 +-
 arch/arm/mach-imx/xload-common.c                              |   6 +-
 crypto/Makefile                                               |   2 +-
 crypto/sha2.c                                                 |  11 +-
 drivers/hab/hab.c                                             |   2 +-
 drivers/hab/habv4.c                                           | 127 ++++++-
 drivers/mci/imx-esdhc-pbl.c                                   |  90 ++++-
 images/Makefile                                               |  22 +-
 images/Makefile.imx                                           |  11 +-
 images/sha_sum.S                                              |   7 +-
 include/asm-generic/sections.h                                |   4 +-
 include/crypto/pbl-sha.h                                      |  13 +-
 include/pbl.h                                                 |   2 +-
 include/stdio.h                                               |  17 +-
 pbl/Kconfig                                                   |   9 +-
 pbl/decomp.c                                                  |  39 ++-
 pbl/misc.c                                                    |   5 +-
 scripts/imx/imx-image.c                                       |  64 +++-
 scripts/imx/imx.c                                             |  15 +-
 28 files changed, 551 insertions(+), 99 deletions(-)
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/trampoline.S
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
 create mode 100644 images/sha_sum.S
 create mode 100644 include/crypto/pbl-sha.h

base-commit: af66ec677c40dfaed68a124d21dd59d5f8c63381
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
