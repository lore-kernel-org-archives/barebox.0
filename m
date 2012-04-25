Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMzgm-0001is-Rj
 for barebox@lists.infradead.org; Wed, 25 Apr 2012 10:43:14 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 19065105CECC
 for <barebox@lists.infradead.org>; Wed, 25 Apr 2012 12:44:19 +0200 (CEST)
Date: Wed, 25 Apr 2012 12:23:09 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120425102309.GA20601@game.jcrosoft.org>
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
Subject: [FIXES Master] some fixes in the next which are for master too
To: barebox@lists.infradead.org

Hi,

	the following fixes are for master too

please pull
The following changes since commit 60e03c64b0c7e6f3aedcf2c9328aa105de3ba11d:

  tny-a926x: fix MOB-TNY-MD2 Motherboard support (2012-04-24 18:27:32 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/j-master-fixes

for you to fetch changes up to 9ccc05d2beeb11aa19e6d6ffd1cf287382fd13a7:

  menu: fix menu alloc init (2012-04-25 18:37:43 +0800)

----------------------------------------------------------------
Master Fixes

usb driver name (driver_d)

Menu fixes

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      usb: fix driver name
      menu: fix double action when "\n\r" or "\r\n" is received
      menu: fix non command management support
      menu: fix support for "\n", "\n\r" and "\r"
      menu: fix menu alloc init

 commands/menu.c           |   17 +++++++++--------
 common/menu.c             |    9 +++++++--
 drivers/usb/core/usb.c    |    1 +
 drivers/usb/storage/usb.c |    1 -
 include/menu.h            |    1 +
 5 files changed, 18 insertions(+), 11 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
