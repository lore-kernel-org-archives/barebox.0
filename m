Delivery-date: Thu, 03 Aug 2023 12:51:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvW-004wNI-3Q
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvT-0001mj-1L
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mou/373YeMvxtGnxSKOv61DmYIEqidNKjEBqv1L/wlQ=; b=qRNKLQOc4PC6efZV7S53BNZ/e2
	rDSvKSM+Mq+X1V18rslFqyo/pRvKVKQBTUCq8BbA/RGBynPa8ZHuUNNLXnuf2xKl0E8HkgHFEocK3
	fph0fKiy5+E0z/USdMYLvmJbHU43EiBItcjeKJ8PNh05LQ/HKvndsiXrgYqDRacMVrylsWSVypj3T
	Jhg3Ttk4Y8rhPOgZMYBMbstehUYKPJVvDCGM4y33h8oYc/buue570ULWhxcCxY1GRgH8AeKBRLlqU
	fXChd/8lpWNZzi25gq/rCBYTc7hSolN01uEpjv0DIjps0l+UU4wonf/PENVQYz2zWA27/DZ+X6LWc
	L6Nsw+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuM-007Uem-0f;
	Thu, 03 Aug 2023 10:50:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuB-007UWi-1g
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-0000u3-7k; Thu, 03 Aug 2023 12:50:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu9-000ouy-Ct; Thu, 03 Aug 2023 12:50:05 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAz5-A4; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:46 +0200
Message-Id: <20230803105003.4088205-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035007_588943_70C7D40A 
X-CRM114-Status: GOOD (  21.16  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/22] Add initial mailbox support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a minimum mailbox support. The code is based on the
corresponding U-Boot code. It's currently enough to bring up
the communication with the SCI on TI K3 SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig           |  1 +
 drivers/Makefile          |  1 +
 drivers/mailbox/Kconfig   | 10 +++++
 drivers/mailbox/Makefile  |  1 +
 drivers/mailbox/mailbox.c | 92 +++++++++++++++++++++++++++++++++++++++
 include/mailbox.h         | 36 +++++++++++++++
 6 files changed, 141 insertions(+)
 create mode 100644 drivers/mailbox/Kconfig
 create mode 100644 drivers/mailbox/Makefile
 create mode 100644 drivers/mailbox/mailbox.c
 create mode 100644 include/mailbox.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 2636eed1a3..d9c0320556 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -46,5 +46,6 @@ source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
 source "drivers/virtio/Kconfig"
+source "drivers/mailbox/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index fa899a2ab8..3f60e1b9c7 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -48,3 +48,4 @@ obj-y	+= power/
 obj-$(CONFIG_SOUND) += sound/
 obj-y	+= virtio/
 obj-$(CONFIG_HAVE_OPTEE)	+= tee/optee/of.o
