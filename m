Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaKV-0004Av-8O
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 10:26:56 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 24 Oct 2019 10:26:50 +0000
Message-ID: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH 0/5] ARM: zynqmp: add support for bitstream loading
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Michael Tretter (2):
  ARM: zynqmp: dts: move firmware node to src tree
  firmware: zynqmp-fpga: print Xilinx bitstream header

Thomas Haemmerle (3):
  firmware-zynqmp: extend driver with fpga relavant functions
  firmware: zynqmp-fpga: introduce driver to load bitstream to FPGA
  ARM: zynqmp: dts: move pcap node to src tree

 arch/arm/configs/zynqmp_defconfig                  |   1 +
 arch/arm/dts/zynqmp-zcu104-revA.dts                |   1 -
 arch/arm/dts/zynqmp.dtsi                           |  17 -
 arch/arm/mach-zynqmp/firmware-zynqmp.c             |  47 +++
 .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  10 +
 drivers/firmware/Kconfig                           |   5 +
 drivers/firmware/Makefile                          |   1 +
 drivers/firmware/zynqmp-fpga.c                     | 366 +++++++++++++++++++++
 dts/src/arm64/xilinx/zynqmp.dtsi                   |  10 +
 9 files changed, 440 insertions(+), 18 deletions(-)
 delete mode 100644 arch/arm/dts/zynqmp.dtsi
 create mode 100644 drivers/firmware/zynqmp-fpga.c

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
