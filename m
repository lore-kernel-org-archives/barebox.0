Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4Gx-00029h-7F
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:47:56 +0000
Date: Fri, 26 Nov 2010 20:43:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101126194353.GH26540@game.jcrosoft.org>
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
Subject: [PATCH 0/12] cfi_flash: improvment
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Hi,

	the following patch series improve the current flash
	by adding the atmel flash supportm fixing some issues and factorising
	more the code

	Found during the adding of the at91rm9200ek

please pull
The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:

  Merge branch 'master' into next (2010-11-19 09:35:15 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git cfi

Jean-Christophe PLAGNIOL-VILLARD (12):
      cfi_flash: move intel real protect flash support to cfi_flash_intel.c
      cfi_flash: add Atmel real protect flash support
      cfi_flash: move flash_read_uchar from inline to noinline
      cfi_flash: use amd and standard reset flash command at probing
      cfi_flash: synchronize command offsets with Linux CFI driver
      cfi_flash: update manufacturer id flash support
      cfi_flash: Introduce read and write accessors
      cfi_flash: Read whole QRY structure in one go
      cfi_flash: do not reset flash when probe fails
      cfi_flash: move reset command assigment to specific chipset init function
      cfi_flash: introduce flash cmdset fixup
      cfi_flash_amd: Add manufacturer-specific fixups

 drivers/nor/cfi_flash.c       |  303 +++++++++++++++++++----------------------
 drivers/nor/cfi_flash.h       |  120 +++++++++++++----
 drivers/nor/cfi_flash_amd.c   |  172 ++++++++++++++++++++----
 drivers/nor/cfi_flash_intel.c |   52 ++++++--
 4 files changed, 420 insertions(+), 227 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
