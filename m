Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7kqX-0004g4-Nh
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 10:22:34 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 289A0DC7002
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 12:27:46 +0200 (CEST)
Date: Sat, 1 Sep 2012 12:22:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901102248.GJ18708@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] AMBA Bus support
To: barebox@lists.infradead.org

Hi,

	this first patch series add the AMBA Bus support and is a preperation
	for the adding of the ST-E ux500 support

please pull
The following changes since commit 44e196a22ea87b1b08b25547a0b99fc795fecdf6:

  Merge branch 'for-next/ppc' into next (2012-08-13 21:39:34 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git tags/amba_bus

for you to fetch changes up to f2dc82e31bdaf1baa3191940ce1f7789270c8d14:

  amba-pl011: add st specific init (2012-09-01 16:56:36 +0800)

----------------------------------------------------------------
arm: Introduce ARM AMBA bus

This allow to detect the amba device and use the right driver for it at
runtime.

With pl011 amba support (ARM & ST Variant)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      Introduce ARM AMBA bus
      amba-pl011: switch to amba bus
      amba-pl011: add st specific init

 arch/arm/mach-nomadik/8815.c   |    9 +++--
 arch/arm/mach-versatile/core.c |    7 +++-
 drivers/Makefile               |    1 +
 drivers/amba/Makefile          |    2 +
 drivers/amba/bus.c             |  212 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/serial/amba-pl011.c    |   74 +++++++++++++++++++++++++++++------
 include/linux/amba/bus.h       |  157 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/amba/serial.h    |   29 ++++++++++++++
 8 files changed, 473 insertions(+), 18 deletions(-)
 create mode 100644 drivers/amba/Makefile
 create mode 100644 drivers/amba/bus.c
 create mode 100644 include/linux/amba/bus.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
