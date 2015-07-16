Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFemO-0001SA-1z
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:44:33 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 16 Jul 2015 10:43:49 +0200
Message-Id: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 0/7] EFI updates
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Hi,

Just some changes to improve initrd handling and better integration with
systemd. Tested with qemu and my laptop. Booting Debian with works without
problems.

Michael

Michael Olbrich (7):
  efi: improve malloc pool allocation
  efi: refactor & improve application loading code
  efi: add support for initrd loading
  efi: add helper to get the GPT partition UUID for a device
  efi: export device_path_from_handle()
  efi: add helper functions to write EFI variables
  efi: write volatile EFI variables used by systemd

 arch/efi/efi/efi-image.c    | 198 +++++++++++++++++++++++++++++++++++++++++---
 arch/efi/efi/efi.c          |  61 +++++++++++++-
 arch/efi/include/mach/efi.h |   4 +
 common/efi-devicepath.c     |  31 +++++++
 common/efi-guid.c           |   1 +
 include/efi.h               |   9 +-
 6 files changed, 287 insertions(+), 17 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
