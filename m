Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTbZ5-0001kl-Dy
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 16:54:52 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D280FFFAF6E
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 18:05:13 +0100 (CET)
Date: Wed, 31 Oct 2012 17:52:40 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121031165240.GG29599@game.jcrosoft.org>
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
Subject: [PATCH 0/4] at91sam9x5ek: add 1-wire support and hardware
 detection support
To: barebox@lists.infradead.org
Cc: "ludovic.desroches" <ludovic.desroches@atmel.com>

HI,

	This patch serie add the 1-wire support to the at91sam9x5ek

	on sam9x5ek we have on each module and motherboard a 1-wire eeprom
	that describe the hardware revision and type

	And on the Cogent Cpu Module we have some difference with teh others
	modules and some bug

	So fix

	Also use the 1-wire to generate a local mac address

	This patch series depends on the pm9g45/pm9263/pm9261 v3

The following changes since commit 7fb0cb2ce2f7800341ab8de711dccbd2c4753c84:

  pm9261: use w1 serial number to generate local mac address (2012-10-30 13:44:54 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_w1

for you to fetch changes up to 4e088306b778a5f14c2503be54b061e60e27e6a0:

  at91sam9x5ek: use w1 serial number to generate local mac address (2012-10-31 09:33:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9x5ek: add 1-wire support
      at91sam9x5ek: add hw detection support
      at91sam9x5ek: add fixup for cogent cpu module
      at91sam9x5ek: use w1 serial number to generate local mac address

 arch/arm/boards/at91sam9x5ek/Makefile     |    1 +
 arch/arm/boards/at91sam9x5ek/env/config   |    1 +
 arch/arm/boards/at91sam9x5ek/hw_version.c |  272 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/at91sam9x5ek/hw_version.h |   34 ++++++++++++++++++++++++++++
 arch/arm/boards/at91sam9x5ek/init.c       |   38 +++++++++++++++++++++++++++++++-
 arch/arm/configs/at91sam9x5ek_defconfig   |    4 ++++
 6 files changed, 349 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/hw_version.c
 create mode 100644 arch/arm/boards/at91sam9x5ek/hw_version.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
