Delivery-date: Thu, 24 Jun 2021 12:26:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMZL-0000J8-Tc
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 12:26:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMZI-0006ZM-AY
	for lore@pengutronix.de; Thu, 24 Jun 2021 12:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpi9BSJhgq4DwwQmm9Ke1eQtc2bU4iyzmQRLO/LKy8Y=; b=zwUGUM48wXzuKt
	sHw235syleVApd6EABq9tyzY0sAvF+YuYL18Kqk6+vzim7Z4rhj1jJyuCo+5iufOzXnlVVvPHmQwe
	SXjWdw64IjP3jehAHUKcQS6/yMrkAyuZcvU4mchyN1u3SKc/ImXHVBADlw/Ya2FF1ZokOs61Pr661
	veZXKb6hcQN8z5+Aln6Smk+lf7uWpvEnsKiX39njopgYNc/3duUCMr7UkCuNCsNGyaLFDZ9uaCs9h
	p3F/Zl5VEJ0IelH9LQe6PC6vwOZaOLtyCNFtE1QL1K7YGvAsX+quxDzkt/MQh6TxktkwPLxQl6CVr
	mUxaL0/jLIENlEyVkpuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwMXi-00E497-Vu; Thu, 24 Jun 2021 10:25:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwMWR-00E3ap-2d
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 10:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWO-0005q7-1K
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:44 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWN-0001jO-I7
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:43 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-00185a-Gv
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 12:23:40 +0200
Message-Id: <20210624102342.269363-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624102342.269363-1-m.tretter@pengutronix.de>
References: <20210624102342.269363-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_032347_207122_4E5D4250 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] ARM: zynqmp: zcu104: register update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As the zcu104 stores the environment in the same partition as the
barebox image, the partition is already mounted in ENV_MNT_DIR
("/boot"). Therefore, the update handler has to use the already
existing mount point for the update.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
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
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

