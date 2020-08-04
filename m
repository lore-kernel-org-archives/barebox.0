Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k34hY-0002eJ-N4
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 21:42:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id x9so45338962ljc.5
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2020 14:42:28 -0700 (PDT)
From: Anees Rehman <anees.r3hman@gmail.com>
Date: Tue,  4 Aug 2020 23:41:56 +0200
Message-Id: <20200804214158.25721-1-anees.r3hman@gmail.com>
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
Subject: [PATCH v2 0/2] ARM: i.MX: Add support for IMX7 based board
To: barebox@lists.infradead.org
Cc: Anees Rehman <anees.r3hman@gmail.com>

The first patch adds support for the IMX7 to load image from SD/MMC similar to
IMX6 and IMX8.

The second patch adds support for Atlas Copco's IXB tool which comes with
IMX7D, 1GB lpddr2 and has most of the interfaces supported by the SoC.
This patch also shows booting IMX7 without a static DCD file which allows
to have a single barebox image on multiple revisions of the same board
(different memory chips).

The _no_ DCD file part is an adaptation for ac-sxb from zii-imx6q-rdu2.

Changes since v1:
Changes according to Ahmad's review, thank you very much Ahmad!
* Add barebox update handler in device initcall
* Introduce compressed dtb
* Remove explicit initialization of return value
* Use imx7d-ddrc.dtsi instead of hardcoded memory node
* Move imx7d-ac-sxb.dts to arch/arm/dts directory

Anees Rehman (2):
  mci: imx-esdhc-pbl: Add support for IMX7
  ARM: i.MX: Add atlascopco sxb board

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ac-sxb/Makefile               |   2 +
 arch/arm/boards/ac-sxb/board.c                |  20 +++
 .../ac-sxb/flash-header-mx7d-lpddr2.imxcfg    |  10 ++
 arch/arm/boards/ac-sxb/lowlevel.c             | 131 ++++++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/ac-sxb.dts                       |  88 ++++++++++++
 arch/arm/dts/imx7d-ac-sxb.dtsi                | 121 ++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   6 +
 arch/arm/mach-imx/include/mach/xload.h        |   1 +
 drivers/mci/imx-esdhc-pbl.c                   |  37 +++++
 images/Makefile.imx                           |   5 +
 12 files changed, 423 insertions(+)
 create mode 100644 arch/arm/boards/ac-sxb/Makefile
 create mode 100644 arch/arm/boards/ac-sxb/board.c
 create mode 100644 arch/arm/boards/ac-sxb/flash-header-mx7d-lpddr2.imxcfg
 create mode 100644 arch/arm/boards/ac-sxb/lowlevel.c
 create mode 100644 arch/arm/dts/ac-sxb.dts
 create mode 100644 arch/arm/dts/imx7d-ac-sxb.dtsi

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
