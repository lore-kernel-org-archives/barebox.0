Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo179.mail-out.ovh.net ([178.33.250.45])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crh1G-0007lt-Cx
 for barebox@lists.infradead.org; Sat, 25 Mar 2017 08:25:57 +0000
Received: from player168.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id BF0F932FA2
 for <barebox@lists.infradead.org>; Sat, 25 Mar 2017 09:25:26 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player168.ha.ovh.net (Postfix) with ESMTPA id 851A742006B
 for <barebox@lists.infradead.org>; Sat, 25 Mar 2017 09:25:25 +0100 (CET)
Date: Sat, 25 Mar 2017 09:31:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170325083155.GA14076@mail.ovh.net>
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
Subject: [PATCH 00/13] add efi secure boot support
To: barebox@lists.infradead.org

Hi,

	This patch series rework the secure boot support to make it generic
	and we could use it on EFI too

The following changes since commit 2846e53d2d41742348459676edab737edf90604a:

  arm: baltos: define baltos_sram_init() return type as void (2017-03-13 09:13:17 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/efi-sb

for you to fetch changes up to ff17500171e65d8c20c7c0acc803aa5a4d22d014:

  efi: enable sercure boot support (2017-03-15 03:09:09 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (13):
      bootm: move open to image_handler
      boot_verify: use a new error ESECVIOLATION
      bootm: make security generic
      boot: invert the secure boot forcing support
      move boot verify to generic code
      boot_verify: make it modifiable at start time
      go: only use it if boot signature is not required
      boot_verify: allow to force unsigned image to boot
      boot_verify: add password request support
      efi: add more security related guid for the efivars
      efi: fix lds for secure boot support
      efi: fix secure and setup mode report
      efi: enable sercure boot support

 arch/arm/lib/bootm.c                         |   3 +++
 arch/blackfin/lib/blackfin_linux.c           |   1 +
 arch/nios2/lib/bootm.c                       |   1 +
 arch/ppc/lib/ppclinux.c                      |   1 +
 arch/x86/Kconfig                             |   1 +
 arch/x86/mach-efi/elf_ia32_efi.lds.S         |  10 +++++++---
 arch/x86/mach-efi/elf_x86_64_efi.lds.S       |  10 ++++++----
 arch/x86/mach-efi/include/mach/barebox.lds.h |  14 +++++++++++++-
 commands/bootm.c                             |   6 +++---
 commands/go.c                                |   9 +++++++++
 common/Kconfig                               |  24 ++++++++++++++++++++----
 common/Makefile                              |   1 +
 common/boot_verify.c                         | 113 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/bootm.c                               | 123 ++++++++++++++++++++++++++++++++++++++-------------------------------------------------------------------------------------
 common/efi-guid.c                            |   6 ++++++
 common/efi/efi-image.c                       |   1 +
 common/efi/efi.c                             |   2 +-
 common/image-fit.c                           |  42 +++++++++++++++++++++++++++++-------------
 common/misc.c                                |   1 +
 common/password.c                            |  18 ++++++++++++++++++
 common/uimage.c                              |  33 +++++++++++++++++++++++++++++++++
 drivers/efi/efi-device.c                     |  17 +++++++++++++----
 include/asm-generic/barebox.lds.h            |   8 +++++---
 include/asm-generic/errno.h                  |   1 +
 include/boot_verify.h                        |  36 ++++++++++++++++++++++++++++++++++++
 include/bootm.h                              |  16 +++++-----------
 include/efi.h                                |  18 ++++++++++++++++++
 include/image-fit.h                          |   5 +++--
 include/image.h                              |   2 ++
 include/password.h                           |   6 ++++++
 30 files changed, 395 insertions(+), 134 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