+obj-y	+= mailbox/
diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
new file mode 100644
index 0000000000..7839a44729
--- /dev/null
+++ b/drivers/mailbox/Kconfig
@@ -0,0 +1,10 @@
+menuconfig MAILBOX
+	bool "Mailbox Hardware Support"
+	help
+	  Mailbox is a framework to control hardware communication between
+	  on-chip processors through queued messages and interrupt driven
+	  signals. Say Y if your platform supports hardware mailboxes.
+
+if MAILBOX
+
+endif
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
new file mode 100644
index 0000000000..9dec4e3b3b
--- /dev/null
+++ b/drivers/mailbox/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MAILBOX) += mailbox.o
diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
new file mode 100644
index 0000000000..edf9481aca
--- /dev/null
+++ b/drivers/mailbox/mailbox.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2016, NVIDIA CORPORATION.
+ */
+
+#define LOG_CATEGORY UCLASS_MAILBOX
+
+#include <common.h>
+#include <mailbox.h>
+#include <deep-probe.h>
+
+int mbox_send(struct mbox_chan *chan, const void *data)
+{
+	const struct mbox_chan_ops *ops = chan->mbox->ops;
+
+	return ops->send(chan, data);
+}
+
+int mbox_recv(struct mbox_chan *chan, void *data, unsigned long timeout_us)
+{
+	const struct mbox_chan_ops *ops = chan->mbox->ops;
+	u64 start;
+	int ret;
+
+	start = get_time_ns();
+
+	for (;;) {
+		ret = ops->recv(chan, data);
+		if (ret != -ENODATA)
+			return ret;
+		if (is_timeout(start, timeout_us * 1000))
+			return -ETIMEDOUT;
+	}
+}
+
+static LIST_HEAD(mbox_cons);
+
+int mbox_controller_register(struct mbox_controller *mbox)
+{
+	list_add_tail(&mbox->node, &mbox_cons);
+
+	return 0;
+}
+
+
+struct mbox_chan *mbox_request_channel(struct device *dev, int index)
+{
+	struct of_phandle_args spec;
+	struct mbox_controller *mbox;
+	struct mbox_chan *chan = ERR_PTR(-ENODEV);
+
+	if (of_parse_phandle_with_args(dev->of_node, "mboxes",
+					"#mbox-cells", index, &spec)) {
+		return ERR_PTR(-ENODEV);
+	}
+
+	of_device_ensure_probed(spec.np);
+
+	list_for_each_entry(mbox, &mbox_cons, node) {
+		if (mbox->dev->of_node != spec.np)
+			continue;
+
+		chan = mbox->of_xlate(mbox, &spec);
+		if (!IS_ERR(chan))
+			break;
+	}
+
+	return chan;
+}
+
+struct mbox_chan *mbox_request_channel_byname(struct device *dev, const char *name)
+{
+	struct device_node *np = dev->of_node;
+	struct property *prop;
+	const char *mbox_name;
+	int index = 0;
+
+	if (!np)
+		return ERR_PTR(-EINVAL);
+
+	if (!of_get_property(np, "mbox-names", NULL)) {
+		return ERR_PTR(-EINVAL);
+	}
+
+	of_property_for_each_string(np, "mbox-names", prop, mbox_name) {
+		if (!strncmp(name, mbox_name, strlen(name)))
+			return mbox_request_channel(dev, index);
+		index++;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
diff --git a/include/mailbox.h b/include/mailbox.h
new file mode 100644
index 0000000000..3be58ec103
--- /dev/null
+++ b/include/mailbox.h
@@ -0,0 +1,36 @@
+#ifndef __MAILBOX_H
+#define __MAILBOX_H
+
+struct mbox_chan {
+	struct mbox_controller *mbox;
+	struct device *dev;
+	void *con_priv;
+};
+
+/**
+ * struct mbox_ops - The functions that a mailbox driver must implement.
+ */
+struct mbox_chan_ops {
+	int (*request)(struct mbox_chan *chan);
+	int (*rfree)(struct mbox_chan *chan);
+	int (*send)(struct mbox_chan *chan, const void *data);
+	int (*recv)(struct mbox_chan *chan, void *data);
+};
+
+struct mbox_controller {
+	struct device *dev;
+	const struct mbox_chan_ops *ops;
+	struct mbox_chan *chans;
+	int num_chans;
+	struct mbox_chan *(*of_xlate)(struct mbox_controller *mbox,
+				      const struct of_phandle_args *sp);
+	struct list_head node;
+};
+
+int mbox_controller_register(struct mbox_controller *mbox);
+struct mbox_chan *mbox_request_channel(struct device *dev, int index);
+struct mbox_chan *mbox_request_channel_byname(struct device *dev, const char *name);
+int mbox_send(struct mbox_chan *chan, const void *data);
+int mbox_recv(struct mbox_chan *chan, void *data, unsigned long timeout_us);
+
+#endif /* __MAILBOX_H */
-- 
2.39.2



