Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHX7f-0000PA-EN
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 15:39:37 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 Nov 2017 16:38:58 +0100
Message-Id: <1511365141-21693-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH v2 0/3] provide watchdog support on ar9344 SoC
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patch set is providing watchdog driver for QCA/Atheros AR9344 WiSoC

changes v2:
- spell fixes
- remove casting from container_of
- release priv if dev_request_mem_resource filed
- provide error message if clk_get filed

Oleksij Rempel (3):
  watchdog: add ar9344-wdt driver
  MIPS: dts: ar9344: add watchdog node
  MIPS: dts: tl_wdr4300: enable watchdog node

 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts |   4 +
 arch/mips/dts/ar9344.dtsi                |   7 ++
 drivers/watchdog/Kconfig                 |   6 ++
 drivers/watchdog/Makefile                |   1 +
 drivers/watchdog/ar9344_wdt.c            | 138 +++++++++++++++++++++++++++++++
 5 files changed, 156 insertions(+)
 create mode 100644 drivers/watchdog/ar9344_wdt.c

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
