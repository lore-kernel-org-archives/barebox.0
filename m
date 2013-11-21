Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjOP4-0002NN-80
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 07:10:19 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E6FB0FFA650
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 08:12:09 +0100 (CET)
Date: Thu, 21 Nov 2013 08:12:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131121071216.GE7965@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] [PATCH 0/3] ARM: machine struct support
To: barebox@lists.infradead.org

Hi,

	take from ARM Kernel

	This patch serie start to add Machine struct description. The idea is
	to do not call initall in boards and SoC but instead use this new
	struct to allow multiple board and SoC support

	This work on dt & non-dt

	An other step will be to allow boot loader such as at91bootstrap to
	pass the machine type on DT to barebox

The following changes since commit 52ebed0283503b047b17c86b92db729f781b97ad:

  at91sam9x5: only register device if the driver is enabled (2013-11-20 20:21:58 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/arm_mach_struct

for you to fetch changes up to 9d2c7446f1f7798874b9c29bd2413676dad093e7:

  AT91: usb-a926x: switch to machine description (2013-11-21 08:06:01 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      ARM: introduce machine description
      at91: detect SoC earlier
      AT91: usb-a926x: switch to machine description

 arch/arm/boards/usb-a926x/init.c |  39 ++++++++++++++++++++++++++++++++-------
 arch/arm/cpu/Makefile            |   2 +-
 arch/arm/cpu/dtb.c               |   4 ++++
 arch/arm/cpu/machine.c           | 110 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/mach/arch.h |  66 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/barebox.lds.S       |   6 ++++++
 arch/arm/mach-at91/setup.c       |   2 +-
 7 files changed, 220 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/cpu/machine.c
 create mode 100644 arch/arm/include/asm/mach/arch.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
