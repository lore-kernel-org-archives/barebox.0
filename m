Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003ad-8D
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:22 +0200
Message-Id: <20180412072231.31207-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/9] Dialog da9063 updates
To: Barebox List <barebox@lists.infradead.org>

Here are some patches found in the Phytec git repository.

Sascha

Enrico Scholz (8):
  mfd: da9063: reset watchdog timer
  mfd: da9063: added generic reg_update() function
  mfd: da9063: use da906x_reg_update()
  mfd: da9063: add device specific init function
  mfd: da9063: added of_device_id information
  mfd: da9063: read out and report device id
  ARM: i.MX: phycore-som: added and enabled DA9062 PMIC
  ARM: i.MX: pfla02: set priority of da9063 watchdog

Stefan Christ (1):
  mfd: da9063: update Kconfig for DA9062

 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi      |   6 +
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi |  10 ++
 drivers/mfd/Kconfig                          |   2 +-
 drivers/mfd/da9063.c                         | 159 +++++++++++++++++++++++++--
 4 files changed, 165 insertions(+), 12 deletions(-)

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
