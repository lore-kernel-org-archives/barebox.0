Delivery-date: Tue, 03 Aug 2021 11:46:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr09-0005pC-6l
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr08-0000h1-18
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2xJd2qg+OdFGFOVK/1pb7KYKNqueJnI1Nov5p/3bO4=; b=Ftz4IGnpkEfyNE
	IM4FK5iZHLJQkRTxY97gtsjBplKdWPeqpPkXjslwZ4db3kQvsQ8MPttunWeJoy6/7b9tKgUIhCY69
	gdst0vYyMnTrTFDFCO4krApw4Pnp+JBPU45zsW03lIVNAnEajBWAhgr/hIpB4iVhRe6bELYBX2W1M
	qH/jh5+RF7vdDcdIDfeolZUiiIl7bTGKVpCH4pMo7OOoGje/Rjtn7MRCZgUzvLSSIp6WUj5EaQtEv
	Trwb/X5UiJkigWyiZMmSOakfFsntdHuDxEXqM9Q3wdeEZcYCAGrP+3fXGl8RVNrk64PJmxm5i2voK
	Rvz155/fYIUH8rM8uQTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyh-001r77-Bh; Tue, 03 Aug 2021 09:44:51 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyN-001r0r-JP
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:33 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 26AC28A140; Tue,  3 Aug 2021 11:44:29 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id D02738A0FA;
 Tue,  3 Aug 2021 11:44:23 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:15 +0200
Message-Id: <20210803094418.475609-6-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024431_848376_1BB16144 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/8] of: add reserved_mem_read initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a reserved_mem_read initcall which parses the reserved-memory
entries and adds barebox of reserve entries. Also remove the OP-TEE size
of reserve entry, since this is now parsed from the DT and does not need
to be statically configured any longer.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/Makefile       |  1 +
 drivers/of/reserved-mem.c | 43 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)
 create mode 100644 drivers/of/reserved-mem.c

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d2..b69cb84b99 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
+obj-$(CONFIG_OFDEVICE) += reserved-mem.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
 obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
new file mode 100644
index 0000000000..8519a7e3dd
--- /dev/null
+++ b/drivers/of/reserved-mem.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+
+#define pr_fmt(fmt) "reserved-memory: " fmt
+
+#define DEBUG
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <of_address.h>
+#include <malloc.h>
+#include <partition.h>
+
+static int reserved_mem_read(void)
+{
+	struct device_node *node, *child;
+	struct resource resource;
+	int flag;
+
+	node = of_find_node_by_path("/reserved-memory");
+	if (!node)
+		return 0;
+
+	for_each_child_of_node(node, child) {
+		flag = OF_RESERVE_ENTRY_FLAG_NO_RESERVE;
+
+		of_address_to_resource(child, 0, &resource);
+
+		pr_err("Res-Mem start: 0x%08x\n", resource.start);
+		pr_err("Res-Mem end: 0x%08x\n", resource.end);
+
+		if (of_find_property(child, "no-map", 0)) {
+			pr_debug("child %p: no-map\n", child);
+			flag |= OF_RESERVE_ENTRY_FLAG_XN;
+		}
+
+		of_add_reserve_entry(resource.start, resource.end, flag);
+	}
+
+	return 0;
+}
+postconsole_initcall(reserved_mem_read);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

