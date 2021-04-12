Delivery-date: Tue, 13 Apr 2021 00:37:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BS-0006GQ-A1
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BQ-0007PE-UX
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KkliUQEZ0lWypS8lnXGCfYCGXgRuxszh2VxnFe1ScZQ=; b=KjqBl/ivbZs3CBiWLApB1/AqZ
	Qg7m9Af9UoCfrAj8rQ1cEExz1L2Dzn8fAhCpIXjKrhd2+34Q9RkoqR9XyzCs0wUErYMHnAy0gciLg
	o0TCXUHN36a1olnk3gJUFPX+c6ufBQLD4h6pN0X7Ph0mjeX6z0tvqa/8yaXUPX0c5sauZRKlOrjYw
	QyVVffc3iuWCHIP/JLTqApDDA9/e28AFAnXsU0Lcv4cwz+VxCMHN/PMYXuLVYfCD4nrsVsT6yU+MU
	XJcrQ1bOsUHVtBqZ2HD9HXxGfM6BpSdqer2i0O7XgUGMa4ll2/DecGCGo7l2jKXlD2rIQb+4MiLsg
	rGoV6u4kA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5AF-007nQ7-67; Mon, 12 Apr 2021 22:36:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59K-007n8U-DH
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Ncn3oTq6sV1CjD8zt91LOHQZ9BnuoMMTlL46gtPQhhQ=; b=F5yDW5VoFjE+5IWNQOI+zYVc3q
 jAuDeSIUMpnxdh1xd3e35wHWKSANArLtSTxdFIt+SYvLwczYwjV3Kbz3lEx3x98+UPEtMCBSOIdxJ
 GHB2S2OxEHyVz/pG/ei7nFeHTO2qfOGIgkUVgx7GDpq+nRPrOLQQS4+/F/J7ie1QoJjwys6PKXKfP
 qZvTz6NDeJFn20oEsnmqw3GU4yRXcWUMVcPYd1oNcx2xzpvv/culGYhaVP6llic0/0E0p1wqKz3eL
 a6qLbhPcqLtIGOPa85LpLIkydQpLqTOaABNpbVQKNB8e2fRgRyCBKoL6UW9rb85oOoRIco5HLKjvc
 MuJmTQ4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59G-006arX-JA
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BM-Bo; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003st-Db; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:54 +0200
Message-Id: <20210412223502.29691-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153514_660904_24F56C7C 
X-CRM114-Status: GOOD (  21.30  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/14] common: add generic machine partitions interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both Fastboot and DFU have their own global variables that allow
specifying the partitions that can be flashed via the environment.
With the upcoming addition of the USB mass storage gadget, we will need
some way to define the partitions there as well.

Instead of adding yet another way download method-specific variable,
add a generic machine.partitions variable that can be specified on a
per-board basis and can be used for all methods.

Existing variables will still remain for backwards-compatibility, but
when unset, it should fall back to this new parameter. This is done
if the follow-up patches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig               | 11 +++++++++
 common/Makefile              |  1 +
 common/file-list.c           | 18 +++++++++++++++
 common/machine-partitions.c  | 44 ++++++++++++++++++++++++++++++++++++
 include/file-list.h          |  2 ++
 include/machine-partitions.h | 40 ++++++++++++++++++++++++++++++++
 include/of.h                 |  5 ++++
 7 files changed, 121 insertions(+)
 create mode 100644 common/machine-partitions.c
 create mode 100644 include/machine-partitions.h

diff --git a/common/Kconfig b/common/Kconfig
index 2170f985bebc..f9803dbb5219 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -696,6 +696,17 @@ config FLEXIBLE_BOOTARGS
 config BAREBOX_UPDATE
 	bool "In-system barebox update infrastructure"
 
+config MACHINE_PARTITIONS
+	bool "Generic machine partitions support"
+	depends on OFTREE
+	help
+	  Machine partitions are a generic way for boards to specify the
+	  partitions of the machine that should be exported for flashing.
+	  Board drivers setting this directly will select this option
+	  automatically.
+	  Say y here if this should be configurable over the
+	  machine.partitions device parameter.
+
 config IMD
 	select CRC32
 	bool "barebox metadata support"
