Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CzH-00014X-LR
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:48:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q8CzF-00068P-RP
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:48:37 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q8CzF-0002Pn-QL
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:48:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:48:32 +0200
Message-Id: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: 
To: barebox@lists.infradead.org

The following adds a caching block layer to speed up for
example mmc card operations. Also, write support on ata and
mci devices is made optional to save some binary space.

Sascha Hauer (4):
      add block support
      ata: use block support
      ata: make write support optional
      mci: make write support optional

 common/Kconfig           |    6 +
 common/Makefile          |    1 +
 common/block.c           |  263 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/ata/Kconfig      |    5 +
 drivers/ata/disk_drive.c |  196 +++++++---------------------------
 drivers/mci/Kconfig      |    5 +
 drivers/mci/mci-core.c   |    6 +
 fs/Makefile              |    2 +-
 include/block.h          |   32 ++++++
 9 files changed, 357 insertions(+), 159 deletions(-)
 create mode 100644 common/block.c
 create mode 100644 include/block.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
