Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gaczR-0004qP-2T
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 08:50:34 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 22 Dec 2018 09:50:12 +0100
Message-Id: <20181222085012.9852-3-linux@rempel-privat.de>
In-Reply-To: <20181222085012.9852-1-linux@rempel-privat.de>
References: <20181222085012.9852-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 3/3] MIPS: update to GPL-2.0-or-later for files copyrighted
 by me
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/8devices-lima/lowlevel.S               | 2 +-
 arch/mips/boards/dptechnics-dpt-module/lowlevel.S       | 2 +-
 arch/mips/boards/netgear-wg102/include/board/debug_ll.h | 2 +-
 arch/mips/boards/tplink-wdr4300/lowlevel.S              | 2 +-
 arch/mips/mach-ath79/bbu.c                              | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boards/8devices-lima/lowlevel.S
index f33cfe4d9..b53b23b42 100644
--- a/arch/mips/boards/8devices-lima/lowlevel.S
+++ b/arch/mips/boards/8devices-lima/lowlevel.S
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
  */
diff --git a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
index 801c51909..28b8f4fac 100644
--- a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
+++ b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
  */
diff --git a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
index b0c1cd173..cc3b1d74b 100644
--- a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
+++ b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
  */
diff --git a/arch/mips/boards/tplink-wdr4300/lowlevel.S b/arch/mips/boards/tplink-wdr4300/lowlevel.S
index 4d7301cb7..461b257f4 100644
--- a/arch/mips/boards/tplink-wdr4300/lowlevel.S
+++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
  */
diff --git a/arch/mips/mach-ath79/bbu.c b/arch/mips/mach-ath79/bbu.c
index 36214798c..0f64e6195 100644
--- a/arch/mips/mach-ath79/bbu.c
+++ b/arch/mips/mach-ath79/bbu.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2017 Oleksij Rempel <linux@rempel-privat.de>
  */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
