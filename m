Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2fXF-0001GW-QU
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 10:13:55 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 438CEFF9FD1
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 11:28:13 +0100 (CET)
Date: Tue, 5 Feb 2013 11:12:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130205101236.GA19322@game.jcrosoft.org>
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
Subject: [PATCH 0/4] macb: more fixes
To: barebox@lists.infradead.org

HI,

The following changes since commit e43e1498f65fe03cfc6b2744247eeccf27b26876:

  MIPS: pbl: fix none compression support (2013-02-05 09:43:17 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/macb

for you to fetch changes up to 450794f1d7ab6de54ebfab9d8a615d0ed6a1850e:

  macb: drop non used define (2013-02-05 03:42:40 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      macb: use dev_xx message
      macb: register the phy after the macb is init
      macb: report timeout on send
      macb: drop non used define

 drivers/net/macb.c |   46 ++++++++++++++++++++++++----------------------
 1 file changed, 24 insertions(+), 22 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
