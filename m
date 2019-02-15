Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gucqR-0002sp-0x
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:43:58 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 15 Feb 2019 13:43:47 +0100
Message-Id: <20190215124351.30374-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v2 0/4] add (U)EFI watchdog
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v2:
- efi_wdt_set_timeout() should return error if we get error from (U)EFI
- use device_platform_driver()
- spelling and formatting fixes in the documentation.

Oleksij Rempel (4):
  efi: add prototype and definition for set_watchdog_timer
  watchdog: add (U)EFI driver
  efi_defconfig: enable watchdog support
  Documentation: efi: provide (U)EFI watchdog documentation

 Documentation/boards/efi.rst   | 36 ++++++++++++++++++-
 arch/x86/configs/efi_defconfig |  3 ++
 common/efi/efi.c               |  9 ++++-
 drivers/watchdog/Kconfig       |  6 ++++
 drivers/watchdog/Makefile      |  1 +
 drivers/watchdog/efi_wdt.c     | 64 ++++++++++++++++++++++++++++++++++
 include/efi.h                  |  5 ++-
 7 files changed, 121 insertions(+), 3 deletions(-)
 create mode 100644 drivers/watchdog/efi_wdt.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
