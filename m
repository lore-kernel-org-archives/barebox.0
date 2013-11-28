Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5vr-0008Ss-JB
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:03:21 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3E1C3FFA32B
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:02:56 +0100 (CET)
Date: Thu, 28 Nov 2013 19:05:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131128180526.GA27628@ns203013.ovh.net>
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
Subject: [PATCH 0/6] ARM: machine struct support
To: barebox@lists.infradead.org

Hi,

	v2:
		add an init for most initcall for SoC & machine

		switch all the at91 boards and the arm vexpress

	take from ARM Kernel

	This patch serie start to add Machine struct description. The idea is
	to do not call initall in boards and SoC but instead use this new
	struct to allow multiple board and SoC support

	This work on dt & non-dt

	An other step will be to allow boot loader such as at91bootstrap to
	pass the machine type on DT to barebox

The following changes since commit f9083f4e177e37f3adf0dac19b893de18fdfbd3c:

  vexpress: fix smc911x in defconfig (2013-11-28 17:32:19 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/mach_desc

for you to fetch changes up to 19cfb444c51d9d898e6f9ad54436a937d5833fde:

  vexpress: switch to machine description (2013-11-28 17:32:47 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      arm: gen-mach-types: add MAX_MACH_TYPE
      ARM: introduce machine description
      ARM: introduce SoC description
      AT91: detect SoC earlier
      AT91: switch to machine description
      vexpress: switch to machine description

 arch/arm/boards/animeo_ip/init.c        |  25 +++++++++++-----------
 arch/arm/boards/at91rm9200ek/init.c     |  13 +++++++-----
 arch/arm/boards/at91sam9260ek/init.c    |  60 +++++++++++++++++++++++++++++++---------------------
 arch/arm/boards/at91sam9261ek/init.c    |  35 ++++++++++++++++++-------------
 arch/arm/boards/at91sam9263ek/init.c    |  16 +++++++-------
 arch/arm/boards/at91sam9m10g45ek/init.c |  14 +++++++------
 arch/arm/boards/at91sam9m10ihd/init.c   |  22 +++++++++++---------
 arch/arm/boards/at91sam9n12ek/init.c    |  14 +++++++------
 arch/arm/boards/at91sam9x5ek/init.c     |  14 +++++++------
 arch/arm/boards/dss11/init.c            |  14 +++++++------
 arch/arm/boards/mmccpu/init.c           |  16 +++++++-------
 arch/arm/boards/pm9261/init.c           |  14 +++++++------
 arch/arm/boards/pm9263/init.c           |  16 +++++++-------
 arch/arm/boards/pm9g45/init.c           |  14 +++++++------
 arch/arm/boards/qil-a926x/init.c        |  52 +++++++++++++++++++++++++++-------------------
 arch/arm/boards/sama5d3xek/init.c       |  19 ++++++++++++-----
 arch/arm/boards/telit-evk-pro3/init.c   |  19 ++++++++++++-----
 arch/arm/boards/tny-a926x/init.c        |  50 +++++++++++++++++++++++++-------------------
 arch/arm/boards/usb-a926x/init.c        |  52 +++++++++++++++++++++++++++-------------------
 arch/arm/boards/vexpress/init.c         | 134 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------
 arch/arm/cpu/Makefile                   |   2 +-
 arch/arm/cpu/dtb.c                      |   8 +++++--
 arch/arm/cpu/machine.c                  | 194 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h      |   8 +++++++
 arch/arm/include/asm/mach/arch.h        |  85 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/barebox.lds.S              |   6 ++++++
 arch/arm/mach-at91/clock.c              |  10 ++-------
 arch/arm/mach-at91/generic.h            |   2 +-
 arch/arm/mach-at91/include/mach/board.h |   2 +-
 arch/arm/mach-at91/setup.c              |  12 ++++++-----
 arch/arm/tools/gen-mach-types           |   8 ++++++-
 31 files changed, 672 insertions(+), 278 deletions(-)
 create mode 100644 arch/arm/cpu/machine.c
 create mode 100644 arch/arm/include/asm/mach/arch.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
