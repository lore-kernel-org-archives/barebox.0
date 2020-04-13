Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttN-0005fw-3Y
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttL-0003Ts-9a
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttK-0005Eu-62
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:54 +0200
Message-Id: <20200413075204.17544-12-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/21] clk: migrate to SPDX-License-Identifier use
To: barebox@lists.infradead.org

Some of these are a product of source sync with Linux, the other were
done with macro assistance by searching for /later/, deleting license text,
adding appropriate SPDX-License-Identifier and manual post-review.

Devices without a license indicated where assumed GPL-2.0-only according
with the project's license.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig                     |  1 +
 drivers/clk/Makefile                    |  1 +
 drivers/clk/at91/Makefile               |  1 +
 drivers/clk/at91/clk-generated.c        |  7 +------
 drivers/clk/at91/clk-h32mx.c            |  7 +------
 drivers/clk/at91/clk-main.c             |  7 +------
 drivers/clk/at91/clk-master.c           |  7 +------
 drivers/clk/at91/clk-peripheral.c       |  7 +------
 drivers/clk/at91/clk-pll.c              |  7 +------
 drivers/clk/at91/clk-plldiv.c           |  7 +------
 drivers/clk/at91/clk-programmable.c     |  7 +------
 drivers/clk/at91/clk-slow.c             |  7 +------
 drivers/clk/at91/clk-smd.c              |  7 +------
 drivers/clk/at91/clk-system.c           |  7 +------
 drivers/clk/at91/clk-usb.c              |  7 +------
 drivers/clk/at91/clk-utmi.c             |  7 +------
 drivers/clk/at91/pmc.c                  |  7 +------
 drivers/clk/at91/pmc.h                  |  6 +-----
 drivers/clk/at91/sckc.c                 |  7 +------
 drivers/clk/clk-ar933x.c                | 13 +------------
 drivers/clk/clk-ar9344.c                | 10 +---------
 drivers/clk/clk-composite.c             | 13 +------------
 drivers/clk/clk-conf.c                  |  5 +----
 drivers/clk/clk-divider.c               | 12 +-----------
 drivers/clk/clk-fixed-factor.c          | 12 +-----------
 drivers/clk/clk-fixed.c                 | 12 +-----------
 drivers/clk/clk-fractional-divider.c    |  5 +----
 drivers/clk/clk-gate-shared.c           | 12 +-----------
 drivers/clk/clk-gate.c                  | 12 +-----------
 drivers/clk/clk-gpio.c                  | 12 +-----------
 drivers/clk/clk-mux.c                   | 12 +-----------
 drivers/clk/clk-qoric.c                 |  5 +----
 drivers/clk/clk.c                       | 12 +-----------
 drivers/clk/clkdev.c                    |  5 +----
 drivers/clk/imx/Makefile                |  1 +
 drivers/clk/imx/clk-cpu.c               |  8 +-------
 drivers/clk/imx/clk-frac-pll.c          |  8 +-------
 drivers/clk/imx/clk-gate-exclusive.c    |  5 +----
 drivers/clk/imx/clk-gate2.c             | 12 +-----------
 drivers/clk/imx/clk-imx1.c              | 14 +-------------
 drivers/clk/imx/clk-imx21.c             | 15 +--------------
 drivers/clk/imx/clk-imx25.c             | 15 +--------------
 drivers/clk/imx/clk-imx27.c             |  1 +
 drivers/clk/imx/clk-imx31.c             | 14 +-------------
 drivers/clk/imx/clk-imx35.c             |  6 +-----
 drivers/clk/imx/clk-imx5.c              |  6 +-----
 drivers/clk/imx/clk-imx6.c              |  8 +-------
 drivers/clk/imx/clk-imx6sl.c            |  8 +-------
 drivers/clk/imx/clk-imx6sx.c            |  8 +-------
 drivers/clk/imx/clk-imx6ul.c            |  8 +-------
 drivers/clk/imx/clk-imx7.c              | 10 ++--------
 drivers/clk/imx/clk-pfd.c               |  8 +-------
 drivers/clk/imx/clk-pllv1.c             | 14 ++------------
 drivers/clk/imx/clk-pllv2.c             | 14 ++------------
 drivers/clk/imx/clk-pllv3.c             | 14 ++------------
 drivers/clk/imx/clk-sccg-pll.c          |  8 +-------
 drivers/clk/imx/clk-vf610.c             |  7 +------
 drivers/clk/imx/clk.c                   |  1 +
 drivers/clk/imx/clk.h                   |  1 +
 drivers/clk/mvebu/Makefile              |  1 +
 drivers/clk/mvebu/armada-370.c          |  5 +----
 drivers/clk/mvebu/armada-38x.c          |  5 +----
 drivers/clk/mvebu/armada-xp.c           |  5 +----
 drivers/clk/mvebu/common.c              |  5 +----
 drivers/clk/mvebu/common.h              |  5 +----
 drivers/clk/mvebu/corediv.c             |  5 +----
 drivers/clk/mvebu/dove.c                |  5 +----
 drivers/clk/mvebu/kirkwood.c            |  5 +----
 drivers/clk/mxs/Makefile                |  1 +
 drivers/clk/mxs/clk-div.c               |  8 +-------
 drivers/clk/mxs/clk-frac.c              |  8 +-------
 drivers/clk/mxs/clk-imx23.c             | 14 +-------------
 drivers/clk/mxs/clk-imx28.c             | 14 +-------------
 drivers/clk/mxs/clk-lcdif.c             |  1 +
 drivers/clk/mxs/clk-pll.c               |  8 +-------
 drivers/clk/mxs/clk-ref.c               |  8 +-------
 drivers/clk/mxs/clk.h                   |  1 +
 drivers/clk/rockchip/Makefile           |  1 +
 drivers/clk/rockchip/clk-cpu.c          |  5 +----
 drivers/clk/rockchip/clk-pll.c          | 11 +----------
 drivers/clk/rockchip/clk-rk3188.c       | 11 +----------
 drivers/clk/rockchip/clk-rk3288.c       | 11 +----------
 drivers/clk/rockchip/clk.c              | 11 +----------
 drivers/clk/rockchip/clk.h              | 11 +----------
 drivers/clk/socfpga/Makefile            |  1 +
 drivers/clk/socfpga/clk-gate-a10.c      | 13 +------------
 drivers/clk/socfpga/clk-periph-a10.c    | 13 +------------
 drivers/clk/socfpga/clk-pll-a10.c       | 13 +------------
 drivers/clk/socfpga/clk.c               | 10 +---------
 drivers/clk/socfpga/clk.h               | 11 +----------
 drivers/clk/tegra/Makefile              |  1 +
 drivers/clk/tegra/clk-divider.c         | 13 +------------
 drivers/clk/tegra/clk-periph.c          | 13 +------------
 drivers/clk/tegra/clk-pll-out.c         | 13 +------------
 drivers/clk/tegra/clk-pll.c             | 13 +------------
 drivers/clk/tegra/clk-tegra124.c        | 13 +------------
 drivers/clk/tegra/clk-tegra20.c         | 13 +------------
 drivers/clk/tegra/clk-tegra30.c         | 13 +------------
 drivers/clk/tegra/clk.c                 | 13 +------------
 drivers/clk/tegra/clk.h                 | 13 +------------
 drivers/clk/vexpress/Makefile           |  1 +
 drivers/clk/vexpress/clk-sp810.c        | 10 +---------
 drivers/clk/vexpress/clk-vexpress-osc.c | 11 +----------
 drivers/clk/zynq/Makefile               |  1 +
 drivers/clk/zynq/clkc.c                 | 13 +------------
 drivers/clk/zynqmp/Makefile             |  1 +
 include/linux/clk/at91_pmc.h            |  6 +-----
 107 files changed, 111 insertions(+), 756 deletions(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index dedbf6c4dda5..c05e06565192 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 config HAVE_CLK
 	bool
 
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 8160620dc618..09032744a0f7 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
 				clk-fractional-divider.o clk-conf.o \
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index bf9b27f0f4b3..593d34e3487e 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # Makefile for at91 specific clk
 #
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 396c35f3a7b3..909c4a4530f8 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -1,14 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2015 Atmel Corporation,
  *                     Nicolas Ferre <nicolas.ferre@atmel.com>
  *
  * Based on clk-programmable & clk-peripheral drivers by Boris BREZILLON.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index 31906a9e29c4..fcca37cb52c4 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -1,15 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-h32mx.c
  *
  *  Copyright (C) 2014 Atmel
  *
  * Alexandre Belloni <alexandre.belloni@free-electrons.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index abae35566c2f..cd61a35c69fd 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 #include <common.h>
 #include <clock.h>
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index f7a0fb1d182b..6bd733ef4194 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 #include <common.h>
 #include <clock.h>
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 00852672da37..9c3791dc5242 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index bc504e8a9510..acf2fae50ea9 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 98d79ef5992e..5a9686dc7856 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index 857ede1ca93a..e002c8af47f7 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index d19f7e15ac42..960678db1c96 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -1,13 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * drivers/clk/at91/clk-slow.c
  *
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index e81f0d4d4e89..4a541322d459 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index 8be5c7f2b395..a8f30539400e 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 #include <common.h>
 #include <clock.h>
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 0eb0b1f5bccd..334bd5c88ee7 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index c40af34d0deb..3d71cd615fa2 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index 86a50b680b8d..8df3a51f82bf 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <module.h>
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index b553ea259c65..c4de1e802e4e 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -1,12 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * drivers/clk/at91/pmc.h
  *
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
  */
 
 #ifndef __PMC_H_
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index bac28999eac9..4a03819f0e30 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -1,13 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * drivers/clk/at91/sckc.c
  *
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index f5cfd39cd81f..875e9f506f75 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
  *
  * Based on the Linux ath79 clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index c3c49fb1093a..ad0e5c10e990 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -1,14 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
  */
 
 #include <common.h>
diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index e21ab9845321..e0f543bc1c98 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Taken from linux/drivers/clk/
  *
  * Copyright (c) 2013 NVIDIA CORPORATION.  All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/clk-conf.c b/drivers/clk/clk-conf.c
index 93271b4f992e..0bd99993cc4b 100644
--- a/drivers/clk/clk-conf.c
+++ b/drivers/clk/clk-conf.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Samsung Electronics Co., Ltd.
  * Sylwester Nawrocki <s.nawrocki@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 78b4153171d5..cad902fd324b 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-divider.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 021c43339feb..e7738775f80d 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-fixed-factor.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 411f6fe4736a..d7ac59c4d48a 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-fixed.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <malloc.h>
diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 1504f7a72868..6f0763b05f97 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Intel Corporation
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  * Adjustable fractional divider clock implementation.
  * Output rate = (m / n) * parent_rate.
  */
diff --git a/drivers/clk/clk-gate-shared.c b/drivers/clk/clk-gate-shared.c
index c3b678a311e9..54c002e836fe 100644
--- a/drivers/clk/clk-gate-shared.c
+++ b/drivers/clk/clk-gate-shared.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-gate-shared.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2017 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index b2b160555e6f..59dd643b9912 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-gate.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 352c85dfe210..1345fbc9ea9a 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -1,19 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-gpio.c - clock that can be enabled and disabled via GPIO output
  * Based on Linux clk support
  *
  * Copyright (c) 2018 Nikita Yushchenko <nikita.yoush@cogentembedded.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <malloc.h>
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index e9cb6140055b..a4743c51b003 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-mux.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index c40c6e90d96b..2ffc7613fa53 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2013 Freescale Semiconductor, Inc.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  * clock driver for Freescale QorIQ SoCs.
  */
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b27ad6d24986..4386c95aa9ec 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk.c - generic barebox clock support. Based on Linux clk support
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 #include <errno.h>
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index f67a5c4d98d5..462a7e16ef63 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * drivers/clk/lookup_clkdev.c
  *
  *  Copyright (C) 2008 Russell King.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  * Helper for the clk API to assist looking up a struct clk.
  */
 
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index e627ef4a090a..b1ce9d3d3e91 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_COMMON_CLK) +=	\
 	clk-composite-8m.o	\
 	clk-pllv1.o		\
diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index 473500131e4c..13b2dfc9ad87 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2014 Lucas Stach <l.stach@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index def870e24411..b3d665cff992 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2017 NXP.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-gate-exclusive.c b/drivers/clk/imx/clk-gate-exclusive.c
index db88db0237e3..4bf4de8bd360 100644
--- a/drivers/clk/imx/clk-gate-exclusive.c
+++ b/drivers/clk/imx/clk-gate-exclusive.c
@@ -1,9 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2014 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 8d5ed7e05c1c..88eaae8db3ae 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * clk-gate2.c - barebox 2-bit clock support. Based on Linux clk support
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index 9a817c36c0ac..258b9dd582c1 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -1,18 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index 546461b8eeb6..0026a55f8669 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
  * Copyright 2008 Juergen Beisert, kernel@pengutronix.de
  * Copyright 2008 Martin Fuzzey, mfuzzey@gmail.com
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301, USA.
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index ce4fbed68cab..7c2140c215a6 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -1,19 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2009 by Sascha Hauer, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301, USA.
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 4b632442116c..cba655c6fea9 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index dbb5c15d1243..5fded58b114a 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -1,18 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2012 Sascha Hauer <kernel@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index af6c4058d7c5..17e2ae5e6918 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -1,10 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  */
 #include <common.h>
 #include <init.h>
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index 69ac2f5e3ed2..6a07816427aa 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -1,10 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  */
 #include <common.h>
 #include <init.h>
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index ed29e8c271ad..b8b37a0c6832 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2011 Freescale Semiconductor, Inc.
  * Copyright 2011 Linaro Ltd.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 89ede769f854..6ccc36e3b922 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2014 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <dt-bindings/clock/imx6sl-clock.h>
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index d758957d4d09..d682e41e7c8b 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2014 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <dt-bindings/clock/imx6sx-clock.h>
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 35483efde6ca..79b52b7ce936 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2015 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 781bc43e09d3..1f15d7ef11bc 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2014-2015 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
@@ -866,4 +860,4 @@ static int imx7_ccm_init(void)
 {
 	return platform_driver_register(&imx7_ccm_driver);
 }
