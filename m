Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NbtYo-0003YO-6a
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 10:31:18 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  1 Feb 2010 11:31:01 +0100
Message-Id: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/2] smc91111 mac address and cfi flash fixes
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Hello,

although these two patches are not related,
I'm sending them as a series :)

Our Admin discovered that the MAC address read from the smc91111
eeprom is bytewrapped. (Thanks to Jochen).

The second patch addresses an aligment problem found in the cfi_flash driver.
The patch reduces the access width to fix the problem. Thanks to Uwe for
finding a nice way to figure out the minimum alignment.

However the cfi_flash_new driver has the same problem.
Which should be fixed, too.

Please review and consider to apply.
cheers, Marc.

For you convenience you can pull....:

The following changes since commit c68c06cb0e5f9913473ab9cfbf7c48af79582c99:
  Sascha Hauer (1):
        barebox-2009.12.0

are available in the git repository at:

  git://git.pengutronix.de/git/mkl/barebox.git for-sha

Marc Kleine-Budde (2):
      smc91111: fix odering of mac address read from EEPROM
      cfi_flash: fix alignment problem

 drivers/net/smc91111.c  |   23 +++++++++--------------
 drivers/nor/cfi_flash.c |   10 +++++++---
 2 files changed, 16 insertions(+), 17 deletions(-)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
