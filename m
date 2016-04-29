Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awC9d-00074t-5n
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 17:24:37 +0000
Received: by mail-pf0-x232.google.com with SMTP id c189so51446544pfb.3
 for <barebox@lists.infradead.org>; Fri, 29 Apr 2016 10:24:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Apr 2016 10:24:00 -0700
Message-Id: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] AIODEV subsystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hello everone,

This series of patches is a combined version of "hwmon" and "iodev"
proposals, submitted several months ago by me and Sascha respectively.

The main purpose of this subsystem is to provde means of exposing
different analog sensors(temperature, voltage, etc.) or, potentially,
"actuators"(e.g. DACs) in a uniformed fashion.

This series introduces the subsystem itself, a helper command to
display values of all registersd sensors ("hwmon"), and a two drivers
leveraging the AIODEV subsystem API (LM75 and TEMPMON).

Additionaly, due to TEMPMON driver's need to obtain calibraion
information from OCOTP, this patchset adds Steffen Trumtrar's port of
NVMEM subsytem from Linux kernel.

Sascha, you didn't like "iodev" as a name, so I changed it and I hope
you like this one better :-)

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
 drivers/aiodev/core.c          | 135 ++++++++
 drivers/aiodev/imx_thermal.c   | 215 ++++++++++++
 drivers/aiodev/lm75.c          | 262 ++++++++++++++
 drivers/nvmem/Kconfig          |   7 +
 drivers/nvmem/Makefile         |   6 +
 drivers/nvmem/core.c           | 749 +++++++++++++++++++++++++++++++++++++++++
 include/aiodev.h               |  39 +++
 include/linux/nvmem-consumer.h | 157 +++++++++
 include/linux/nvmem-provider.h |  49 +++
 19 files changed, 1730 insertions(+), 1 deletion(-)
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
