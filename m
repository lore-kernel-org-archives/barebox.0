Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp9.mail.ru ([94.100.176.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWjfV-0008Im-CN
 for barebox@lists.infradead.org; Sun, 06 Apr 2014 09:47:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  6 Apr 2014 13:46:38 +0400
Message-Id: <1396777600-647-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH RFC 0/2] Switch ARM i.MX27 PCM-038/PCM-970 to devicetree probe
To: barebox@lists.infradead.org

It is only RFC for now.
Known issues:
- PMIC is not detected after "reset" command.

Alexander Shiyan (2):
  ARM: dts: Add devicetree files for Phytec PCM-038/PCM-970
  ARM: PCM038: Switch to devicetree probe

 arch/arm/boards/phytec-phycore-imx27/Makefile      |   5 +-
 arch/arm/boards/phytec-phycore-imx27/env/boot/nor  |   9 +
 .../boards/phytec-phycore-imx27/env/config-board   |   7 +-
 .../phytec-phycore-imx27/env/init/mtdparts-nand    |  11 -
 .../phytec-phycore-imx27/env/init/mtdparts-nor     |  11 -
 arch/arm/boards/phytec-phycore-imx27/pcm038.c      | 358 +++------------------
 arch/arm/boards/phytec-phycore-imx27/pcm970.c      | 201 ++++--------
 arch/arm/configs/phytec-phycore-imx27_defconfig    |  62 ++--
 arch/arm/dts/Makefile                              |   3 +-
 arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts       |  64 ++++
 arch/arm/dts/imx27-phytec-phycore-rdk.dts          | 289 +++++++++++++++++
 arch/arm/dts/imx27-phytec-phycore-som.dtsi         | 333 +++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  14 +-
 13 files changed, 849 insertions(+), 518 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phycore-imx27/env/boot/nor
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-rdk.dts
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-som.dtsi

-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
