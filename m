Delivery-date: Thu, 09 Jun 2022 10:47:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDpB-008Zq9-50
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:47:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDp8-0003aA-Q0
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:47:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/a6bvuRNZqLWd7+91YG3Zo2gN+2Baqf7HJ+tQBiCVE=; b=LhTaoTpuAqMsh6
	+ZryIeKGWUhswBFNPpZOHIxyBC5RygFik4Nd5TZtIOlP++gktUAmXnBbjYgMdOla8D3eaEs/eheI5
	cA16oOP0+L+NqQXpqr+Tf8+gsGYtNAb6b9LKbQYgYzM+9rCPAzrhVwzDic94H5XbHl0vFo2eQSoc1
	Nol2xSqQKR7zLW6G4qb9wxrYBUM+Yhs28qpFI2DCh6AJJ5wvcOmVa8aOBD1Nh+pJ6wOChkoZkm/7w
	Hh2K6X557r0NNHGlUHMgCiTGE4M/x4Rax9L4DSy6ML7CesIP8o8eivJ4H21/XeSoqBH5KF83A7ELt
	ze+aPFRvIkM+r9yKQ54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDnc-000MJE-TU; Thu, 09 Jun 2022 08:45:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDZa-000Fsp-DA
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:31:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzDZZ-0000aD-4G; Thu, 09 Jun 2022 10:31:21 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzDZZ-007LZm-PR; Thu, 09 Jun 2022 10:31:20 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzDZX-003e1q-PT; Thu, 09 Jun 2022 10:31:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 10:31:18 +0200
Message-Id: <20220609083118.865853-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609054342.661505-5-a.fatoum@pengutronix.de>
References: <20220609054342.661505-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_013122_469495_246A2CEE 
X-CRM114-Status: GOOD (  12.61  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! of: request reserved memory regions so other code can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
can squash for v2
---
 drivers/of/reserved-mem.c | 65 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 drivers/of/reserved-mem.c

diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
new file mode 100644
index 000000000000..efa96fe65cd9
--- /dev/null
+++ b/drivers/of/reserved-mem.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+
+#define pr_fmt(fmt) "reserved-memory: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <of_address.h>
+
+static void reserve(const char *name, u64 start, u64 end, bool xn)
+{
+	int flags = OF_RESERVE_ENTRY_FLAG_NO_FIXUP;
+
+	if (xn)
+		flags |= OF_RESERVE_ENTRY_FLAG_RUNTIME_FW;
+
+	pr_debug("region %s 0x%08llx-0x%08llx\n", name, start, end);
+
+	of_add_reserve_entry(start, end, flags);
+}
+
+static int reserved_mem_read(void)
+{
+	struct device_node *node, *child;
+	struct resource resource;
+	const __be32 *reg;
+
+	node = of_find_node_by_path("/reserved-memory");
+	if (node) {
+		for_each_available_child_of_node(node, child) {
+			/* skip e.g. linux,cma */
+			if (!of_get_property(child, "reg", NULL))
+				continue;
+
+			of_address_to_resource(child, 0, &resource);
+
+			/*
+			 * Just keep on mapping 1:1, but avoid speculative
+			 * execution into such a region
+			 */
+			reserve(child->name,
+				resource.start, resource.end,
+				of_find_property(child, "no-map", 0));
+		}
+	}
+
+	node = of_find_node_by_path("/memreserve");
+	reg = of_get_property(node, "reg", NULL);
+	if (reg) {
+		u32 na = 2, ns = 2;
+		u64 addr, size;
+
+		of_property_read_u32(node, "#address-cells", &na);
+		of_property_read_u32(node, "#size-cells", &ns);
+
+		addr = of_read_number(reg, na);
+		size = of_read_number(reg + na, ns);
+
+		reserve("/memreserve", addr, addr + size - 1, false);
+	}
+
+	return 0;
+}
+postconsole_initcall(reserved_mem_read);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

