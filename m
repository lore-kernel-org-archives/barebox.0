Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kveo4-00042j-Tc
 for barebox@lists.infradead.org; Sat, 02 Jan 2021 11:10:49 +0000
Received: from geraet.fritz.box (muedsl-82-207-204-096.citykom.de
 [82.207.204.96]) (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1DACA60004
 for <barebox@lists.infradead.org>; Sat,  2 Jan 2021 11:10:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  2 Jan 2021 12:10:39 +0100
Message-Id: <20210102111039.2219861-1-ahmad@a3f.at>
In-Reply-To: <20210101225228.2166084-3-ahmad@a3f.at>
References: <20210101225228.2166084-3-ahmad@a3f.at>
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
Subject: [PATCH] fixup! video: implement bochs dispi / QEMU VGA driver for PCI
 and ISA
To: barebox@lists.infradead.org

Fix few comments and while at it, replace a -1 error with a more
descriptive error code. No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/bochs/Kconfig     | 2 ++
 drivers/video/bochs/Makefile    | 2 ++
 drivers/video/bochs/bochs_hw.c  | 6 ++++--
 drivers/video/bochs/bochs_hw.h  | 2 ++
 drivers/video/bochs/bochs_isa.c | 2 +-
 drivers/video/bochs/bochs_pci.c | 2 +-
 6 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/video/bochs/Kconfig b/drivers/video/bochs/Kconfig
index e23e68f1126c..ae5d38a8ad46 100644
--- a/drivers/video/bochs/Kconfig
+++ b/drivers/video/bochs/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config DRIVER_VIDEO_BOCHS
 	select DRIVER_VIDEO_EDID
 	bool
diff --git a/drivers/video/bochs/Makefile b/drivers/video/bochs/Makefile
index 78ec1fe0ca81..3ab7ade8a180 100644
--- a/drivers/video/bochs/Makefile
+++ b/drivers/video/bochs/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += bochs_hw.o
 obj-$(CONFIG_DRIVER_VIDEO_BOCHS_PCI) += bochs_pci.o
 obj-$(CONFIG_DRIVER_VIDEO_BOCHS_ISA) += bochs_isa.o
diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
index 4f908a60318d..252350aebb5a 100644
--- a/drivers/video/bochs/bochs_hw.c
+++ b/drivers/video/bochs/bochs_hw.c
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: Copyright (c) 2020 Ahmad Fatoum, Pengutronix
 /*
- *  PCI Driver for VGA with the Bochs VBE / QEMU stdvga extensions.
+ *  Driver for VGA with the Bochs VBE / QEMU stdvga extensions.
+ *
+ *  Based on the Linux v5.11-rc1 bochs-dispi DRM driver.
  */
 
 #include <common.h>
@@ -125,7 +127,7 @@ static int bochs_hw_load_edid(struct bochs *bochs)
 	/* check header to detect whenever edid support is enabled in qemu */
 	if (!edid_check_header(edid)) {
 		free(edid);
-		return -1;
+		return -EILSEQ;
 	}
 
 	for (i = EDID_HEADER_END + 1; i < EDID_LENGTH; i++)
diff --git a/drivers/video/bochs/bochs_hw.h b/drivers/video/bochs/bochs_hw.h
index 36c2cc1cc376..420b58f4dad6 100644
--- a/drivers/video/bochs/bochs_hw.h
+++ b/drivers/video/bochs/bochs_hw.h
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
 #ifndef BOCHS_HW_H
 #define BOCHS_HW_H
 
diff --git a/drivers/video/bochs/bochs_isa.c b/drivers/video/bochs/bochs_isa.c
index 7f75803baa0c..f273ac5f74a8 100644
--- a/drivers/video/bochs/bochs_isa.c
+++ b/drivers/video/bochs/bochs_isa.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: Copyright (c) 2020 Ahmad Fatoum, Pengutronix
 /*
- *  ISA Driver for VGA with the Bochs VBE / QEMU stdvga extensions.
+ *  ISA driver entry point for VGA with the Bochs VBE / QEMU stdvga extensions.
  */
 
 #include <common.h>
diff --git a/drivers/video/bochs/bochs_pci.c b/drivers/video/bochs/bochs_pci.c
index 39f582029d35..28785e1c0667 100644
--- a/drivers/video/bochs/bochs_pci.c
+++ b/drivers/video/bochs/bochs_pci.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: Copyright (c) 2020 Ahmad Fatoum, Pengutronix
 /*
- *  PCI Driver for VGA with the Bochs VBE / QEMU stdvga extensions.
+ *  PCI driver entry point for VGA with the Bochs VBE / QEMU stdvga extensions.
  */
 
 #include <common.h>
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
