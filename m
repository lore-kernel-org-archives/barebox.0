Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfW0b-0005fG-UW
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:56:46 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UfW0A-0003T3-Ni
 for barebox@lists.infradead.org; Thu, 23 May 2013 15:56:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UfW09-0006QB-Ks
 for barebox@lists.infradead.org; Thu, 23 May 2013 15:56:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2013 15:56:14 +0200
Message-Id: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] MCI: support boot partitions
To: barebox@lists.infradead.org

(newer?) eMMCs have some areas intended for bootloaders. This series
adds support for them. i.MX SoCs support booting from these areas which
is quite convenient since we no longer have to take care about the
regular partition table.

Also this series adds a new device parameter convenience helper for enums.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      param: Add info function
      param: Add helpers to provide an enum parameter
      mci: Add support for MMC boot partitions

 drivers/base/driver.c  |   8 ++-
 drivers/mci/Kconfig    |   3 +
 drivers/mci/mci-core.c | 192 ++++++++++++++++++++++++++++++++++++++-----------
 include/mci.h          |  31 +++++++-
 include/param.h        |  15 ++++
 lib/parameter.c        | 104 +++++++++++++++++++++++++++
 6 files changed, 308 insertions(+), 45 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
