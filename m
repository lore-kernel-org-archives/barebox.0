Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TylDn-0000Yi-2y
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:29:41 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CA8B4DC0A27
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:39:26 +0100 (CET)
Date: Fri, 25 Jan 2013 16:28:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130125152819.GE26329@game.jcrosoft.org>
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
Subject: [for next PATCH 0/2] MMC: introduce write protect support
To: barebox@lists.infradead.org

HI,

	introduce write protect support and implement it on at91

The following changes since commit caea28cd5ebfe0bee2fb1be22bc0e56c7d6120cf:

  atmel_mci: gpio: request and configure card detect (2013-01-21 17:09:20 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/atmel_mci_next

for you to fetch changes up to a4dcf41b8bfd19bdef1b45482742d6aae75275a3:

  atmel_mci: add write protect detection support (2013-01-21 17:09:20 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      mci: add card_write_protected
      atmel_mci: add write protect detection support

 drivers/mci/atmel_mci.c |   42 +++++++++++++++++++++++++++++++++++++++++-
 drivers/mci/mci-core.c  |    6 ++++++
 include/mci.h           |    2 ++
 3 files changed, 49 insertions(+), 1 deletion(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
