Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyL2S-0000kJ-Rt
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 11:32:13 +0000
Received: from mail21.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B15DEDC18F4
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 12:41:58 +0100 (CET)
Date: Thu, 24 Jan 2013 12:30:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130124113051.GU26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2] at91: bootstrap: add menu support
To: barebox@lists.infradead.org

HI,

	if you enable the menu support and press m you will be able to display
	a menu and then choose from where you want to boot

	use full as on at91 we can not choose an alternative boot from a pin

The following changes since commit 6d588b9bfd85247f9007c002cec98a7535764ae4:

  Merge branch 'for-next/misc' into next (2013-01-23 20:46:17 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/at91bootstrap_menu

for you to fetch changes up to 01086f0c0f72e95a0eda5479f7d323ddc02641dd:

  at91: bootstrap: add menu support (2013-01-20 14:09:06 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      menu: the dependancy on process escape is wrong drop it
      at91: bootstrap: add menu support

 arch/arm/mach-at91/bootstrap.c |  215 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------
 common/Kconfig                 |    1 -
 2 files changed, 190 insertions(+), 26 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
