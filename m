Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoRg-0002IO-MS
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 10:01:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0003Tw-BC
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0001xb-1C
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 17 Jun 2019 12:00:52 +0200
Message-Id: <20190617100056.25331-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 0/4] Overall small fixes 
To: barebox@lists.infradead.org

Hi,

this series evolved during debugging and updating a customer barebox
and covers different targets.

Regads,
  Marco

Marco Felsch (4):
  ARM: phytec-som-imx6: update automount net entries
  defaultenv-2: net: fix comment
  commands: mmc_extcsd: fix extcsd value meanings
  i2c: gpio: add sda/scl-gpios property support

 .../init/automount                            | 11 ++++++--
 commands/mmc_extcsd.c                         |  8 +++---
 defaultenv/defaultenv-2-base/init/automount   |  2 +-
 drivers/i2c/busses/i2c-gpio.c                 | 27 ++++++++++++-------
 4 files changed, 31 insertions(+), 17 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
