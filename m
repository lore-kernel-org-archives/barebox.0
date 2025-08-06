Delivery-date: Wed, 06 Aug 2025 14:53:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdde-007dqQ-0d
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:53:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujddd-00037E-Hw
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:53:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jsCOfGlOqWRdbqlWwz/CV4WN6Vltk6tqwk/yWe4+NzU=; b=aUWqB3oLGjm0PO92AOFbY+Nhq1
	ACKrhDc8S6BjQUYktpPkf61FSBr4NJwMgZgh7oYnzmWnvFDfMf4aWhGd216RRZ3Lp/mk5bHF1uXS8
	c+GMovo8YumMxtuQqlhoGDazR36QipzSXTqkmQKe++zWZHpCw7Zj5jpy9fjlBXVl9AgWCkj6fyBYB
	4pCGKeYU0TzUOMkXfo0fMGyBWLoYZR8CdfgKZKwlZ9Dk6OOdoICQPj7fV/a8Ut+fp6jfQPzr6a4mb
	rMhctlTA6I74sS2vN0tg/NbV/K8dgQDQ9oHKg2XeG4GXvxCUPwrHegcXizzBw2RGGIdhncRhPFM0o
	10d2ukpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujddC-0000000FDlz-1lOQ;
	Wed, 06 Aug 2025 12:52:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdd9-0000000FDkS-3pqv
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:52:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujdd8-0002yf-8P; Wed, 06 Aug 2025 14:52:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:52:28 +0200
Message-Id: <20250806125229.2804284-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_055231_955801_0E6384F4 
X-CRM114-Status: GOOD (  12.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] tee: optee: merge tee/optee.h and ARM asm/optee.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE is also available for RISC-V, so let's replace the asm/optee.h
header with a generic tee/optee.h header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/tqma6ulx/board.c  |  1 -
 arch/arm/include/asm/optee.h      | 18 ------------------
 arch/arm/mach-imx/imx9.c          |  1 -
 arch/arm/mach-rockchip/rockchip.c |  2 +-
 drivers/soc/imx/soc-imx8m.c       |  1 -
 drivers/tee/optee/of_fixup.c      |  1 -
 include/tee/optee.h               | 17 +++++++++++++++++
 7 files changed, 18 insertions(+), 23 deletions(-)
 delete mode 100644 arch/arm/include/asm/optee.h

diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 0c1af3c18f8d..c4222920d450 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -12,7 +12,6 @@
 #include <of.h>
 #include <string.h>
 #include <linux/clk.h>
-#include <asm/optee.h>
 #include <asm-generic/memory_layout.h>
 
 #include "tqma6ulx.h"
diff --git a/arch/arm/include/asm/optee.h b/arch/arm/include/asm/optee.h
deleted file mode 100644
index f8eb7b4a8b0f..000000000000
--- a/arch/arm/include/asm/optee.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __ARM_OPTEE_H__
-#define __ARM_OPTEE_H__
-
-#include <linux/types.h>
-
-struct device_node;
-
-struct of_optee_fixup_data {
-	const char *method;
-	size_t shm_size;
-};
-
-int of_optee_fixup(struct device_node *root, void *fixup_data);
-
-#endif /* __ARM_OPTEE_H__ */
-
diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index 220951fd1920..dd4fbf099e60 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -9,7 +9,6 @@
 #include <mach/imx/imx9-regs.h>
 #include <tee/optee.h>
 #include <asm-generic/memory_layout.h>
-#include <asm/optee.h>
 #include <mach/imx/scratch.h>
 
 #define SPEED_GRADING_MASK GENMASK(11, 6)
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 3d2ef791d20f..532d794fead1 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
-#include <asm/optee.h>
+#include <tee/optee.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/rockchip/rockchip.h>
 #include <mach/rockchip/bootrom.h>
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 1b47c914de8e..3b83284fcbfd 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -10,7 +10,6 @@
 #include <of_address.h>
 #include <pm_domain.h>
 
-#include <asm/optee.h>
 #include <asm-generic/memory_layout.h>
 
 #include <linux/io.h>
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index f3ccff31e68a..5a3eb094f22d 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -3,7 +3,6 @@
 #include <of.h>
 #include <linux/ioport.h>
 #include <asm/barebox-arm.h>
-#include <asm/optee.h>
 #include <tee/optee.h>
 
 int of_optee_fixup(struct device_node *root, void *_data)
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 943dbb8fdab6..10e829c04f88 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -61,4 +61,21 @@ int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
 
 #endif /* __PBL__ */
 
+struct device_node;
+
+struct of_optee_fixup_data {
+	const char *method;
+	size_t shm_size;
+};
+
+#ifdef CONFIG_OF_FIXUP_OPTEE
+int of_optee_fixup(struct device_node *root, void *fixup_data);
+#else
+static inline int of_optee_fixup(struct device_node *root, void *fixup_data)
+{
+	return -ENOSYS;
+}
+#endif
+
+
 #endif /* _OPTEE_H */
-- 
2.39.5



