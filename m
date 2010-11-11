Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGWYL-0007XJ-6I
	for barebox@lists.infradead.org; Thu, 11 Nov 2010 12:47:00 +0000
Date: Thu, 11 Nov 2010 13:43:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101111124332.GA18473@game.jcrosoft.org>
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
Subject: Pull request at91
To: barebox@lists.infradead.org

Hi Sascha

I fix the comment

Please pull

The following changes since commit 6a84a019abf0663c27c2c41e69cf0aea1dce19e9:

  i.MX device macros: Fix typo (2010-11-10 10:46:03 +0100)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git at91

Jean-Christophe PLAGNIOL-VILLARD (6):
      at91: Introduction of at91sam9261 SOC.
      at91: add Ronetix pm9261 board support
      at91: Support for at91sam9g45 and at91sam9m10 series: core chip & board support
      at91sam9260/at91sam9263: use the same id as in the kernel for the uart devices
      at91: Support for at91sam9g10: core chip & board support
      at91: add Ronetix pm9g45 support

 arch/arm/Makefile                                  |    5 +
 arch/arm/boards/at91sam9261ek/Makefile             |    1 +
 arch/arm/boards/at91sam9261ek/config.h             |    6 +
 arch/arm/boards/at91sam9261ek/env/config           |   41 +++
 arch/arm/boards/at91sam9261ek/init.c               |  174 ++++++++++++
 arch/arm/boards/at91sam9m10g45ek/Makefile          |    1 +
 arch/arm/boards/at91sam9m10g45ek/config.h          |    6 +
 arch/arm/boards/at91sam9m10g45ek/env/config        |   41 +++
 arch/arm/boards/at91sam9m10g45ek/init.c            |  116 ++++++++
 arch/arm/boards/pm9261/Makefile                    |    1 +
 arch/arm/boards/pm9261/config.h                    |  110 ++++++++
 arch/arm/boards/pm9261/env/config                  |   41 +++
 arch/arm/boards/pm9261/init.c                      |  168 ++++++++++++
 arch/arm/boards/pm9g45/Makefile                    |    1 +
 arch/arm/boards/pm9g45/config.h                    |    6 +
 arch/arm/boards/pm9g45/env/config                  |   41 +++
 arch/arm/boards/pm9g45/init.c                      |  108 ++++++++
 arch/arm/configs/at91sam9261ek_defconfig           |   49 ++++
 arch/arm/configs/at91sam9g10ek_defconfig           |   41 +++
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   55 ++++
 arch/arm/configs/pm9261_defconfig                  |   52 ++++
 arch/arm/configs/pm9g45_defconfig                  |   55 ++++
 arch/arm/mach-at91/Kconfig                         |   84 ++++++
 arch/arm/mach-at91/Makefile                        |    3 +
 arch/arm/mach-at91/at91sam9260_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9261.c                   |  230 ++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c           |  175 ++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c           |    8 +-
 arch/arm/mach-at91/at91sam9g45.c                   |  277 ++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c           |  242 +++++++++++++++++
 arch/arm/mach-at91/include/mach/at91sam9261.h      |  109 ++++++++
 .../mach-at91/include/mach/at91sam9261_matrix.h    |   64 +++++
 arch/arm/mach-at91/include/mach/at91sam9_matrix.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |  160 +++++++++++
 .../mach-at91/include/mach/at91sam9g45_matrix.h    |  153 +++++++++++
 arch/arm/mach-at91/include/mach/cpu.h              |   10 +
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +-
 arch/arm/mach-at91/lowlevel_init.S                 |    2 +-
 38 files changed, 2640 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9261ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9261ek/config.h
 create mode 100644 arch/arm/boards/at91sam9261ek/env/config
 create mode 100644 arch/arm/boards/at91sam9261ek/init.c
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/config.h
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/config
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/init.c
 create mode 100644 arch/arm/boards/pm9261/Makefile
 create mode 100644 arch/arm/boards/pm9261/config.h
 create mode 100644 arch/arm/boards/pm9261/env/config
 create mode 100644 arch/arm/boards/pm9261/init.c
 create mode 100644 arch/arm/boards/pm9g45/Makefile
 create mode 100644 arch/arm/boards/pm9g45/config.h
 create mode 100644 arch/arm/boards/pm9g45/env/config
 create mode 100644 arch/arm/boards/pm9g45/init.c
 create mode 100644 arch/arm/configs/at91sam9261ek_defconfig
 create mode 100644 arch/arm/configs/at91sam9g10ek_defconfig
 create mode 100644 arch/arm/configs/at91sam9m10g45ek_defconfig
 create mode 100644 arch/arm/configs/pm9261_defconfig
 create mode 100644 arch/arm/configs/pm9g45_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9261.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_devices.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
