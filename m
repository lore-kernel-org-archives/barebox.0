Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxjtT-0005mH-KW
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 21:29:16 +0000
Received: by mail-lb0-f170.google.com with SMTP id 10so1825126lbg.1
 for <barebox@lists.infradead.org>; Thu, 19 Jun 2014 14:28:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jun 2014 01:28:36 +0400
Message-Id: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] ARM: versatile: switch to devicetree support
To: barebox@lists.infradead.org

Antony Pavlov (4):
  ARM: versatile: drop redundant <mach/gpio.h>
  i2c: versatile: add devicetree support
  ARM: versatile: switch to devicetree support
  ARM: versatilepb_defconfig: enable devicetree support

 arch/arm/boards/versatile/versatilepb.c     | 10 ------
 arch/arm/configs/versatilepb_defconfig      | 50 ++++++++++++++++-------------
 arch/arm/dts/versatile-pb.dts               | 10 ++++++
 arch/arm/mach-versatile/core.c              | 11 -------
 arch/arm/mach-versatile/include/mach/gpio.h |  1 -
 arch/arm/mach-versatile/include/mach/init.h |  2 --
 drivers/i2c/busses/i2c-versatile.c          |  7 ++++
 7 files changed, 44 insertions(+), 47 deletions(-)
 create mode 100644 arch/arm/dts/versatile-pb.dts
 delete mode 100644 arch/arm/mach-versatile/include/mach/gpio.h

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
