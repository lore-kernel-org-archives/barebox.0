Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gos6n-0003Jh-27
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 15:49:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gos6f-0004KV-RI
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 16:48:53 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Jan 2019 16:48:47 +0100
Message-Id: <20190130154853.31574-1-l.stach@pengutronix.de>
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
Subject: [PATCH 0/6] i.MX8M firmware handling rework
To: barebox@lists.infradead.org

This is a rework of the i.MX8M firmware handling to make it easier to
integrate with external build systems.

For a simple compile test there is no need to have the real firmware
files available, but some dummy files will do:

for f in imx8mq-bl31.bin signed_dp_imx8m.bin signed_hdmi_imx8m.bin \
         lpddr4_pmu_train_1d_dmem.bin lpddr4_pmu_train_1d_imem.bin \ 
         lpddr4_pmu_train_2d_dmem.bin lpddr4_pmu_train_2d_imem.bin; \
   do \
      echo 1 > firmware/${f}; \
   done

Lucas Stach (6):
  Documentation: imx8mq-evk: point to current version of the firmware
  Documentation: imx8mq-evk: add instructions for HDMITX firmware
  firmware: imx: remove prebuilt ATF binary
  firmware: add a note about license implications
  firmware: drop the imx subdir
  ARM: nxp-imx8mq-evk: include the HDMI firmware in the image

 Documentation/boards/imx/nxp-imx8mq-evk.rst   |  24 +++++++++++++-----
 arch/arm/boards/nxp-imx8mq-evk/ddr.h          |   8 +++---
 .../flash-header-imx8mq-evk.imxcfg            |   1 +
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |   2 +-
 firmware/Makefile                             |  10 ++++----
 firmware/README                               |   7 +++++
 firmware/imx/imx8m-bl31.bin                   | Bin 46744 -> 0 bytes
 7 files changed, 35 insertions(+), 17 deletions(-)
 create mode 100644 firmware/README
 delete mode 100755 firmware/imx/imx8m-bl31.bin

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
