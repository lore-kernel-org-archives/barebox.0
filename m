Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7V-0002Aa-V6
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:10 +0000
Received: by mail-lb0-f169.google.com with SMTP id u14so3275130lbd.28
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:00 +0400
Message-Id: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/5] miitool patches
To: barebox@lists.infradead.org

This patchseries adds GbE support for miitool, makes miitool
more user-friendly (now you can run miitool without arguments
for most cases) and removes dublication of MII PHY IDs
information.

Antony Pavlov (5):
  miitool: change behaviour closer to linux' mii-tool
  miitool: add initial GbE support
  miitool: drop internal table of known MII, use phy drivers instead
  net/phy: add driver for LXT PHYs
  net/phy/phy.c: fix whitespace

 commands/miitool.c         | 188 ++++++++++++++++++++++++++-------------------
 drivers/net/phy/Kconfig    |   5 ++
 drivers/net/phy/Makefile   |   1 +
 drivers/net/phy/lxt.c      |  31 ++++++++
 drivers/net/phy/mdio_bus.c |  10 +--
 drivers/net/phy/phy.c      |   2 +-
 include/linux/phy.h        |   4 +-
 7 files changed, 148 insertions(+), 93 deletions(-)
 create mode 100644 drivers/net/phy/lxt.c

-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