-core_initcall(imx7_ccm_init);
\ No newline at end of file
+core_initcall(imx7_ccm_init);
diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
index 8f6d5ad7a803..eb2b1700ae93 100644
--- a/drivers/clk/imx/clk-pfd.c
+++ b/drivers/clk/imx/clk-pfd.c
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
  * Copyright 2012 Linaro Ltd.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
index f992134f7ea7..9b5d28f22fbe 100644
--- a/drivers/clk/imx/clk-pllv1.c
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -1,15 +1,5 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
index 5ba07fa5e6c1..56005ca725e2 100644
--- a/drivers/clk/imx/clk-pllv2.c
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -1,15 +1,5 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index 44642e88f302..e10b61b04055 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -1,15 +1,5 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index bbfd95a11c61..aabab27a22a9 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2017 NXP.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 4f7e097a8945..1bd1fe5c44d8 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -1,11 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012-2013 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 7488dfcdc850..0994a149adf3 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 39eff9ee74ae..5cd2c56a1b6c 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __IMX_CLK_H
 #define __IMX_CLK_H
 
diff --git a/drivers/clk/mvebu/Makefile b/drivers/clk/mvebu/Makefile
index 53c759e4ef17..63beb80722a6 100644
--- a/drivers/clk/mvebu/Makefile
+++ b/drivers/clk/mvebu/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y				+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370.o corediv.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-xp.o corediv.o
diff --git a/drivers/clk/mvebu/armada-370.c b/drivers/clk/mvebu/armada-370.c
index 8d02ed93d905..d2ad1ba0cc62 100644
--- a/drivers/clk/mvebu/armada-370.c
+++ b/drivers/clk/mvebu/armada-370.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Armada 370 SoC clocks
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/armada-38x.c b/drivers/clk/mvebu/armada-38x.c
index d2d7c2a22576..627de7de6ce0 100644
--- a/drivers/clk/mvebu/armada-38x.c
+++ b/drivers/clk/mvebu/armada-38x.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Armada 380/385 SoC clocks
  *
