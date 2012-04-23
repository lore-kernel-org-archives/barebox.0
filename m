Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMHqN-0003PE-GG
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 11:54:12 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 68C47FFA778
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 13:55:44 +0200 (CEST)
Date: Mon, 23 Apr 2012 13:34:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120423113434.GR20601@game.jcrosoft.org>
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
Subject: [PULL] fixes
To: barebox@lists.infradead.org

HI,

	please pull the following fixes

The following changes since commit a4e30cd9163ac4a44454ef2e43bf01c6439c08e0:

  netX: ignoring temporary netx build tool (2012-04-23 07:52:47 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git fixes

for you to fetch changes up to b108afa01ac0ceb72db750fefd32a67c0247c9ca:

  menu: fix menu alloc init (2012-04-23 19:51:06 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      usb: fix driver name
      menu: fix non command management support
      menu: fix support for "\n", "\n\r" and "\r"
      menu: fix menu alloc init

 commands/menu.c           |   17 +++++++++--------
 common/menu.c             |    8 +++++++-
 drivers/usb/core/usb.c    |    1 +
 drivers/usb/storage/usb.c |    1 -
 include/menu.h            |    1 +
 5 files changed, 18 insertions(+), 10 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
