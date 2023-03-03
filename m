Delivery-date: Fri, 03 Mar 2023 10:30:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1k2-007O02-RB
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1k0-0004Az-Ao
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y3/SZZf0E9kFzTObVLdUSJeq0tpfUHeBL2rO4bZQJC0=; b=i422bWhFI2toDqkCfmGLXMkTHA
	ktfSOsHF48QKxF4sGEDaBdhqmx4yNlm+xRULMGbbfFQK5XPTFDX7Rc6TDncc/KW6py3fzqTEP1GVc
	060rxDGDgUg1EttKeosTK4OIOkhr4cTDYkevAB77RExOMekV14RVcRykqLq7/ZwUEzOTLNuxjeCXf
	90UyBftpbe26kSeVIpd1tnQvzyjRYVp2R/3QZn1LNrc2pB4j7qtufkxS4mKSgf58M6ubypzCusBmE
	jDuEBhSmu9MvZMZeinN1APtLlh1ZLrkVu1G1ihjvfZy+kw4Buec9RKGpwR9C4cnMK8aCjjlqSwFbe
	F5VGuGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ie-005jW6-4M; Fri, 03 Mar 2023 09:28:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c0-005ea5-0j
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y3/SZZf0E9kFzTObVLdUSJeq0tpfUHeBL2rO4bZQJC0=; b=VUqIiaGOwXoWrzt8XQr8X5yOlo
	DGpUteZ90TGC7owGTZ3vyIj6zvVFE6+pJNURCOAjxK2iWdSX9a2O44mQgL5WvpXjma5LoBjiZf+zQ
	jC9dsN80oyhS0VpasvXUUnIbnvnCeEmk4AEtsa0GatDTmvtakd2rKl0KKRaNrSHZDmMyWZwNOMi3O
	R1P40oAe7qjgR0bEsAD9yB2JwZlKlIhiIdn7zTIS9RxvBNzH12ot+ZKoW23QU64xIXVJvsqK5Fm7P
	Q09hnWHaevErUcTbc+g29ZcpDfwFU+k3P05dQ+1s8Yi+HRhuc1d+bnHkgFtLlAQb6Up+jDOWSlk3h
	m4Dujwsg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdKs-22
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000CX-O7; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001WiF-Tz; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2eN-2O; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:48 +0100
Message-Id: <20230303092131.3063587-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092151_689039_C3053D61 
X-CRM114-Status: GOOD (  13.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/50] ARM: stm32mp: Move mach header files to include/mach/stm32mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all stm32mp specific header files to include/mach/stm32mp/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c                           | 2 +-
 arch/arm/boards/lxa-mc1/lowlevel.c                        | 2 +-
 arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c        | 2 +-
 arch/arm/boards/protonic-stm32mp1/board.c                 | 2 +-
 arch/arm/boards/protonic-stm32mp1/lowlevel.c              | 2 +-
 arch/arm/boards/seeed-odyssey/board.c                     | 2 +-
 arch/arm/boards/seeed-odyssey/lowlevel.c                  | 2 +-
 arch/arm/boards/stm32mp13xx-dk/lowlevel.c                 | 2 +-
 arch/arm/boards/stm32mp15x-ev1/board.c                    | 2 +-
 arch/arm/boards/stm32mp15x-ev1/lowlevel.c                 | 2 +-
 arch/arm/boards/stm32mp15xx-dkx/board.c                   | 2 +-
 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c                | 4 ++--
 arch/arm/include/asm/debug_ll.h                           | 2 ++
 arch/arm/mach-stm32mp/bbu.c                               | 2 +-
 arch/arm/mach-stm32mp/bl33-generic.c                      | 2 +-
 arch/arm/mach-stm32mp/ddrctrl.c                           | 8 ++++----
 arch/arm/mach-stm32mp/init.c                              | 8 ++++----
 drivers/nvmem/bsec.c                                      | 2 +-
 drivers/remoteproc/stm32_rproc.c                          | 2 +-
 .../include/mach => include/mach/stm32mp}/bbu.h           | 0
 .../include/mach => include/mach/stm32mp}/bootsource.h    | 0
 .../include/mach => include/mach/stm32mp}/bsec.h          | 2 +-
 .../include/mach => include/mach/stm32mp}/ddr_regs.h      | 0
 .../include/mach => include/mach/stm32mp}/debug_ll.h      | 2 +-
 .../include/mach => include/mach/stm32mp}/entry.h         | 0
 .../include/mach => include/mach/stm32mp}/revision.h      | 4 ++--
 .../include/mach => include/mach/stm32mp}/smc.h           | 0
 .../include/mach => include/mach/stm32mp}/stm32.h         | 0
 28 files changed, 31 insertions(+), 29 deletions(-)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bbu.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bootsource.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bsec.h (96%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/ddr_regs.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/debug_ll.h (94%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/entry.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/revision.h (97%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/smc.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/stm32.h (100%)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index 3e8158c9b5..b377d4323e 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -3,7 +3,7 @@
 #include <linux/sizes.h>
 #include <init.h>
 #include <asm/memory.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 #include <bootsource.h>
 #include <deep-probe.h>
 #include <of.h>
diff --git a/arch/arm/boards/lxa-mc1/lowlevel.c b/arch/arm/boards/lxa-mc1/lowlevel.c
index 274f824a16..86211bf9d8 100644
--- a/arch/arm/boards/lxa-mc1/lowlevel.c
+++ b/arch/arm/boards/lxa-mc1/lowlevel.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp157c_lxa_mc1_start[];
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
index f76bad86a1..8174e060af 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp157c_phycore_stm32mp1_3_start[];
diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index e8bbbd1bb1..68297debab 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -5,7 +5,7 @@
 #include <bootsource.h>
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 #include <of_device.h>
 #include <deep-probe.h>
 
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
index 583f72dfe7..2fd7f8ba8b 100644
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -3,7 +3,7 @@
 
 #include <common.h>
 #include <debug_ll.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 
 extern char __dtb_z_stm32mp151_prtt1a_start[];
 extern char __dtb_z_stm32mp151_prtt1c_start[];
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index beae8ec24c..af078e451e 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -3,7 +3,7 @@
 #include <linux/sizes.h>
 #include <init.h>
 #include <asm/memory.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 #include <bootsource.h>
 #include <of.h>
 
diff --git a/arch/arm/boards/seeed-odyssey/lowlevel.c b/arch/arm/boards/seeed-odyssey/lowlevel.c
index 5ab1639dfe..a0e6173d49 100644
--- a/arch/arm/boards/seeed-odyssey/lowlevel.c
+++ b/arch/arm/boards/seeed-odyssey/lowlevel.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp157c_odyssey_start[];
diff --git a/arch/arm/boards/stm32mp13xx-dk/lowlevel.c b/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
index ac4fa40e19..4253dde9d6 100644
--- a/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
+++ b/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp135f_dk_start[];
diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index 76c148a752..99a2f911d8 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -3,7 +3,7 @@
 #include <bootsource.h>
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 
 static int ed1_probe(struct device *dev)
 {
diff --git a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c b/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
index 06ff6291b8..13f16f8dcb 100644
--- a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
+++ b/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_stm32mp157c_ev1_start[];
diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index 56e7ac25de..b00781769b 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 
 static int dkx_probe(struct device *dev)
 {
diff --git a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
index 65f4bbb4da..f52a3f4375 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
-#include <mach/revision.h>
+#include <mach/stm32mp/revision.h>
 
 extern char __dtb_z_stm32mp157c_dk2_start[];
 extern char __dtb_z_stm32mp157a_dk1_start[];
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 77a959c93b..e914894a7a 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -18,6 +18,8 @@
 #include <mach/davinci/debug_ll.h>
 #elif defined CONFIG_ARCH_BCM283X
 #include <mach/bcm283x/debug_ll.h>
+#elif defined CONFIG_ARCH_STM32MP
+#include <mach/stm32mp/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
index 545965198f..56fd4941d0 100644
--- a/arch/arm/mach-stm32mp/bbu.c
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -11,7 +11,7 @@
 #include <linux/sizes.h>
 #include <linux/stat.h>
 #include <ioctl.h>
-#include <mach/bbu.h>
+#include <mach/stm32mp/bbu.h>
 #include <libfile.h>
 #include <linux/bitfield.h>
 
diff --git a/arch/arm/mach-stm32mp/bl33-generic.c b/arch/arm/mach-stm32mp/bl33-generic.c
index 6f779b19cf..dda0135a07 100644
--- a/arch/arm/mach-stm32mp/bl33-generic.c
+++ b/arch/arm/mach-stm32mp/bl33-generic.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 
-#include <mach/entry.h>
+#include <mach/stm32mp/entry.h>
 #include <debug_ll.h>
 
 /*
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index ffda1ba61f..ad3d970e9c 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -5,10 +5,10 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/ddr_regs.h>
-#include <mach/entry.h>
-#include <mach/stm32.h>
-#include <mach/revision.h>
+#include <mach/stm32mp/ddr_regs.h>
+#include <mach/stm32mp/entry.h>
+#include <mach/stm32mp/stm32.h>
+#include <mach/stm32mp/revision.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <pbl.h>
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 938dea3c3d..d46762e0b7 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -8,10 +8,10 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/stm32.h>
-#include <mach/bsec.h>
-#include <mach/revision.h>
-#include <mach/bootsource.h>
+#include <mach/stm32mp/stm32.h>
+#include <mach/stm32mp/bsec.h>
+#include <mach/stm32mp/revision.h>
+#include <mach/stm32mp/bootsource.h>
 #include <bootsource.h>
 #include <dt-bindings/pinctrl/stm32-pinfunc.h>
 
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index dfb6ad8bc9..31d9750194 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -14,7 +14,7 @@
 #include <io.h>
 #include <of.h>
 #include <regmap.h>
-#include <mach/bsec.h>
+#include <mach/stm32mp/bsec.h>
 #include <machine_id.h>
 #include <linux/nvmem-provider.h>
 
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index afd78026f5..d81bcabace 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -10,7 +10,7 @@
 #include <driver.h>
 #include <init.h>
 #include <io.h>
-#include <mach/smc.h>
+#include <mach/stm32mp/smc.h>
 #include <mfd/syscon.h>
 #include <of_address.h>
 #include <regmap.h>
diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/include/mach/stm32mp/bbu.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/bbu.h
rename to include/mach/stm32mp/bbu.h
diff --git a/arch/arm/mach-stm32mp/include/mach/bootsource.h b/include/mach/stm32mp/bootsource.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/bootsource.h
rename to include/mach/stm32mp/bootsource.h
diff --git a/arch/arm/mach-stm32mp/include/mach/bsec.h b/include/mach/stm32mp/bsec.h
similarity index 96%
rename from arch/arm/mach-stm32mp/include/mach/bsec.h
rename to include/mach/stm32mp/bsec.h
index 7206a02099..45eb0a3f45 100644
--- a/arch/arm/mach-stm32mp/include/mach/bsec.h
+++ b/include/mach/stm32mp/bsec.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_STM32_BSEC_H__
 #define __MACH_STM32_BSEC_H__
 
-#include <mach/smc.h>
+#include <mach/stm32mp/smc.h>
 
 /* Return status */
 enum bsec_smc {
diff --git a/arch/arm/mach-stm32mp/include/mach/ddr_regs.h b/include/mach/stm32mp/ddr_regs.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/ddr_regs.h
rename to include/mach/stm32mp/ddr_regs.h
diff --git a/arch/arm/mach-stm32mp/include/mach/debug_ll.h b/include/mach/stm32mp/debug_ll.h
similarity index 94%
rename from arch/arm/mach-stm32mp/include/mach/debug_ll.h
rename to include/mach/stm32mp/debug_ll.h
index 22c5c12633..03bb60a239 100644
--- a/arch/arm/mach-stm32mp/include/mach/debug_ll.h
+++ b/include/mach/stm32mp/debug_ll.h
@@ -4,7 +4,7 @@
 #define __MACH_STM32MP1_DEBUG_LL_H
 
 #include <io.h>
-#include <mach/stm32.h>
+#include <mach/stm32mp/stm32.h>
 
 #define DEBUG_LL_UART_ADDR	STM32_UART4_BASE
 
diff --git a/arch/arm/mach-stm32mp/include/mach/entry.h b/include/mach/stm32mp/entry.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/entry.h
rename to include/mach/stm32mp/entry.h
diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/include/mach/stm32mp/revision.h
similarity index 97%
rename from arch/arm/mach-stm32mp/include/mach/revision.h
rename to include/mach/stm32mp/revision.h
index c141b925a1..63bdcb3a4d 100644
--- a/arch/arm/mach-stm32mp/include/mach/revision.h
+++ b/include/mach/stm32mp/revision.h
@@ -6,9 +6,9 @@
 #ifndef __MACH_CPUTYPE_H__
 #define __MACH_CPUTYPE_H__
 
-#include <mach/bsec.h>
+#include <mach/stm32mp/bsec.h>
 #include <asm/io.h>
-#include <mach/stm32.h>
+#include <mach/stm32mp/stm32.h>
 
 /* ID = Device Version (bit31:16) + Device Part Number (RPN) (bit7:0)
  * 157X: 2x Cortex-A7, Cortex-M4, CAN FD, GPU, DSI
diff --git a/arch/arm/mach-stm32mp/include/mach/smc.h b/include/mach/stm32mp/smc.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/smc.h
rename to include/mach/stm32mp/smc.h
diff --git a/arch/arm/mach-stm32mp/include/mach/stm32.h b/include/mach/stm32mp/stm32.h
similarity index 100%
rename from arch/arm/mach-stm32mp/include/mach/stm32.h
rename to include/mach/stm32mp/stm32.h
-- 
2.30.2



