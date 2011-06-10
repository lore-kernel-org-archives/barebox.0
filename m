Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUxGb-0002OX-MV
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:40:36 +0000
Received: by vws8 with SMTP id 8so2520219vws.36
	for <barebox@lists.infradead.org>; Fri, 10 Jun 2011 01:40:31 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Jun 2011 10:40:31 +0200
Message-ID: <BANLkTikb0k8c6-80BU4Nju2M1apCis_G1g@mail.gmail.com>
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
Subject: Pull request: Atmel MCI Support
To: barebox@lists.infradead.org

Hi,

all changes regarding the atmel-mci-support can be pulled from the
following repository.

The following changes since commit 885266ac7220a538be2a48f94e8abbe61bab25b1:

  Merge branch 'master' of git://git.pengutronix.de/git/barebox
(2011-06-10 09:30:36 +0200)

are available in the git repository at:

  git://gitorious.org/hfe-repos/barebox.git atmel-mci-support

Hubert Feurstein (2):
      mci: add Atmel AT91 MCI driver
      at91sam9m10g45ek: add mci0 support

Jean-Christophe PLAGNIOL-VILLARD (1):
      at91sam9263ek: add mci1 support

 arch/arm/boards/at91sam9263ek/init.c        |   16 +
 arch/arm/boards/at91sam9m10g45ek/init.c     |    8 +
 arch/arm/configs/at91sam9263ek_defconfig    |    5 +
 arch/arm/configs/at91sam9m10g45ek_defconfig |    5 +
 arch/arm/mach-at91/at91sam9260_devices.c    |   50 +++
 arch/arm/mach-at91/at91sam9261_devices.c    |   50 +++
 arch/arm/mach-at91/at91sam9263_devices.c    |   78 +++++
 arch/arm/mach-at91/at91sam9g45_devices.c    |   91 +++++
 arch/arm/mach-at91/include/mach/board.h     |   10 +
 drivers/mci/Kconfig                         |    7 +
 drivers/mci/Makefile                        |    1 +
 drivers/mci/at91_mci.h                      |  121 +++++++
 drivers/mci/atmel_mci.c                     |  494 +++++++++++++++++++++++++++
 13 files changed, 936 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel_mci.c

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
