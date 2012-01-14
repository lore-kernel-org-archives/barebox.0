Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm4xG-0003Pr-CN
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:51:40 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CA0BF1008F3A
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:53:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:51:08 +0100
Message-Id: <1326552668-8859-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
References: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] omap343xdsp: move to arch/arm/boards/omap343xdsp
To: barebox@lists.infradead.org

this will allow to create it's own env/config

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    2 +-
 arch/arm/boards/omap/Makefile                      |   23 --------------------
 arch/arm/boards/omap/env/bin/init                  |    1 -
 arch/arm/boards/omap343xdsp/Makefile               |    1 +
 .../{omap/board-sdp343x.c => omap343xdsp/board.c}  |    0
 arch/arm/boards/{omap => omap343xdsp}/config.h     |   22 ++++--------------
 6 files changed, 7 insertions(+), 42 deletions(-)
 delete mode 100644 arch/arm/boards/omap/Makefile
 delete mode 100644 arch/arm/boards/omap/env/bin/init
 create mode 100644 arch/arm/boards/omap343xdsp/Makefile
 rename arch/arm/boards/{omap/board-sdp343x.c => omap343xdsp/board.c} (100%)
 rename arch/arm/boards/{omap => omap343xdsp}/config.h (55%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a65c72e..5d7c344 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -87,7 +87,7 @@ board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
-board-$(CONFIG_MACH_OMAP343xSDP)		:= omap
+board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
 board-$(CONFIG_MACH_PANDA)			:= panda
diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
deleted file mode 100644
index f5652ad..0000000
--- a/arch/arm/boards/omap/Makefile
+++ /dev/null
@@ -1,23 +0,0 @@
-# OMAP Board Specific Makefile
-#
-# (C) Copyright 2008
-# OMAP Architecture specific features
-# Texas Instruments, <www.ti.com>
-# Nishanth Menon <x0nishan@ti.com>
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License as
-# published by the Free Software Foundation; either version 2 of
-# the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
-# MA 02111-1307 USA
-
-obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
diff --git a/arch/arm/boards/omap/env/bin/init b/arch/arm/boards/omap/env/bin/init
deleted file mode 100644
index 224a6b4..0000000
--- a/arch/arm/boards/omap/env/bin/init
+++ /dev/null
@@ -1 +0,0 @@
-# Dummy Init environment script
diff --git a/arch/arm/boards/omap343xdsp/Makefile b/arch/arm/boards/omap343xdsp/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/omap343xdsp/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap343xdsp/board.c
similarity index 100%
rename from arch/arm/boards/omap/board-sdp343x.c
rename to arch/arm/boards/omap343xdsp/board.c
diff --git a/arch/arm/boards/omap/config.h b/arch/arm/boards/omap343xdsp/config.h
similarity index 55%
rename from arch/arm/boards/omap/config.h
rename to arch/arm/boards/omap343xdsp/config.h
index 29d2ee2..b908fc0 100644
--- a/arch/arm/boards/omap/config.h
+++ b/arch/arm/boards/omap343xdsp/config.h
@@ -1,17 +1,4 @@
 /**
- * @file
- * @brief provide a wrapper for standard malloc and stack size defines
- *
- * FileName: arch/arm/boards/omap/config.h
- *
- * Standard defines should be configurable for us to move Stack and malloc
- * areas around this defines some basics for that
- */
-/*
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
- *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of
@@ -19,7 +6,7 @@
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
@@ -27,7 +14,8 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
  * MA 02111-1307 USA
  */
-#ifndef __MACH_OMAP_CONFIG_H
-#define __MACH_OMAP_CONFIG_H
 
-#endif /* __MACH_OMAP_CONFIG_H */
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
