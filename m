Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jveNC-0004y7-Vi
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 10:10:47 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 15 Jul 2020 12:10:39 +0200
Message-Id: <20200715101042.29944-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/3] introduce board-driver support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

changes v2:
- move root device registration to the of_probe()
- port one board as example
- fix issue with devinfo

Oleksij Rempel (3):
  of: base: register DT root as device
  ARM: embest-riotboard: port board file to the driver model
  devinfo: do not dump the device node for the root node

 arch/arm/boards/embest-riotboard/board.c | 18 +++++++++++++-----
 commands/devinfo.c                       |  2 +-
 drivers/of/base.c                        |  5 +++++
 3 files changed, 19 insertions(+), 6 deletions(-)

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
