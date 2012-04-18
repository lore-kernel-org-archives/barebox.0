Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKU9C-0005cZ-MB
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:38:14 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 89884FF9864
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:28:33 +0200 (CEST)
Date: Wed, 18 Apr 2012 14:08:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120418120834.GD1980@game.jcrosoft.org>
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
Subject: [PATCH 0/3] fixes
To: barebox@lists.infradead.org

HI,

	the following patch series is ramdom fixes of the next

The following changes since commit a2d2e8868fe3c963ebac634b695ae18bb4b411ca:

  config: switch machine to hostname (2012-04-18 12:03:58 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git fixes

for you to fetch changes up to 8c04018b528bb638e22b7f573617842482bbc05a:

  config: fix missing switch machine to hostname during merge (2012-04-18 19:51:05 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      arm: bootm: zImage: add error message when can not request the memory
      dhcp: fix typo introduce during rebase of hostname patch
      config: fix missing switch machine to hostname during merge

 arch/arm/boards/eukrea_cpuimx35/env/config |   14 +++++++-------
 arch/arm/lib/bootm.c                       |    2 ++
 net/dhcp.c                                 |    2 +-
 3 files changed, 10 insertions(+), 8 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
