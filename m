Delivery-date: Mon, 18 Aug 2025 20:31:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dS-001yT0-11
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dO-0003uL-8Z
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hS56RFFdJKH7f1vJA+G3WqpCNo9LKdFqrJXWEGV2rfk=; b=T2StbbP0Q9zeMqXD8+S5wQ5YLb
	sCauTMyfVZDLrq1N1XQF91pURGsVimcwpNYLN+rDYzJPQkwQ9rKliAekB1xHs2AZb93q+/SgvXDvJ
	IwWeYBrSAcJ4WJnyrNAwuYHSNnqM4kiy0R9UE9WWpOcwEOJsz3ePwdA61AXQl1rFIwDdHuQtQXlc1
	WR6iqQ75f3xr35L4kMUoQrhVgXFMnQA9+witqzSqKnrDZ1XzAUmz1NooDN3DZQAn9awZEI7zi3XwL
	GH1OeDIGwlqGJXedqfjAsPn4ncpI2z75XU4qmzdHZ3R/BbWd2PpbtB+XgddB7SKXse4ucaxXd1mE6
	ziHyDRyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cn-00000008LO6-0FoE;
	Mon, 18 Aug 2025 18:30:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uX-00000008F5R-21Aj
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hS56RFFdJKH7f1vJA+G3WqpCNo9LKdFqrJXWEGV2rfk=; b=BacjZc7eOCwTV8+8/h7k/imfuI
	3+xcngqUZo/WucvyutHx7oaNhrvqXp+eDzN31JNqz1Ox0QWXmxhwf4Xk53D0f69oJ9+uJ7XYDSNZQ
	MuPvWgTm+lo2JoLmp9X16XLvgwssN/gi+K8P9lGpOMTYatj7unOPmDl9gu488+UfVh0Gm+4GqjMzf
	4P/4wGwS67YJb6EVoaZWkCVQ9zh5U8yYjoaLwk6+Hg5WzQ4MyHdN1rdJCf9ebgrIyeu1scHpGgadK
	sPlocyQS70QER2IOKl5j0qO2lL+Y62M9dqJk2qbw07BtRWUMG3wSHsjb46O0W/RXIedsBXTpvi5b6
	4vGG7AAw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uS-0000000HStD-3scE
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-SI; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-9-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_217144_E0B84B39 
X-CRM114-Status: GOOD (  13.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/15] nvmem: core: create a header for internal sharing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port Linux commit:

| commit ec9c08a1cb8dc5e8e003f95f5f62de41dde235bb
| Author: Miquel Raynal <miquel.raynal@bootlin.com>
| Date:   Fri Dec 15 11:15:29 2023 +0000
|
|     nvmem: Create a header for internal sharing
|
|     Before adding all the NVMEM layout bus infrastructure to the core, let's
|     move the main nvmem_device structure in an internal header, only
|     available to the core. This way all the additional code can be added in
|     a dedicated file in order to keep the current core file tidy.
|
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20231215111536.316972-4-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

which is required for the upcoming nvmem-layout support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c      | 22 +---------------------
 drivers/nvmem/internals.h | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 21 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7e1dcceb00b924548b4582504b8ccaa4f29c4bdc..7d026330105b629e68353ae5cdbbf966284da7ea 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -13,27 +13,7 @@
 #include <linux/nvmem-consumer.h>
 #include <linux/nvmem-provider.h>
 
-struct nvmem_device {
-	const char		*name;
-	struct device		dev;
-	struct list_head	node;
-	int			stride;
-	int			word_size;
-	int			ncells;
-	int			users;
-	size_t			size;
-	bool			read_only;
-	struct cdev		cdev;
-	void			*priv;
-	struct list_head	cells;
-	nvmem_cell_post_process_t cell_post_process;
-	int			(*reg_write)(void *ctx, unsigned int reg,
-					     const void *val, size_t val_size);
-	int			(*reg_read)(void *ctx, unsigned int reg,
-					    void *val, size_t val_size);
-	int			(*reg_protect)(void *ctx, unsigned int reg,
-					       size_t bytes, int prot);
-};
+#include "internals.h"
 
 struct nvmem_cell_entry {
 	const char		*name;
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
new file mode 100644
index 0000000000000000000000000000000000000000..c58a51bf72ab45ac7d941877021af4409fee9cf8
--- /dev/null
+++ b/drivers/nvmem/internals.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_NVMEM_INTERNALS_H
+#define _LINUX_NVMEM_INTERNALS_H
+
+#include <device.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/nvmem-provider.h>
+
+struct nvmem_device {
+	const char		*name;
+	struct device		dev;
+	struct list_head	node;
+	int			stride;
+	int			word_size;
+	int			ncells;
+	int			users;
+	size_t			size;
+	bool			read_only;
+	struct cdev		cdev;
+	void			*priv;
+	struct list_head	cells;
+	nvmem_cell_post_process_t cell_post_process;
+	int			(*reg_write)(void *ctx, unsigned int reg,
+					     const void *val, size_t val_size);
+	int			(*reg_read)(void *ctx, unsigned int reg,
+					    void *val, size_t val_size);
+	int			(*reg_protect)(void *ctx, unsigned int reg,
+					       size_t bytes, int prot);
+};
+
+#endif  /* ifndef _LINUX_NVMEM_INTERNALS_H */

-- 
2.39.5



