Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPB-0002B5-N0
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id i26-v6so1663927pfo.12
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:22:54 -0700
Message-Id: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/11] Switch ZII boards to use MMC boot partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This patchset contains code to switch all supported ZII platforms to
use MMC boot partitions for BBU functionality as well as various
additional fixes that were developed in the process. Hopefully all of
the patches are self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (11):
  ARM: i.MX: bbu: Add support for v1 header to MMC boot handler
  ARM: i.MX51: bbu: Add a handler for MMC boot partitions
  ARM: i.MX: bbu: Check retrun value of getenv()
  ARM: i.MX: bbu: Convert devicefile to device name
  ARM: i.MX: bbu: Detect MMC before reading current boot partition
  ARM: VFxxx: bbu: Add a handler for MMC boot partitions
  dts: VFxxx: Add aliases for ESDHC controllers
  ARM: zii-vf610-dev: Switch MMC BBU to use boot partitions
  ARM: rdu2: Switch MMC BBU to use boot partitions
  ARM: rdu1: Change BBU names to match RDU2
  ARM: rdu1: Switch MMC BBU to use boot partitions

 arch/arm/boards/zii-imx51-rdu1/board.c |  4 +-
 arch/arm/boards/zii-imx6q-rdu2/board.c |  2 +-
 arch/arm/boards/zii-vf610-dev/board.c  | 12 +++---
 arch/arm/dts/vf610-twr.dts             |  1 +
 arch/arm/dts/vf610-zii-dev.dtsi        |  1 +
 arch/arm/dts/vf610.dtsi                | 12 ++++++
 arch/arm/mach-imx/imx-bbu-internal.c   | 58 ++++++++++++++++++--------
 arch/arm/mach-imx/include/mach/bbu.h   | 21 ++++++++++
 8 files changed, 86 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/dts/vf610.dtsi

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
