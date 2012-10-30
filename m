Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTIs4-0008If-VW
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 20:57:15 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A4728104E48A
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 22:04:13 +0100 (CET)
Date: Tue, 30 Oct 2012 21:54:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121030205459.GE29599@game.jcrosoft.org>
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
Subject: [PATCH 0/8 v3] pm9g45/pm9253/pm9261: add 1-wire support
To: barebox@lists.infradead.org

Hi,

	v3: comment

	v2: fixup and add comment

	add 1-wire support for:
	 - pm9g45
	 - pm9263
	 - pm9261

	use the 1-wire uniq id to generate a local mac address
	The OUI will be 'ron' => 72:6F:6E

	The patch series go on the top of the 1-wire support v2

The following changes since commit acaa716bce8cd1373cb5dabff54332fb1da7355b:

  1-wire: add ds2433 support (2012-10-29 04:46:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/ronetix_w1

for you to fetch changes up to 7fb0cb2ce2f7800341ab8de711dccbd2c4753c84:

  pm9261: use w1 serial number to generate local mac address (2012-10-30 13:44:54 +0800)

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
 include/w1_mac_address.h               |   65 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 8 files changed, 141 insertions(+), 11 deletions(-)
 create mode 100644 include/w1_mac_address.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
