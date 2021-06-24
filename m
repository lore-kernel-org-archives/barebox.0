Delivery-date: Thu, 24 Jun 2021 17:03:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsg-00056s-CB
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:03:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsf-0001oC-Cm
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:03:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzwn1z+7udBK/h3qA9jLhwfQsDmx5g2O/F5x36U5oA0=; b=xWTQFLFGR7yfPF
	7niLuFhw+iZJ/2o2gSacoAuhIBnKK1u/M1x2AF81mEss/96PSHMqL/XP0NO/tsBGJt+ZihkB8vwX2
	mSea5M/w3a9HnLIJEbS5zxlUN5ZeXVp8636lbNvM4K+7XOpkO4TDuTcMGpqmvsjUHB4ZKM8/UIIOx
	U48/WgMVSV+aRqw4qc5Hin/JJ9/x2fgNHX1+DUc4DpRr0VEK8SMXiSnm7e6FydQ4lExbKNBGmQD3W
	Rw29Xo+4kcoYfkalG2jZcetgGzQBUEK66OJXamTO/dzb/XGZ5YC4RWdb+BG6/E8mBMhiHcZFiY+Ma
	WHO8s6vU0Uv6ER6HuiRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQrJ-00F9gH-Sk; Thu, 24 Jun 2021 15:01:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqf-00F9NM-74
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:01:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqe-0000qj-0Y
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:56 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqd-0002B0-H7
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:55 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053bH-GQ
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:52 +0200
Message-Id: <20210624150054.1205422-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080057_309313_A3AE6434 
X-CRM114-Status: GOOD (  14.18  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/7] ARM: zynqmp: zcu104: register update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As the zcu104 stores the environment in the same partition as the
barebox image, the partition is already mounted in ENV_MNT_DIR
("/boot"). Therefore, the update handler has to use the already
existing mount point for the update.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2: none
---
 arch/arm/boards/xilinx-zcu104/Makefile |  1 +
 arch/arm/boards/xilinx-zcu104/board.c  | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 arch/arm/boards/xilinx-zcu104/board.c

diff --git a/arch/arm/boards/xilinx-zcu104/Makefile b/arch/arm/boards/xilinx-zcu104/Makefile
index 884d6e63b019..297f77d57ab1 100644
--- a/arch/arm/boards/xilinx-zcu104/Makefile
+++ b/arch/arm/boards/xilinx-zcu104/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
+obj-y += board.o
 lwl-y += lowlevel.o lowlevel_init.o
diff --git a/arch/arm/boards/xilinx-zcu104/board.c b/arch/arm/boards/xilinx-zcu104/board.c
new file mode 100644
index 000000000000..7654d2bfac90
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu104/board.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/zynqmp-bbu.h>
+
+static int zcu104_register_update_handler(void)
+{
+	if (!of_machine_is_compatible("xlnx,zynqmp-zcu104"))
+		return 0;
+
+	return zynqmp_bbu_register_handler("SD", "/boot/BOOT.BIN",
+					   BBU_HANDLER_FLAG_DEFAULT);
+}
+device_initcall(zcu104_register_update_handler);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