@@ -6,10 +7,6 @@
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
  * Andrew Lunn <andrew@lunn.ch>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/armada-xp.c b/drivers/clk/mvebu/armada-xp.c
index ffe4f2736d5e..d79f846d3f0e 100644
--- a/drivers/clk/mvebu/armada-xp.c
+++ b/drivers/clk/mvebu/armada-xp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Armada XP SoC clocks
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 609e63697ce9..c7de00ac77de 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell EBU SoC common clock handling
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/common.h b/drivers/clk/mvebu/common.h
index a3b27247f79e..8256d9c2f08e 100644
--- a/drivers/clk/mvebu/common.h
+++ b/drivers/clk/mvebu/common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Marvell EBU SoC common clock handling
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __CLK_MVEBU_COMMON_H_
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 87b1f8bd7c58..f740161e4540 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MVEBU Core divider clock
  *
@@ -6,10 +7,6 @@
  * Based on Linux driver
  *   Copyright (C) 2013 Marvell
  *   Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/dove.c b/drivers/clk/mvebu/dove.c
index 9bdf89a62338..ca9af2671d13 100644
--- a/drivers/clk/mvebu/dove.c
+++ b/drivers/clk/mvebu/dove.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Dove SoC clocks
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mvebu/kirkwood.c b/drivers/clk/mvebu/kirkwood.c
index 5024baf18e1c..252bf2c69a95 100644
--- a/drivers/clk/mvebu/kirkwood.c
+++ b/drivers/clk/mvebu/kirkwood.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Kirkwood SoC clocks
  *
