Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegmG-0000bv-7O
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 08:19:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Wegls-0007K1-9P
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 10:18:40 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1Weglu-0005jc-KB
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 10:18:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 10:18:39 +0200
Message-Id: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] initial regulator support
To: barebox@lists.infradead.org

This adds simple regulator support. For now this adds a bare minimum of
regulator support: regulators can only be enabled and disabled, no voltage
setting is supported. The only way to associate a device with a regulator
is via devicetree, so platform devices currently cannot use this API.

As a first user The MMC layer gets regulator support, so that the common
case of a gpio enabling a MMC slot is covered.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      Add initial regulator support
      mci: Add regulator support

 commands/Kconfig           |   8 ++
 commands/Makefile          |   1 +
 commands/regulator.c       |  33 ++++++
 drivers/Kconfig            |   1 +
 drivers/Makefile           |   1 +
 drivers/mci/mci-core.c     |  18 +++-
 drivers/regulator/Kconfig  |  13 +++
 drivers/regulator/Makefile |   2 +
 drivers/regulator/core.c   | 262 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/regulator/fixed.c  | 103 ++++++++++++++++++
 include/mci.h              |   2 +
 include/regulator.h        |  47 ++++++++
 12 files changed, 489 insertions(+), 2 deletions(-)
 create mode 100644 commands/regulator.c
 create mode 100644 drivers/regulator/Kconfig
 create mode 100644 drivers/regulator/Makefile
 create mode 100644 drivers/regulator/core.c
 create mode 100644 drivers/regulator/fixed.c
 create mode 100644 include/regulator.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
