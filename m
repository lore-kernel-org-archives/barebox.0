Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3EVP-0006KB-BG
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 06:01:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id j8-v6so5475687pff.6
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2018 23:01:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Sep 2018 23:00:54 -0700
Message-Id: <20180921060102.16341-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 0/8] i.MX8MQ EVK miscellanea
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a number of i.MX8MQ or EVK related changes that are sitting in
my repo that I am hoping to upstream:

    - Pactches 1, 3, 4 are clock related fixes needed to get FEC,
      USDHC1 and USDHC2 to work.

    - Patch 2 was made while working custom i.MX8MQ board (not
      upstreamed yet) that made use of that controller

    - Patch 5 should be self-explanatory bug fix

    - Patch 6 is PHY configuration code need to use FEC on EVK

    - Patch 7 and 8 are both conveninece code to avoid having to
      specify memory size explicitly as well as a second part of a fix
      for a problem discussed in [1]

Changes since [v1]:

    - Removed redundant DT code in patch 6

Changes since [v2]:

    - Patch 7 re-written such that the code could also be re-used for
      i.MX7 (will be submitted in a separate series)

[1] http://lists.infradead.org/pipermail/barebox/2018-August/034402.html
[v1] http://lists.infradead.org/pipermail/barebox/2018-September/034742.html
[v2] http://lists.infradead.org/pipermail/barebox/2018-September/034772.html

Andrey Smirnov (8):
  clk: i.MX8MQ: Bump refcounters of various important clocks
  ARM: i.MX8MQ: Add missing node for ECSPI1
  ARM: i.MX8MQ: Configure USDHC1,2 clocks
  ARM: i.MX8MQ: Configure FEC1 clocks
  ARM: nxp-imx8mq-evk: Add missing compatibility check
  ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
  ARM: i.MX: esdctl: Add memory size detection for i.MX8MQ
  ARM: nxp-imx8mq-evk: Make use of memory size detection code

 arch/arm/boards/nxp-imx8mq-evk/board.c    |  27 ++-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c |   4 +-
 arch/arm/dts/imx8mq-ddrc.dtsi             |  17 ++
 arch/arm/dts/imx8mq-evk.dts               |   7 +-
 arch/arm/dts/imx8mq.dtsi                  |  42 +++++
 arch/arm/mach-imx/esdctl.c                | 191 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h   |   1 +
 drivers/clk/imx/clk-imx8mq.c              |  12 ++
 8 files changed, 293 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/dts/imx8mq-ddrc.dtsi

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
