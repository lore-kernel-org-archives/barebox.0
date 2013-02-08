Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3jwx-000583-Nz
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:08:52 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 66B5C101C047
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:19:10 +0100 (CET)
Date: Fri, 8 Feb 2013 10:07:39 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130208090739.GP19322@game.jcrosoft.org>
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
Subject: [For master PATCH 0/7] macb: more fixes + gem (gigabit support)
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

HI,

	This patch serie fixe more issue on the macb and add the GEM support
	(gigabit support) present on Atmel sama5d3x as example

	The IP version is detected as in linux

	we now share more code with the kernel and will help to maintain the
	driver

	tesed on at91 macb & gem

The following changes since commit 15c5fa0467b20c05e9ebea36e049764054a7e308:

  macb: drop non used define (2013-02-08 16:55:16 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/macb

for you to fetch changes up to b7058953abdd014b9626b22d868fb29c1c563514:

  macb: add cadence Gigabit GEM support (2013-02-08 16:55:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      macb: call macb_init at probe explecitly
      macb: sync remaining define with linux
      macb: use the macro as in linux for tx/rx buffer ring size
      macb: enable Tramsmit and Receive at open
      macb: reset the IP at init
      macb: fix tx ring size
      macb: add cadence Gigabit GEM support

 drivers/net/macb.c |  394 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------
 drivers/net/macb.h |  179 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 466 insertions(+), 107 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
