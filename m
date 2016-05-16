Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2LfH-0006Ek-Kv
 for barebox@lists.infradead.org; Mon, 16 May 2016 16:46:44 +0000
Received: by mail-pf0-x243.google.com with SMTP id 145so16244953pfz.1
 for <barebox@lists.infradead.org>; Mon, 16 May 2016 09:46:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 May 2016 09:45:55 -0700
Message-Id: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 0/6] AIODEV subsystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

Here's the third version of AIODEV patchset. The change list is the
following:

Changes since v2:

	- TEMPMON driver converted to use existing DT bindings

	- As a result of the above NVMEM subsystem was dropped

	- TEMPMON driver converted to use syscon_base_lookup_by_phandle

Changes since v1:

	- Patches fixed to use IIO DT bindings

	- Channel's index is now cached and no O(n) complex lookup is
          perfomed when a channel is queried by its index

	- Added GPL v2 headers

	- Incorporated Sascha's feedback to simplify code


Andrey Smirnov (5):
  RDU2: Add more peripheral reset code
  commands: Add 'hwmon' command
  syscon: Do not return NULL when driver is not selected
  syscon: Decrease driver registration priority
  aiodev: Add TEMPMON driver

Sascha Hauer (2):
  drivers: Introduce AIODEV subsystem
  aiodev: Add basic LM75 temperature driver

 arch/arm/boards/zii-imx6q-rdu2/board.c |  65 +++++++-
 arch/arm/dts/imx6q-zii-rdu2.dts        |   5 +
 arch/arm/dts/imx6qdl.dtsi              |  14 ++
 arch/arm/dts/imx6sx.dtsi               |  14 ++
 commands/Kconfig                       |   8 +
 commands/Makefile                      |   1 +
 commands/hwmon.c                       |  35 +++++
 drivers/Kconfig                        |   1 +
 drivers/Makefile                       |   2 +
 drivers/aiodev/Kconfig                 |  22 +++
 drivers/aiodev/Makefile                |   4 +
 drivers/aiodev/core.c                  | 148 +++++++++++++++++++
 drivers/aiodev/imx_thermal.c           | 216 +++++++++++++++++++++++++++
 drivers/aiodev/lm75.c                  | 262 +++++++++++++++++++++++++++++++++
 drivers/mfd/syscon.c                   |   2 +-
 include/aiodev.h                       |  59 ++++++++
 include/mfd/syscon.h                   |   4 +-
 17 files changed, 851 insertions(+), 11 deletions(-)
 create mode 100644 commands/hwmon.c
 create mode 100644 drivers/aiodev/Kconfig
 create mode 100644 drivers/aiodev/Makefile
 create mode 100644 drivers/aiodev/core.c
 create mode 100644 drivers/aiodev/imx_thermal.c
 create mode 100644 drivers/aiodev/lm75.c
 create mode 100644 include/aiodev.h

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
