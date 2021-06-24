Delivery-date: Thu, 24 Jun 2021 17:02:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsc-00055i-Gp
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsb-0001li-1b
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/2k984txwJZSl3Yu2/P7g3PTNXaAalKSH+D+7e5Uvo=; b=ZAKD7pKSxbtjHf
	ZKf4u5H/RNUNXeE7j7aMeKDEZT6+rgNPCJwYFUiBQbifbjvAvuiV42JkhCxxGP0x0KE5IYox41Mmo
	nG3uLXffaP3KzStHZUzTeGtqirTw3d+CfxqwYSv4YEGYDY8Lpg5K/FGUXqxJ7gMJ8PiNPdUPanVht
	1ahZTrQ6V9X0VHSEgy/9I9wSH41KqDYbmv5r53KpVu9JurR0NHdHTmrrGCy1seSccgR127tYuY3RM
	6JlgqClImtdqVVagRJrIsiuPe7okVtsvwI7YyrOA6BmpH+udLEI4XswkXf788c9gCdiqkSBVuiC2z
	N9xyGsRI03nV4Y389YsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQr5-00F9Yh-Ak; Thu, 24 Jun 2021 15:01:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqe-00F9Mu-Qp
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqd-0000q9-6Z
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:55 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0002Al-Hq
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053bE-Fy
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:51 +0200
Message-Id: <20210624150054.1205422-5-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080057_034069_AE6B1E50 
X-CRM114-Status: GOOD (  17.86  )
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
Subject: [PATCH v2 4/7] ARM: zynqmp: add update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ZynqMP boots from an SDHCI device by reading a boot.bin file from
the FAT16/32 partition, which is the first partition in the MBR.

The update handler copies a boot.bin image to this partition, which
might be board specific.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2: none
---
 arch/arm/mach-zynqmp/Makefile                 |  1 +
 .../arm/mach-zynqmp/include/mach/zynqmp-bbu.h | 21 ++++++++
 arch/arm/mach-zynqmp/zynqmp-bbu.c             | 48 +++++++++++++++++++
 3 files changed, 70 insertions(+)
 create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
 create mode 100644 arch/arm/mach-zynqmp/zynqmp-bbu.c

diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
index 14b8a4e46b87..e24a43c0d59f 100644
--- a/arch/arm/mach-zynqmp/Makefile
+++ b/arch/arm/mach-zynqmp/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
 obj-y += firmware-zynqmp.o
 obj-y += zynqmp.o
+obj-$(CONFIG_BAREBOX_UPDATE) += zynqmp-bbu.o
diff --git a/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h b/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
new file mode 100644
index 000000000000..8502791ee0f7
--- /dev/null
+++ b/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
+ */
+#ifndef __MACH_ZYNQMP_BBU_H
+#define __MACH_ZYNQMP_BBU_H
+
+#include <bbu.h>
+
+#ifdef CONFIG_BAREBOX_UPDATE
+int zynqmp_bbu_register_handler(const char *name, char *devicefile,
+				unsigned long flags);
+#else
+static int zynqmp_bbu_register_handler(const char *name, char *devicefile,
+				       unsigned long flags)
+{
+	return 0;
+};
+#endif
+
+#endif /* __MACH_ZYNQMP_BBU_H */
diff --git a/arch/arm/mach-zynqmp/zynqmp-bbu.c b/arch/arm/mach-zynqmp/zynqmp-bbu.c
new file mode 100644
index 000000000000..d1197c01dc41
--- /dev/null
+++ b/arch/arm/mach-zynqmp/zynqmp-bbu.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#include <common.h>
+#include <libfile.h>
+#include <mach/zynqmp-bbu.h>
+
+static int zynqmp_bbu_handler(struct bbu_handler *handler,
+		struct bbu_data *data)
+{
+	int ret = 0;
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	ret = copy_file(data->imagefile, data->devicefile, 1);
+	if (ret < 0) {
+		pr_err("update failed: %s", strerror(-ret));
+		return ret;
+	}
+
+	return ret;
+}
+
+int zynqmp_bbu_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	struct bbu_handler *handler;
+	int ret = 0;
+
+	if (!name || !devicefile)
+		return -EINVAL;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->name = name;
+	handler->devicefile = devicefile;
+	handler->flags = flags;
+	handler->handler = zynqmp_bbu_handler;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

