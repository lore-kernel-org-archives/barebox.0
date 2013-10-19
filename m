Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x233.google.com ([2a00:1450:4013:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVV1-0002kn-2q
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:19:19 +0000
Received: by mail-ea0-f179.google.com with SMTP id b10so2576235eae.10
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:18:57 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id i1sm17216948eeg.0.2013.10.19.05.18.55
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:18:56 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:18:41 +0200
Message-Id: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/10] RPi mailbox support
To: barebox@lists.infradead.org

This adds a bcm2835 mailbox driver for the RPi to talk to the on-SoC
VideoCore. See [1] for a description.

This patchset uses it to get two properties, the eMMC clock and the
memory size.

The RPi backend needs to use this driver early on, namely before the
MMU setup. We also want to use the driver in the future after the MMU setup,
like setting up simplefb for the kernel. Patch 1 and 2 lay the groundwork
for that.

The mailbox driver also needs to handle timouts, so patch 5 and 6 are
making the clocksource accessible earlier.

Patch 7 is the driver itself, providing a helper macro for users based on
a new common macro from patch 3.

Patch 8 and 9 switch the bc2835_mci driver from a local mailbox
implementation to the new driver.

Patch 10 uses the driver to get the proper memory size.

Patch 4 is just a cleanup.

Thanks,
Andre

[1] https://github.com/raspberrypi/firmware/wiki/Mailboxes

Andre Heider (10):
  ARM: cache: restore cache functions from the PBL
  ARM: cache: do not crash when the MMU isn't yet setup
  common: add a macro to align an array on the stack
  ARM: bcm2835: cleanup clock registering
  ARM: bcm2835: register the clocksource driver earlier
  ARM: bcm2835: register the clocksource device earlier
  ARM: bcm2835: add a mailbox driver for VideoCore
  ARM: rpi: register a clkdev for the eMMC clock
  mci: bcm2835: use the registered device clkdev
  ARM: rpi: use the proper ARM memory size

 arch/arm/boards/raspberry-pi/rpi.c        |  75 +++++-
 arch/arm/cpu/cache.c                      |  18 +-
 arch/arm/cpu/start.c                      |   4 +-
 arch/arm/mach-bcm2835/Makefile            |   2 +-
 arch/arm/mach-bcm2835/core.c              |  32 +--
 arch/arm/mach-bcm2835/include/mach/mbox.h | 420 ++++++++++++++++++++++++++++++
 arch/arm/mach-bcm2835/mbox.c              | 152 +++++++++++
 drivers/clocksource/bcm2835.c             |   2 +-
 drivers/mci/mci-bcm2835.c                 |  93 ++-----
 drivers/mci/mci-bcm2835.h                 |  48 ----
 include/common.h                          |  11 +
 11 files changed, 700 insertions(+), 157 deletions(-)
 create mode 100644 arch/arm/mach-bcm2835/include/mach/mbox.h
 create mode 100644 arch/arm/mach-bcm2835/mbox.c

-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
