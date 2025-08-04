Delivery-date: Mon, 04 Aug 2025 17:32:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAX-006z6H-28
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-0006Fg-Gi
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PwTThu8DWYPsiS1aPEniHm4k9RHHvfMHK3PCNlxpk+Q=; b=aSvzqr5O2pAwhVN9ZlEhIWIHYu
	1lL1oZhAD70ltoYS2RvEtrc0rKyLe/GJ9CXFil/UGyUKpUOZMZO4k02IKvWUMV6BEpfiGzvhTtMWI
	unuD8CG5D7klew/cFFUFwNNY9SYjLZfAq/Xfo18MRT629ERvkZwv1gEP1zEFVZwPLBsXIkFtmHlAR
	xSdpnllXMmFF+RtogQBrApZ++NaIYyvSe3vPBOSRkMwGrIY3U3luRQdFNgzW63VEeQ5h0Jto6ykAR
	aC2fphfvxaFdzYiZS4cuKVNMHvHBO0XtIQKwGVRZrM53Wtq1fQjE9LSf0aSacHF8iB0ht8xungpXM
	6JA9vE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9l-0000000Antr-38Z9;
	Mon, 04 Aug 2025 15:31:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmJ-1ghz
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-FR; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-9-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_502392_E4A1FCE5 
X-CRM114-Status: GOOD (  13.51  )
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
Subject: [PATCH 09/15] nvmem: core: create a header for internal sharing
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
 drivers/nvmem/core.c      | 20 +-------------------
 drivers/nvmem/internals.h | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 19 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 29a18cbeb517bdf23a8620f19a0ec21a1ac1b4e2..86f4f43a3084bf0c0e71b9af002334975c5e5e0e 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -13,25 +13,7 @@
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
-};
+#include "internals.h"
 
 struct nvmem_cell_entry {
 	const char		*name;
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
new file mode 100644
index 0000000000000000000000000000000000000000..4faa9a7f9e76e93cb67192ab11475f466df31473
--- /dev/null
+++ b/drivers/nvmem/internals.h
@@ -0,0 +1,30 @@
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
+};
+
+#endif  /* ifndef _LINUX_NVMEM_INTERNALS_H */

-- 
2.39.5



