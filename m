Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrqU5-0005qh-6y
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 11:32:49 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 22 Feb 2011 12:32:43 +0100
Message-Id: <1298374366-6956-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 0/3] at91 fixes
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Hello,

this patch series fixes some problems on the at91sam9g45 and adds support for
flash based bad block table to the atmel nand driver.

changes since V1:

- fix wording in commit message

The following changes since commit 58ec1a81a16a758bc6125f7736d13137c5b7e17f:

  Merge branch 'tx25' into next (2011-02-18 11:11:48 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/mkl/barebox.git at91

Juergen Beisert (1):
      at91sam9g45_devices: fix compilation if NAND driver is enabled

Marc Kleine-Budde (2):
      at91sam9g45_devices: don't hardcode nand ecc mode
      atmel_nand: add support for flash based bad block table

 arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
 arch/arm/mach-at91/include/mach/board.h  |    1 +
 drivers/mtd/nand/atmel_nand.c            |    5 +++++
 3 files changed, 7 insertions(+), 1 deletions(-)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
