Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aygSJ-00016I-Qn
 for barebox@lists.infradead.org; Fri, 06 May 2016 14:10:12 +0000
Received: by mail-pf0-x236.google.com with SMTP id y69so49935644pfb.1
 for <barebox@lists.infradead.org>; Fri, 06 May 2016 07:09:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri,  6 May 2016 07:09:24 -0700
Message-Id: <1462543770-4619-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/6] AIODEV subsystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

This is a second, hopefuly improved, version of AIODEV patches. The
changes are the following:

	- Patches fixed to use IIO DT bindings

	- Channel's index is now cached and no O(n) complex lookup is
          perfomed when a channel is queried by its index

	- Added GPL v2 headers

	- Incorporated Sascha's feedback to simplify code

Andrey Smirnov (2):
  commands: Add 'hwmon' command
  aiodev: Add TEMPMON driver

Sascha Hauer (3):
  ocotp: Register OCOTP with 'nvmem'
  drivers: Introduce AIODEV subsystem
  aiodev: Add basic LM75 temperature driver

Steffen Trumtrar (1):
  drivers: add nvmem framework from kernel

 arch/arm/dts/imx6qdl.dtsi      |  14 +
 arch/arm/dts/imx6sx.dtsi       |  14 +
 arch/arm/mach-imx/ocotp.c      |   8 +
 commands/Kconfig               |   8 +
 commands/Makefile              |   1 +
 commands/hwmon.c               |  35 ++
 drivers/Kconfig                |   3 +-
 drivers/Makefile               |   3 +
 drivers/aiodev/Kconfig         |  22 ++
 drivers/aiodev/Makefile        |   4 +
 drivers/aiodev/core.c          | 148 ++++++++
 drivers/aiodev/imx_thermal.c   | 239 +++++++++++++
 drivers/aiodev/lm75.c          | 262 ++++++++++++++
 drivers/nvmem/Kconfig          |   7 +
 drivers/nvmem/Makefile         |   6 +
 drivers/nvmem/core.c           | 749 +++++++++++++++++++++++++++++++++++++++++
 include/aiodev.h               |  59 ++++
 include/linux/nvmem-consumer.h | 157 +++++++++
 include/linux/nvmem-provider.h |  49 +++
 19 files changed, 1787 insertions(+), 1 deletion(-)
 create mode 100644 commands/hwmon.c
 create mode 100644 drivers/aiodev/Kconfig
 create mode 100644 drivers/aiodev/Makefile
 create mode 100644 drivers/aiodev/core.c
 create mode 100644 drivers/aiodev/imx_thermal.c
 create mode 100644 drivers/aiodev/lm75.c
 create mode 100644 drivers/nvmem/Kconfig
 create mode 100644 drivers/nvmem/Makefile
 create mode 100644 drivers/nvmem/core.c
 create mode 100644 include/aiodev.h
 create mode 100644 include/linux/nvmem-consumer.h
 create mode 100644 include/linux/nvmem-provider.h

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
