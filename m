Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QXF9K-0001kW-JU
	for barebox@lists.infradead.org; Thu, 16 Jun 2011 16:10:34 +0000
Received: by vws8 with SMTP id 8so330148vws.36
	for <barebox@lists.infradead.org>; Thu, 16 Jun 2011 09:10:28 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 16 Jun 2011 18:10:28 +0200
Message-ID: <BANLkTikhnzMKmHfhBENqThq-jjagxGo8aw@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: [PULL REQUEST] Atmel MCI Support
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

Hi Sascha,

I've seen that you have already applied commit
"at91sam9m10g45ek: add mci0 support" (dfa3d6613cc21b2b1787c2633b929f58a62fd14f)
in your next-branch.

Please pull also the other atmel-mci changes. Otherwise the above mentioned
commit is useless for it's own. I've prepared a new tree for you, so that
you don't run into conflicts.

Best regards
Hubert

The following changes since commit 21536365bb0326f1962bb3da310cec7033fa9d0c:

  update: add xload (2011-06-11 10:53:04 +0200)

are available in the git repository at:
  git://gitorious.org/hfe-repos/barebox.git atmel-mci-support-3

Hubert Feurstein (2):
      mci: add Atmel AT91 MCI driver
      at91sam9m10g45ek: update mci0 support

Jean-Christophe PLAGNIOL-VILLARD (1):
      at91sam9263ek: add mci1 support

 arch/arm/boards/at91sam9263ek/init.c     |   16 +
 arch/arm/boards/at91sam9m10g45ek/init.c  |   14 +-
 arch/arm/configs/at91sam9263ek_defconfig |    5 +
 arch/arm/mach-at91/at91sam9260_devices.c |   50 +++
 arch/arm/mach-at91/at91sam9261_devices.c |   50 +++
 arch/arm/mach-at91/at91sam9263_devices.c |   78 +++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   91 ++++++
 arch/arm/mach-at91/include/mach/board.h  |   10 +
 drivers/mci/Kconfig                      |    7 +
 drivers/mci/Makefile                     |    1 +
 drivers/mci/at91_mci.h                   |  121 ++++++++
 drivers/mci/atmel_mci.c                  |  494 ++++++++++++++++++++++++++++++
 12 files changed, 935 insertions(+), 2 deletions(-)
 create mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel_mci.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
