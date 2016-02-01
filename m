Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ4tQ-0007cn-8T
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 03:11:09 +0000
Received: by mail-pa0-x243.google.com with SMTP id pv5so6573266pac.0
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 19:10:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 19:10:05 -0800
Message-Id: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/8] Bitbang MDIO, miitool changes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

Here's the second verion of the MDIO-related patchset I recently sent:

http://lists.infradead.org/pipermail/barebox/2016-January/025936.html

The only change in v2 is that patch implementing mdio_write/mdio_read
commands has been dropped and instead a different patch augmenting
'miitool' with PHY registration capabilties was introduced.

Andrey Gusakov (2):
  include/linux/phy.h: Add MII_ADDR_C45
  net: Port bitbanged MDIO code from Linux kernel

Andrey Smirnov (6):
  miitool: Fix PHY argument handling
  mdio_bus: Change dev_info to dev_dbg
  mdio_bus: Add mdiobus_get_bus() function
  miitool: Don't print negative parent IDs
  mdio_bus: Change PHY's naming scheme
  miitool: Add code to register a PHY

 commands/miitool.c             | 117 ++++++++++++++++-----
 drivers/net/phy/Kconfig        |  15 +++
 drivers/net/phy/Makefile       |   2 +
 drivers/net/phy/mdio-bitbang.c | 228 ++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/mdio-gpio.c    | 231 +++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/mdio_bus.c     |  25 ++++-
 drivers/net/phy/phy.c          |   9 +-
 include/linux/mdio-bitbang.h   |  45 ++++++++
 include/linux/phy.h            |   7 ++
 9 files changed, 647 insertions(+), 32 deletions(-)
 create mode 100644 drivers/net/phy/mdio-bitbang.c
 create mode 100644 drivers/net/phy/mdio-gpio.c
 create mode 100644 include/linux/mdio-bitbang.h

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
