Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOX3Q-00039e-Lt
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 17:05:13 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2A0B8DC1E33
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 19:11:50 +0200 (CEST)
Date: Wed, 17 Oct 2012 19:02:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121017170252.GA446@game.jcrosoft.org>
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
Subject: [For-master PATCH 0/3] at91sam9x5 fixes
To: barebox@lists.infradead.org

Hi,

	some fixes for at91sam9x5


wing changes since commit f99ea5c9d8cfddf3a1d6b181d0dbb26e06a86d2b:

  ARM samsung S5P: Enable board support (2012-10-15 19:47:01 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9x5_fix

for you to fetch changes up to 44003508719639b99c1724d27019f778ec0546b7:

  at91sam9x5ek: fix bootstrap size to 256KiB (2012-10-17 15:05:52 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      at91sam9x5: udpate default ARCH_TEXT to 0x26f00000
      sam9x5ek: drop uart2 as it's not always present
      at91sam9x5ek: fix bootstrap size to 256KiB

 arch/arm/boards/at91sam9x5ek/env/config |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c     |    1 -
 arch/arm/mach-at91/Kconfig              |    1 +
 3 files changed, 2 insertions(+), 2 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
