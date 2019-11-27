Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQC-00077a-KW
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:31 +0100
Message-Id: <20191127112337.18719-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] Layerscape ls1046ardb update
To: Barebox List <barebox@lists.infradead.org>

Some updates for the Layerscape ls1046ardb board.

Sascha Hauer (6):
  ARM Layerscape: ls1046ardb: Fix SD partitions
  ARM Layerscape: ls1046ardb: Add barebox update handler
  ARM Layerscape: ls1046ardb: Fix SPI NOR flash compatibles
  ARM Layerscape: ls1046ardb: Enable PCIe support
  ARM Layerscape: ls1046ardb: Fix EEPROM nodes
  ARM Layerscape: ls1046ardb: read nxid eeprom

 arch/arm/boards/ls1046ardb/board.c | 107 +++++++++++++++++++++++++++++
 arch/arm/dts/fsl-ls1046a-rdb.dts   |  46 ++++++++++++-
 2 files changed, 151 insertions(+), 2 deletions(-)

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
