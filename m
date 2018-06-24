Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT1-000687-Ql
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:45 +0000
Received: by mail-pl0-x244.google.com with SMTP id a7-v6so5865554plp.3
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:17 -0700
Message-Id: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] RAVE SP RDU2-related changes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is the series of loosely related RDU2/RAVE SP chagnes that bring
the following:

    - Remove old/stale RAVE SP entries from RDU2's DT

    - Adds EEPROM DT node to bind against recently accepted RAVE SP
      EEPROM driver

    - Introduces unified way of accessing (getting or setting) boot
      source for both RDU2 and RDU1 (support for which is coming)

    - Add backlight DT node to bind against recently accepted RAVE SP
      backlight driver

Feedback is welcome!

Thanks,
Andrey Smirnov


Andrey Smirnov (6):
  ARM: dts: rdu2: Remove obsolete 'pic' node in uart4
  ARM: dts: rdu2: Add nodes for RAVE SP EEPROM
  watchdog: rave-sp-wdt: Remove bogus leftover code
  watchdog: rave-sp-wdt: Explicitly access EEPROM for bootsource
  ARM: dts: rdu2: Specify "boot-source" NVMEM cell
  ARM: dts: rdu2: Add node for backlight device

 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 75 +++++++++------------------
 drivers/watchdog/rave-sp-wdt.c     | 82 +++++++++++++++---------------
 2 files changed, 64 insertions(+), 93 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
