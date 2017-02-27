Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIEX-0002hr-Eu
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:08:47 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id C8D443E89D
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:08:16 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player763.ha.ovh.net (Postfix) with ESMTPA id 974453C0097
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:08:16 +0100 (CET)
Date: Mon, 27 Feb 2017 11:14:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170227101416.GB12475@mail.ovh.net>
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
Subject: [PATCH 0/8] add generic EFI timer
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

  git://git.jcrosoft.org/barebox.git

for you to fetch changes up to 169af081c48d6739a3727f07a4b8dbfb7ab48ebb:

  efi: add veriable to report secure boot support and status (2017-02-27 18:20:37 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      efi: add prototype and definition for creating and closing event
      efi: add prototype and definition for setting timer
      efi: move LoaderTimeInitUSec and LoaderDevicePartUUID to postcore initcall
      efi: move x86 clocksource init at core initcall level
      clocksource: allow to have multiple device from clock source
      efi: move x86 clocksource to device/driver
      efi: clocksoure: use event for timer
      efi: add veriable to report secure boot support and status

 arch/x86/Kconfig                |   2 +-
 arch/x86/mach-efi/Makefile      |   1 +
 arch/x86/mach-efi/clocksource.c |  11 +++++++++++
 common/clock.c                  |  11 +++++++++++
 common/efi/efi.c                |  24 +++++++++++++++++++-----
 drivers/clocksource/Kconfig     |   6 +++++-
 drivers/clocksource/Makefile    |   1 +
 drivers/clocksource/efi.c       | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------
 drivers/clocksource/efi_x86.c   |  79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/efi/efi-device.c        |  33 +++++++++++++++++++++++++++++++++
 include/clock.h                 |   3 ++-
 include/efi.h                   |  25 ++++++++++++++++++++++---
 include/efi/efi.h               |   2 --
 13 files changed, 266 insertions(+), 42 deletions(-)
 create mode 100644 arch/x86/mach-efi/clocksource.c
 create mode 100644 drivers/clocksource/efi_x86.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
