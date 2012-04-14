Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5cB-0000jX-Cc
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:14:20 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 31BA0FF83CE
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:15:27 +0200 (CEST)
Date: Sat, 14 Apr 2012 17:56:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414155623.GA30672@game.jcrosoft.org>
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
Subject: [PATCH 0/6] some fixes
To: barebox@lists.infradead.org

HI,

	the following patch serie are some random fixes

The following changes since commit c406f591292ccc2af583445c0a8b5f9ade0310e2:

  at91sam9260ek/9g20ek: udpate defconfig (2012-04-13 15:55:28 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git fixes

for you to fetch changes up to 19a8c7cb6accacdc15c4fe2689e530cdf238e7da:

  arm: bootm: zImage: add error message when can not request the memory (2012-04-15 00:11:00 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      menu: enable the fancy color support only if HUSH is enabled
      at91sam9263ek: update defconfig
      defaultenv/update: add oftree support
      net: use net_alloc_packet to allocate packet
      mx53/loco: udpate defconfig with USB host
      arm: bootm: zImage: add error message when can not request the memory

 arch/arm/configs/at91sam9263ek_defconfig       |    3 +++
 arch/arm/configs/freescale_mx53_loco_defconfig |    3 +++
 arch/arm/lib/bootm.c                           |    2 ++
 common/menu.c                                  |   21 +++++++++++++++------
 defaultenv/bin/_update_help                    |    3 ++-
 defaultenv/bin/update                          |    5 +++++
 net/net.c                                      |    4 ++--
 7 files changed, 32 insertions(+), 9 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
