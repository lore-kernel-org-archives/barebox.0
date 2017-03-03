Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjmIV-0006oD-KY
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 12:27:01 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 9BD265B8F4
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 13:26:15 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player691.ha.ovh.net (Postfix) with ESMTPA id 2C85B2600A8
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 13:26:15 +0100 (CET)
Date: Fri, 3 Mar 2017 13:32:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170303123219.GD4120@mail.ovh.net>
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
Subject: [PATCH 0/9] add generic EFI timer
To: barebox@lists.infradead.org

Hi,

	On EFI you have 3 ways to get to do "timer"

	1: Simply by waiting X us and calling Boot Service udelay

	2: By using event

	3: By use the Timestamp GUID

	for barebox this would be the best but even on EDK II this is never
	ever compiled on any target.

	So we have 2 choice, use a Hardware specific timer or implement the
	timer using timestamp

	This pull request allow you to enable 2 timers and use the best one at
	runtime.

	EFI x86 (HW specific)
	EFI Generic (based on Event)

please pull

The following changes since commit d92ed454107b4d6f0d30fa0271da191ae5911d18:

  Merge branch 'for-next/video' into next (2017-02-27 08:51:08 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/efi-cs

for you to fetch changes up to f14af7444ad9d8ce674382f222119f5fcd3f2576:

  efi: add veriable to report secure boot support and status (2017-02-28 23:05:31 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      efi: add prototype and definition for creating and closing event
      efi: add prototype and definition for setting timer
      efi: move LoaderTimeInitUSec and LoaderDevicePartUUID to postcore initcall
      efi: move x86 clocksource init at core initcall level
      clocksource: allow to have multiple device from clock source
      clocksource: move dummy clock source to init_clock
      efi: move x86 clocksource to device/driver
      efi: clocksoure: add EFI event timer
      efi: add veriable to report secure boot support and status

 arch/x86/Kconfig                |   2 +-
 arch/x86/mach-efi/Makefile      |   1 +
 arch/x86/mach-efi/clocksource.c |  11 +++++++++++
 common/clock.c                  |  44 +++++++++++++++++++++++++++++++++++---------
 common/efi/efi.c                |  24 +++++++++++++++++++-----
 drivers/clocksource/Kconfig     |   6 +++++-
 drivers/clocksource/Makefile    |   1 +
 drivers/clocksource/efi.c       | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------
 drivers/clocksource/efi_x86.c   |  79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/efi/efi-device.c        |  33 +++++++++++++++++++++++++++++++++
 include/clock.h                 |   3 ++-
 include/efi.h                   |  25 ++++++++++++++++++++++---
 include/efi/efi.h               |   2 --
 13 files changed, 290 insertions(+), 51 deletions(-)
 create mode 100644 arch/x86/mach-efi/clocksource.c
 create mode 100644 drivers/clocksource/efi_x86.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