@@ -5,10 +6,6 @@
  *
  * Based on Linux Marvell MVEBU clock providers
  *   Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/Makefile b/drivers/clk/mxs/Makefile
index fb4e5dbeead8..e1e3e5d70f94 100644
--- a/drivers/clk/mxs/Makefile
+++ b/drivers/clk/mxs/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_ARCH_MXS) += clk-ref.o clk-pll.o clk-frac.o clk-div.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += clk-lcdif.o
 
diff --git a/drivers/clk/mxs/clk-div.c b/drivers/clk/mxs/clk-div.c
index 797e5a274fd0..104587a8dce8 100644
--- a/drivers/clk/mxs/clk-div.c
+++ b/drivers/clk/mxs/clk-div.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk-frac.c b/drivers/clk/mxs/clk-frac.c
index 7aa85045a410..21e572ff6f3a 100644
--- a/drivers/clk/mxs/clk-frac.c
+++ b/drivers/clk/mxs/clk-frac.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index 526efc52beaf..dae8e348e21b 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -1,18 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 12bc9dd97741..4adb1c6866c9 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -1,18 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk-lcdif.c b/drivers/clk/mxs/clk-lcdif.c
index 86dfe890f995..246e68068dc0 100644
--- a/drivers/clk/mxs/clk-lcdif.c
+++ b/drivers/clk/mxs/clk-lcdif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <io.h>
 #include <linux/clk.h>
diff --git a/drivers/clk/mxs/clk-pll.c b/drivers/clk/mxs/clk-pll.c
index 1b1c9b35434b..7527a777311a 100644
--- a/drivers/clk/mxs/clk-pll.c
+++ b/drivers/clk/mxs/clk-pll.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
index 8d0be05615c9..16a2fc299122 100644
--- a/drivers/clk/mxs/clk-ref.c
+++ b/drivers/clk/mxs/clk-ref.c
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <common.h>
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index 00895de50718..60f2408cbadb 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MXS_CLK_H
 #define __MXS_CLK_H
 
diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index e43f57304c1d..5fcf0c25150c 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y += clk-cpu.o clk-pll.o clk.o
 obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 226b8192425c..71a64f71f6ff 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -6,10 +7,6 @@
  * Copyright (c) 2014 Samsung Electronics Co., Ltd.
  * Author: Thomas Abraham <thomas.ab@samsung.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
  * A CPU clock is defined as a clock supplied to a CPU or a group of CPUs.
  * The CPU clock is typically derived from a hierarchy of clock
  * blocks which includes mux and divider blocks. There are a number of other
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 39ccf0a22673..8d3fd6cf1c1d 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1,16 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <asm-generic/div64.h>
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 93407399459a..61dfb27ef4f4 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -1,16 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <common.h>
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index dcfaae24070e..b6c122d39366 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -1,16 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <common.h>
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 9e0cbadd57ec..833e9bed0ece 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -8,16 +9,6 @@
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  * Copyright (c) 2013 Linaro Ltd.
  * Author: Thomas Abraham <thomas.ab@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <common.h>
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index d6798a905513..006225b7e846 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -8,16 +9,6 @@
  * Copyright (c) 2013 Samsung Electronics Co., Ltd.
  * Copyright (c) 2013 Linaro Ltd.
  * Author: Thomas Abraham <thomas.ab@samsung.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef CLK_ROCKCHIP_CLK_H
