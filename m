Delivery-date: Mon, 25 Nov 2024 16:13:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFals-000FWO-2j
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFals-0007g5-39
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sDmxtarwHYSxonpD7NWtv6WKJUj3kuPn+jShKD8ktGg=; b=Kxk1tTb9xnOiZ28kjxayvLq9QM
	DF9f0gVze9lLpFe4AkRp8u1BEmCKs3+sVMm5BlFY0VAf+CxvRHSIHFTHiqD1D+5qvbhb5OJYMOX48
	3b7DOgO75nGKix2PXFi8SwzCYUALjAmUuWZoBgMU23759Egb9pcHbdKZNjMGdy7Qx956EEK1nPxQn
	hLUJe8kFLTcJs0Wt7ACUMRBJ60sKu/7s3uk+0Gk5iSBenaJCG1CPxnTi25xaDoOgSyvCQ1bIQ+kfn
	/I/cOsheZKpjPXFHf2Y7XNU3PuBw6EVbCIFREqYgGmtEPZg27fOOvaDW3lNCLSStxAG/brAKEjACs
	51mcAnuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalP-00000008Per-2ZMb;
	Mon, 25 Nov 2024 15:12:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008Pb5-1Z0Z
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0007CJ-U8; Mon, 25 Nov 2024 16:12:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalJ-0006MR-38;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-06;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:13 +0100
Message-Id: <20241125151228.341441-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_411415_4130FDC8 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/16] scripts: include: add definitions for printk and BUG()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is required for building files that are built for both host and
target systems and use these headers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/asm-generic/bug.h | 14 ++++++++++++++
 scripts/include/linux/bug.h       |  1 +
 scripts/include/printk.h          |  9 +++++++++
 3 files changed, 24 insertions(+)
 create mode 100644 scripts/include/asm-generic/bug.h
 create mode 100644 scripts/include/linux/bug.h
 create mode 100644 scripts/include/printk.h

diff --git a/scripts/include/asm-generic/bug.h b/scripts/include/asm-generic/bug.h
new file mode 100644
index 000000000000..c53ced628fcc
--- /dev/null
+++ b/scripts/include/asm-generic/bug.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_GENERIC_BUG_H
+#define _ASM_GENERIC_BUG_H
+
+#include <printk.h>
+#include <stdlib.h>
+
+#define BUG() do { \
+	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
+	exit(41); \
+} while (0)
+
+#endif
diff --git a/scripts/include/linux/bug.h b/scripts/include/linux/bug.h
new file mode 100644
index 000000000000..b12fd89e42e9
--- /dev/null
+++ b/scripts/include/linux/bug.h
@@ -0,0 +1 @@
+#include <asm-generic/bug.h>
diff --git a/scripts/include/printk.h b/scripts/include/printk.h
new file mode 100644
index 000000000000..363d32f2e5cb
--- /dev/null
+++ b/scripts/include/printk.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PRINTK_H
+#define __PRINTK_H
+
+#include <stdio.h>
+
+#define printk printf
+
+#endif
-- 
2.39.5



