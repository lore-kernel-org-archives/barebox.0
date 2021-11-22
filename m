Delivery-date: Mon, 22 Nov 2021 09:53:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54V-0003ao-1Y
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:53:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54T-0001dY-G7
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:53:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7yGuiK2pKkfzBvHl/v5R2S7wJqCHfrKVRlSAP4D7PY=; b=Wma408XuGz/dBg
	9JFLG/34daAD9Pll9JZZr4yvJReQWywhzYUSJOugYtK8JIDipmRAtRq6pqo2gE5u5l/jKzf2WIzLT
	CduiPQPK2MTfJX87efHtzNWd84pMMBTK4UXFNSOoG0Hu230WvSTVoW0bzChtgBbH5T7cJeC8am5jG
	9q6CeO11kE6Mpb0CIS3Mh3mZTDr2b6gUS0djjyq8TAjMsQHJAKYEWd8FWlGlAD5jeh9kWyF34i/He
	SvcaV2XmwoBY5ccRuYAlEJUE28ex+33qaePoXwQ4KixkXWqEimdaiQPaxZczgSkdUPgQp/5D1aART
	csKY7kr55nxbamkrWCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp536-00FNMA-KY; Mon, 22 Nov 2021 08:51:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5H-Jj
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wJ-Ut; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Ateq-Cu; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:10 +0100
Message-Id: <20211122084732.2597109-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004746_724128_6970E232 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/30] common: move EFI code into new efi/ top level directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, barebox EFI meant EFI payload support on x86. Upcoming changes
will extend barebox to support EFI payload _and_ loader on ARM64.
Prepare for this by renaming files and directories appropriately, so
it's immediately clear whether a file is about paylaod, loader or common
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig                                   | 10 ++--------
 common/Makefile                                  |  4 +---
 common/efi/Kconfig                               | 16 ++++++++++++++++
 common/efi/Makefile                              |  9 +++++----
 common/{efi-devicepath.c => efi/devicepath.c}    |  0
 common/{efi-guid.c => efi/guid.c}                |  0
 common/efi/payload/Makefile                      |  6 ++++++
 .../{ => payload}/env-efi/network/eth0-discover  |  0
 common/efi/{efi-image.c => payload/image.c}      |  2 +-
 common/efi/{efi.c => payload/init.c}             |  2 +-
 common/efi/{efi-iomem.c => payload/iomem.c}      |  0
 drivers/efi/Kconfig                              |  1 +
 12 files changed, 33 insertions(+), 17 deletions(-)
 create mode 100644 common/efi/Kconfig
 rename common/{efi-devicepath.c => efi/devicepath.c} (100%)
 rename common/{efi-guid.c => efi/guid.c} (100%)
 create mode 100644 common/efi/payload/Makefile
 rename common/efi/{ => payload}/env-efi/network/eth0-discover (100%)
 rename common/efi/{efi-image.c => payload/image.c} (99%)
 rename common/efi/{efi.c => payload/init.c} (99%)
 rename common/efi/{efi-iomem.c => payload/iomem.c} (100%)

diff --git a/common/Kconfig b/common/Kconfig
index f4120b2083ee..42240ae8411b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -78,14 +78,6 @@ config MENUTREE
 	select GLOB
 	select GLOB_SORT
 
-config EFI_GUID
-	bool
-	help
-	  With this option a table of EFI guids is compiled in.
-
-config EFI_DEVICEPATH
-	bool
-
 config ARCH_DMA_ADDR_T_64BIT
 	bool
 
@@ -1538,6 +1530,8 @@ config COMPILE_TEST
 
 endmenu
 
+source "common/efi/Kconfig"
+
 config HAS_DEBUG_LL
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index 4b45f678c7de..9ed279806a08 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -63,9 +63,7 @@ obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
-obj-$(CONFIG_EFI_BOOTUP)	+= efi/
-obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
-obj-$(CONFIG_EFI_DEVICEPATH)	+= efi-devicepath.o
+obj-$(CONFIG_EFI)		+= efi/
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
 obj-y				+= file-list.o
diff --git a/common/efi/Kconfig b/common/efi/Kconfig
new file mode 100644
index 000000000000..a0565854c2f5
--- /dev/null
+++ b/common/efi/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menu "EFI (Extensible Firmware Interface) Support"
+
+config EFI
+	bool
+
+config EFI_GUID
+	bool
+	help
+	  With this option a table of EFI guids is compiled in.
+
+config EFI_DEVICEPATH
+	bool
+
+endmenu
diff --git a/common/efi/Makefile b/common/efi/Makefile
index d746fabe2109..1ed5d45c1f5e 100644
--- a/common/efi/Makefile
+++ b/common/efi/Makefile
@@ -1,4 +1,5 @@
-obj-y += efi.o
-obj-y += efi-image.o
-bbenv-y += env-efi
-obj-$(CONFIG_CMD_IOMEM) += efi-iomem.o
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_EFI_BOOTUP)	+= payload/
+obj-$(CONFIG_EFI_GUID)		+= guid.o
+obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
diff --git a/common/efi-devicepath.c b/common/efi/devicepath.c
similarity index 100%
rename from common/efi-devicepath.c
rename to common/efi/devicepath.c
diff --git a/common/efi-guid.c b/common/efi/guid.c
similarity index 100%
rename from common/efi-guid.c
rename to common/efi/guid.c
diff --git a/common/efi/payload/Makefile b/common/efi/payload/Makefile
new file mode 100644
index 000000000000..bcbdda335f06
--- /dev/null
+++ b/common/efi/payload/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += init.o
+obj-y += image.o
+bbenv-y += env-efi
+obj-$(CONFIG_CMD_IOMEM) += iomem.o
diff --git a/common/efi/env-efi/network/eth0-discover b/common/efi/payload/env-efi/network/eth0-discover
similarity index 100%
rename from common/efi/env-efi/network/eth0-discover
rename to common/efi/payload/env-efi/network/eth0-discover
diff --git a/common/efi/efi-image.c b/common/efi/payload/image.c
similarity index 99%
rename from common/efi/efi-image.c
rename to common/efi/payload/image.c
index bd1c58438e84..3c55a457eae3 100644
--- a/common/efi/efi-image.c
+++ b/common/efi/payload/image.c
@@ -1,5 +1,5 @@
 /*
- * efi-image.c - barebox EFI payload support
+ * image.c - barebox EFI payload support
  *
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
diff --git a/common/efi/efi.c b/common/efi/payload/init.c
similarity index 99%
rename from common/efi/efi.c
rename to common/efi/payload/init.c
index 7f12342cf91b..88d0bfa939ec 100644
--- a/common/efi/efi.c
+++ b/common/efi/payload/init.c
@@ -1,5 +1,5 @@
 /*
- * efi.c - barebox EFI payload support
+ * init.c - barebox EFI payload support
  *
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
diff --git a/common/efi/efi-iomem.c b/common/efi/payload/iomem.c
similarity index 100%
rename from common/efi/efi-iomem.c
rename to common/efi/payload/iomem.c
diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
index dd3ac7525f9f..e8abc2709e26 100644
--- a/drivers/efi/Kconfig
+++ b/drivers/efi/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config EFI_BOOTUP
 	bool
+	select EFI
 	select BLOCK
 	select PARTITION_DISK
 	select HW_HAS_PCI
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