diff --git a/drivers/clk/socfpga/Makefile b/drivers/clk/socfpga/Makefile
index 341e6433e560..0a195cbf3f8e 100644
--- a/drivers/clk/socfpga/Makefile
+++ b/drivers/clk/socfpga/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= clk.o
 
 obj-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += clk-gate-a10.o clk-periph-a10.o clk-pll-a10.o
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index 07f6026c2e8d..401eb20d243b 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -1,17 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Altera Corporation. All rights reserved
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
index 9dd7fc9c2552..4ef00052e4f6 100644
--- a/drivers/clk/socfpga/clk-periph-a10.c
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -1,17 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Altera Corporation. All rights reserved
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
index 4dae3e537bc2..12d6ef6fc327 100644
--- a/drivers/clk/socfpga/clk-pll-a10.c
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -1,17 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Altera Corporation. All rights reserved
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 #include <common.h>
 #include <io.h>
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index ade608ffe314..1d34b15caf48 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -1,14 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <common.h>
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index cea3fcf5ee9a..9d291f72431a 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -1,17 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2013, Steffen Trumtrar <s.trumtrar@pengutronix.de>
  *
  * based on drivers/clk/tegra/clk.h
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
  */
 
 #ifndef __SOCFPGA_CLK_H
diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index 75569c79fe74..343eb8ab83d4 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= clk.o
 obj-y	+= clk-divider.o
 obj-y	+= clk-periph.o
diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
index 0ddd64ecd634..28a1342bbf2c 100644
--- a/drivers/clk/tegra/clk-divider.c
+++ b/drivers/clk/tegra/clk-divider.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index b4182861e787..0cd5200e84b0 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-pll-out.c b/drivers/clk/tegra/clk-pll-out.c
index 52d8473d6762..e186275563db 100644
--- a/drivers/clk/tegra/clk-pll-out.c
+++ b/drivers/clk/tegra/clk-pll-out.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index e677effba270..3ac49cae4753 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index cec7b5f80318..f5704b83c529 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 2f843bb9ac12..9fccff61368b 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 77f31d213eb0..3d3a7854ffd2 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
index cb4d92020392..26ff9f258096 100644
--- a/drivers/clk/tegra/clk.c
+++ b/drivers/clk/tegra/clk.c
@@ -1,19 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 10d03573fd0b..5195e6dba4c9 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -1,19 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
  *
  * Based on the Linux Tegra clock code
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 /* struct tegra_clk_frac_div - fractional divider */
diff --git a/drivers/clk/vexpress/Makefile b/drivers/clk/vexpress/Makefile
index c6869bac8365..eae11492ec14 100644
--- a/drivers/clk/vexpress/Makefile
+++ b/drivers/clk/vexpress/Makefile
@@ -1 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= clk-vexpress-osc.o clk-sp810.o
diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
index 959661e19e4c..78ec67fd155b 100644
--- a/drivers/clk/vexpress/clk-sp810.c
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -1,13 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  * Copyright (C) 2013 ARM Limited
  */
 
diff --git a/drivers/clk/vexpress/clk-vexpress-osc.c b/drivers/clk/vexpress/clk-vexpress-osc.c
index c0d6e6066ecd..6a24fa56c3e1 100644
--- a/drivers/clk/vexpress/clk-vexpress-osc.c
+++ b/drivers/clk/vexpress/clk-vexpress-osc.c
@@ -1,13 +1,4 @@
-/*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
 #include <malloc.h>
diff --git a/drivers/clk/zynq/Makefile b/drivers/clk/zynq/Makefile
index 8fedfc77e4dc..a438159ab0a7 100644
--- a/drivers/clk/zynq/Makefile
+++ b/drivers/clk/zynq/Makefile
@@ -1 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y += clkc.o
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index a6d8ba92cabc..1d9d28ea1460 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
  * Copyright (c) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
@@ -7,18 +8,6 @@
  * Copyright (c) 2012 National Instruments
  *
  * Josh Cartwright <josh.cartwright@ni.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 #include <common.h>
 #include <init.h>
diff --git a/drivers/clk/zynqmp/Makefile b/drivers/clk/zynqmp/Makefile
index 9432cd398042..70f10bc22b24 100644
--- a/drivers/clk/zynqmp/Makefile
+++ b/drivers/clk/zynqmp/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-y += clkc.o
 obj-y += clk-pll-zynqmp.o
 obj-y += clk-gate-zynqmp.o
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
index 17f413bbbedf..d02dba1501b7 100644
--- a/include/linux/clk/at91_pmc.h
+++ b/include/linux/clk/at91_pmc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * include/linux/clk/at91_pmc.h
  *
@@ -6,11 +7,6 @@
  *
  * Power Management Controller (PMC) - System peripherals registers.
  * Based on AT91RM9200 datasheet revision E.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
  */
 
 #ifndef AT91_PMC_H
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
