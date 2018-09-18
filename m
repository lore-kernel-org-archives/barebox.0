Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28m7-0000Js-36
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:42:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id d19-v6so451871pgv.1
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:42:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:41:40 -0700
Message-Id: <20180918054148.8878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/8] i.MX8MQ EVK miscellanea
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

[1] http://lists.infradead.org/pipermail/barebox/2018-August/034402.html

Andrey Smirnov (8):
  clk: i.MX8MQ: Bump refcounters of various important clocks
  ARM: i.MX8MQ: Add missing node for ECSPI1
  ARM: i.MX8MQ: Configure USDHC1,2 clocks
  ARM: i.MX8MQ: Configure FEC1 clocks
  ARM: nxp-imx8mq-evk: Add missing compatibility check
  ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
  ARM: i.MX: esdctl: Add memory size detection for i.MX8MQ
  ARM: nxp-imx8mq-evk: Make use of memory size detection code

 arch/arm/boards/nxp-imx8mq-evk/board.c    | 27 ++++++-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c |  4 +-
 arch/arm/dts/imx8mq-ddrc.dtsi             | 17 ++++
 arch/arm/dts/imx8mq-evk.dts               | 17 ++--
 arch/arm/dts/imx8mq.dtsi                  | 42 ++++++++++
 arch/arm/mach-imx/esdctl.c                | 98 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h   |  1 +
 drivers/clk/imx/clk-imx8mq.c              | 12 +++
 8 files changed, 210 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/dts/imx8mq-ddrc.dtsi

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
