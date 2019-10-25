Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz84-0000Mm-El
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 12:55:46 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Fri, 25 Oct 2019 12:55:38 +0000
Message-ID: <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
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
Subject: [PATCH v2 0/4] ARM: zynqmp: add support for bitstream loading
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Changes from v1:
- remove dts commits
- add commit for pmu and trustzone firmware virsion macro
- split bin-header validation and byte-order detection
- add description for bitstream

Michael Tretter (1):
  firmware: zynqmp-fpga: print Xilinx bitstream header

Thomas Haemmerle (3):
  firmware-zynqmp: add macros for PMU and trustzone firmware versions
  firmware-zynqmp: extend driver with fpga relavant functions
  firmware: zynqmp-fpga: introduce driver to load bitstream to FPGA

 arch/arm/configs/zynqmp_defconfig                  |   1 +
 arch/arm/mach-zynqmp/firmware-zynqmp.c             |  68 +++-
 .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  14 +-
 drivers/firmware/Kconfig                           |   7 +
 drivers/firmware/Makefile                          |   1 +
 drivers/firmware/zynqmp-fpga.c                     | 410 +++++++++++++++++++++
 6 files changed, 488 insertions(+), 13 deletions(-)
 create mode 100644 drivers/firmware/zynqmp-fpga.c

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