diff --git a/common/Makefile b/common/Makefile
index 0e0ba384c9b5..8d5a3a20b79a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-y				+= version.o
 obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
+obj-$(CONFIG_MACHINE_PARTITIONS) += machine-partitions.o
 obj-$(CONFIG_BINFMT)		+= binfmt.o
 obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
diff --git a/common/file-list.c b/common/file-list.c
index 924903cef7dc..580423aef72d 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -170,6 +170,24 @@ void file_list_free(struct file_list *files)
 	free(files);
 }
 
+struct file_list *file_list_dup(struct file_list *old)
+{
+	struct file_list_entry *old_entry;
+	struct file_list *new;
+
+	new = xzalloc(sizeof(*new));
+
+	INIT_LIST_HEAD(&new->list);
+
+	list_for_each_entry(old_entry, &old->list, list) {
+		(void)file_list_add_entry(new, old_entry->name, old_entry->filename,
+					  old_entry->flags); /* can't fail */
+		new->num_entries++;
+	}
+
+	return new;
+}
+
 char *file_list_to_str(const struct file_list *files)
 {
 	struct file_list_entry *entry;
diff --git a/common/machine-partitions.c b/common/machine-partitions.c
new file mode 100644
index 000000000000..4179dcd1b045
--- /dev/null
+++ b/common/machine-partitions.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <file-list.h>
+#include <param.h>
+#include <of.h>
+#include <init.h>
+#include <magicvar.h>
+#include <machine-partitions.h>
+
+static struct file_list *machine_partitions;
+
+bool machine_partitions_empty(void)
+{
+	return file_list_empty(machine_partitions);
+}
+
+struct file_list *machine_partitions_get(void)
+{
+	return file_list_dup(machine_partitions);
+}
+
+void machine_partitions_set(struct file_list *files)
+{
+	file_list_free(machine_partitions);
+	machine_partitions = files;
+}
+
+static int machine_partitions_var_init(void)
+{
+	struct param_d *param;
+
+	machine_partitions = file_list_parse("");
+	param = dev_add_param_file_list(of_get_machine(), "partitions",
+					NULL, NULL, &machine_partitions, NULL);
+
+	return PTR_ERR_OR_ZERO(param);
+}
+postcore_initcall(machine_partitions_var_init);
+
+BAREBOX_MAGICVAR(machine.partitions,
+		 "board-specific list of updatable partitions");
diff --git a/include/file-list.h b/include/file-list.h
index 7264a3e2c628..2538883c3659 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -28,6 +28,8 @@ void file_list_free(struct file_list *);
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags);
 
+struct file_list *file_list_dup(struct file_list *old);
+
 struct file_list_entry *file_list_entry_by_name(struct file_list *files, const char *name);
 
 #define file_list_for_each_entry(files, entry) \
diff --git a/include/machine-partitions.h b/include/machine-partitions.h
new file mode 100644
index 000000000000..0619a7985bcc
--- /dev/null
+++ b/include/machine-partitions.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef MACHINE_PARTITIONS_H_
+#define MACHINE_PARTITIONS_H_
+
+#include <file-list.h>
+
+#ifdef CONFIG_MACHINE_PARTITIONS
+
+/* duplicates current machine_partitions and returns it */
+struct file_list *machine_partitions_get(void);
+
+/* takes ownership of files and store it internally */
+void machine_partitions_set(struct file_list *files);
+
+/*
+ * check whether machine_partitions_get would return an empty
+ * file_list without doing an allocation
+ */
+bool machine_partitions_empty(void);
+
+#else
+
+static inline struct file_list *machine_partitions_get(void)
+{
+	return file_list_parse("");
+}
+
+static inline bool machine_partitions_empty(void)
+{
+	return true;
+}
+
+/*
+ * machine_partitions_set() intentionally left unimplemented.
+ * select CONFIG_MACHINE_PARTITIONS if you want to set it
+ */
+
+#endif
+
+#endif
diff --git a/include/of.h b/include/of.h
index 645f429bdeed..6bb3d444e4a5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1066,4 +1066,9 @@ static inline int of_firmware_load_overlay(struct device_node *overlay, const ch
 }
 #endif
 
+static inline struct device_d *of_get_machine(void)
+{
+	return of_find_device_by_node(of_get_root_node());
+}
+
 #endif /* __OF_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

