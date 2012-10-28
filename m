Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGfP-0000Lz-FE
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:23:55 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D98B6FFA439
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:30:51 +0200 (CEST)
Date: Sun, 28 Oct 2012 02:21:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121028002134.GD28904@game.jcrosoft.org>
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
Subject: [PATCH 0/8] pm9g45/pm9253/pm9261: add 1-wire support
To: barebox@lists.infradead.org

Hi,

	add 1-wire support for:
	 - pm9g45
	 - pm9263
	 - pm9261

	use the 1-wire uniq id to generate a local mac address
	The OUI will be 'ron' => 72:6F:6E

	The patch series go on the top of the 1-wire support

The following changes since commit 91413767b35d5f9f66d14376c925386a42d1db0e:

  1-wire: add ds2433 support (2012-10-27 12:47:20 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/ronetix_w1

for you to fetch changes up to 32c1cc8c210614799454e63cd2728470ab8732b5:

  pm9261: use w1 serial number to generate local mac address (2012-10-27 17:08:03 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      arm: at91: add gpio_is_valid support
      w1: introduce helper to generate mac address from 1-wire id
      pm9g45: add 1-wire support
      pm9g45: use w1 serial number to generate local mac address
      pm9263: add 1-wire support
      pm9263: use w1 serial number to generate local mac address
      pm9261: add 1-wire support
      pm9261: use w1 serial number to generate local mac address

 arch/arm/boards/pm9261/init.c          |   10 ++++++++++
 arch/arm/boards/pm9263/init.c          |   38 ++++++++++++++++++++++++++++++--------
 arch/arm/boards/pm9g45/init.c          |   22 +++++++++++++++++++---
 arch/arm/configs/pm9261_defconfig      |    2 ++
 arch/arm/configs/pm9263_defconfig      |    2 ++
 arch/arm/configs/pm9g45_defconfig      |    2 ++
 arch/arm/mach-at91/include/mach/gpio.h |   11 +++++++++++
 include/w1_mac_address.h               |   64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 8 files changed, 140 insertions(+), 11 deletions(-)
 create mode 100644 include/w1_mac_address.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
