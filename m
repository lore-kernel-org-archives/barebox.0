Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMczl-0001Ux-8p
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 10:29:18 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AA29F105CFA4
 for <barebox@lists.infradead.org>; Tue, 24 Apr 2012 12:30:22 +0200 (CEST)
Date: Tue, 24 Apr 2012 12:09:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120424100916.GX20601@game.jcrosoft.org>
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
Subject: [FIXES Master] tny-a926x fixes
To: barebox@lists.infradead.org

HI,

	the following patch series fix the Calao tny-a926x

	this is for the master branch

The following changes since commit 1d79f322f7a3bff9b6b9bde4ce7f391f0316063a:

  mtd: docg3 fixes backport from Linux kernel (2012-04-17 22:02:54 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git master-fixes

for you to fetch changes up to 60e03c64b0c7e6f3aedcf2c9328aa105de3ba11d:

  tny-a926x: fix MOB-TNY-MD2 Motherboard support (2012-04-24 18:27:32 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      at91: at91_register_uart use number instead of IDs
      tny-a926x: fix MOB-TNY-MD2 Motherboard support

 arch/arm/boards/tny-a926x/init.c         |   38 +++--------------------------
 arch/arm/configs/tny_a9260_defconfig     |    2 +-
 arch/arm/configs/tny_a9263_defconfig     |    2 +-
 arch/arm/configs/tny_a9g20_defconfig     |    2 +-
 arch/arm/mach-at91/Kconfig               |   10 ++++++++
 arch/arm/mach-at91/at91rm9200_devices.c  |   13 +++-------
 arch/arm/mach-at91/at91sam9260_devices.c |   19 ++++----------
 arch/arm/mach-at91/at91sam9261_devices.c |   10 ++-----
 arch/arm/mach-at91/at91sam9263_devices.c |   10 ++-----
 arch/arm/mach-at91/at91sam9g45_devices.c |   13 +++-------
 10 files changed, 37 insertions(+), 82 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
