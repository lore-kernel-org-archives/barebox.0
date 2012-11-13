Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYMj7-000327-8s
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 20:04:54 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B899AFF9307
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 21:15:29 +0100 (CET)
Date: Tue, 13 Nov 2012 21:02:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121113200248.GG25679@game.jcrosoft.org>
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
Subject: [PATCH 0/4] mci-spi fix
To: barebox@lists.infradead.org

HI,

	THis patch series fix multiple issue on mci-issue
	 - sd version 2.0 support
	 - clock frequency support
	 - sanity check
	 - always compute crc on command

	 it include a patch from Franck

The following changes since commit d74bef2b04a3ccf7339ba916e56830bb2feae957:

  mount: add compatibility to old mount command (2012-11-02 21:26:29 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/mci_spi

for you to fetch changes up to 84368c260b7cf78fe3006368d4a5fa06e722eacf:

  mci_spi: add clock frequency change support (2012-11-12 08:50:20 +0800)

----------------------------------------------------------------
Franck Jullien (1):
      mci_spi: always compute command crc byte

Jean-Christophe PLAGNIOL-VILLARD (3):
      mci-core: spi fix op cond support
      mci_spi: add sanity check
      mci_spi: add clock frequency change support

 drivers/mci/Kconfig    |    2 +-
 drivers/mci/mci-core.c |   10 +++++++---
 drivers/mci/mci_spi.c  |   52 +++++++++++++++++++++++++++++++++++++++-------------
 3 files changed, 47 insertions(+), 17 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
