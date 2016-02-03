Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0AV-0004IB-LE
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:20:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aR0A8-0004eA-ON
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 17:20:12 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aR0A8-0006RQ-Id
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 17:20:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:20:07 +0100
Message-Id: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add regmap support
To: Barebox List <barebox@lists.infradead.org>

This series adds simple regmap support. It's overdue to have regmap
support in barebox since regmap can make register accesses far more
generic and convenient. More and more kernel code depends on it, so
here it is for barebox. Two drivers are switched over to regmap to
provide some users.

----------------------------------------------------------------
Sascha Hauer (3):
      Add initial regmap support
      mfd: mc13xxx: Switch to regmap support
      ARM: i.MX ocotp: Switch to regmap support

Steffen Trumtrar (1):
      bitops: Fix shift overflow in GENMASK macros

 arch/arm/mach-imx/ocotp.c      | 146 ++++++---------
 drivers/base/Makefile          |   1 +
 drivers/base/regmap/Makefile   |   1 +
 drivers/base/regmap/internal.h |  18 ++
 drivers/base/regmap/regmap.c   | 398 +++++++++++++++++++++++++++++++++++++++++
 drivers/mfd/mc13xxx.c          | 123 ++++++-------
 include/linux/bitops.h         |   7 +-
 include/regmap.h               |  62 +++++++
 8 files changed, 594 insertions(+), 162 deletions(-)
 create mode 100644 drivers/base/regmap/Makefile
 create mode 100644 drivers/base/regmap/internal.h
 create mode 100644 drivers/base/regmap/regmap.c
 create mode 100644 include/regmap.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
