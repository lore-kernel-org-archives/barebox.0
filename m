Delivery-date: Mon, 15 Dec 2025 15:23:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9UI-00BlyQ-1r
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:23:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9UH-0002ys-Vf
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:23:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MfIZWu/gfuKlkVnXEOo8xyjqiltRacD1zaIqiHRsh/U=; b=CtdsbMUw5BsnclJYf0DTnKWUfb
	sKwEzv8FiOKwcDaq8J/k9hDBrCOsdMK1nIhms+cWjBpdprgdqifgSJvVtYbkk7XuiTEZSv7W0jhvd
	3/wkFp9OA0pj3BMu0ST/xTCDxzyzRAB3icKaAlAzzuniNTQJ6c/MoZHhmwbSPBdmCzOmTXnDZeoGd
	S5mKLZozeSws1/ChbJ4ut0nMf/V3LjZMTicrehgqX20CR4ftmwBAwS2Pw3qZjpqYCf2ddVV2JI5uC
	U8NiMsuWDrz27KVr49V7YMqJrzQg3eOSLU3Fh9agTYota6IR8wPE7T3gUNInk6qIHr73+ZCMzkOM2
	gCLI/JiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Tp-00000003nD8-08Po;
	Mon, 15 Dec 2025 14:23:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Tn-00000003nCl-0EdU
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:23:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV9Tl-0002u3-Bk; Mon, 15 Dec 2025 15:23:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV9Tk-005nQk-05;
	Mon, 15 Dec 2025 15:23:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV9Tj-00000009uCz-3tw5;
	Mon, 15 Dec 2025 15:23:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 15:23:06 +0100
Message-ID: <20251215142311.2358444-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062315_091909_1B6FF914 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clk: socfpga: agilex5: mention kernel commit in source files

To allow for easier synchronization in future, note in the file which
revision of the driver was ported from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/socfpga/clk-agilex5.c    | 1 +
 drivers/clk/socfpga/clk-gate-s10.c   | 1 +
 drivers/clk/socfpga/clk-periph-s10.c | 1 +
 drivers/clk/socfpga/clk-pll-s10.c    | 1 +
 drivers/clk/socfpga/stratix10-clk.h  | 1 +
 5 files changed, 5 insertions(+)

diff --git a/drivers/clk/socfpga/clk-agilex5.c b/drivers/clk/socfpga/clk-agilex5.c
index 37a901298caf..ae0b7209a1aa 100644
--- a/drivers/clk/socfpga/clk-agilex5.c
+++ b/drivers/clk/socfpga/clk-agilex5.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-agilex5.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2022, Intel Corporation
  */
diff --git a/drivers/clk/socfpga/clk-gate-s10.c b/drivers/clk/socfpga/clk-gate-s10.c
index f6330590a6ca..5fe5b2976d06 100644
--- a/drivers/clk/socfpga/clk-gate-s10.c
+++ b/drivers/clk/socfpga/clk-gate-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-gate-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
diff --git a/drivers/clk/socfpga/clk-periph-s10.c b/drivers/clk/socfpga/clk-periph-s10.c
index 2bfa5ebe86d1..4001c02c7e65 100644
--- a/drivers/clk/socfpga/clk-periph-s10.c
+++ b/drivers/clk/socfpga/clk-periph-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-periph-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
index 74f1010b600d..0ec1cc8c3298 100644
--- a/drivers/clk/socfpga/clk-pll-s10.c
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-pll-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
diff --git a/drivers/clk/socfpga/stratix10-clk.h b/drivers/clk/socfpga/stratix10-clk.h
index 9ca9e01dbfb9..9882e9d62457 100644
--- a/drivers/clk/socfpga/stratix10-clk.h
+++ b/drivers/clk/socfpga/stratix10-clk.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier:    GPL-2.0 */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/stratix10-clk.h?id=2050b57ecda040010ec797fb07713889372c5041 */
 /*
  * Copyright (C) 2017, Intel Corporation
  */
-- 
2.47.3



