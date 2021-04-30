Delivery-date: Fri, 30 Apr 2021 15:31:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEp-0004z7-9F
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEn-0006r7-Df
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UX0XXlwdud8h20QbxUNszdhwa+hKbARfWBYwdZVaB6E=; b=BPGniBnC1/JPaqnI4QV55AoyR
	MbV4XVYhSJcMF07CN1g0rs0gvZeCC4EDqk7cS4fF53OckqQ8t78SRAbJ4+AQSv8EYQc/v3WIbQNvL
	f7QTSlHya1jnBjhchm7mdWxyMrI0LLyG482svEk2VvHd2emFKRGWNMIoruOx06rf14pf1NHeBbCw5
	WakwLhGb+Pub8ycfxfba0ZWW9Klf4GADZfhPlHre33a/22PyVKIvzxdgZUyITYLwO1ZjXykX1dQyH
	trWmppzqcWlLHoAkk/Z4iIB8WN+zqnsHQSVi+LlC0ocl7gzX8QhkJi9LM+J/v1e/q5jr3MfMH7tJM
	kRyv7cKNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTDh-007uZb-B7; Fri, 30 Apr 2021 13:30:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDV-007uYD-2Q
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=i40Tt2TMb+cgl16xFpPqzdWvNu2j+4Ou/H71GG9Su1s=; b=YG59MDFuG+l3osRS4HahAM2UlQ
 Xsdgp1fL8Wj9ISfhoi5Yul0/wozkliKByb17RdK8GX6VA1WD6UUj9uhNkhE/xXZGZYCZynnIoXOi3
 FCYJcBXL0P37qahE2iixN1QLm7ahpMKaxGelO++O67oVWldKKP+FfYp6G1rQh9ywIOx1TzRN8ftrq
 wnO5bMcUv3+L2J+ht7XZzy4ESNR9Qn7FMRjDSuwG686AsIm/TrNjNaHIcn/LfPeBoj2FRcKthX426
 fIa0ToMyNgZt2WtJsKURcO41Sa9pS0KYGa/K99Fvups76bivS8JBY1WMxVn1SImupzcVUpPTgJcmk
 2vkVs06w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDS-001PHR-9M
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:29:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069r-3Y; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003rF-3G; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:40 +0200
Message-Id: <20210430132949.14617-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_062958_358306_C77A4D77 
X-CRM114-Status: GOOD (  19.80  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/15] common: add generic system partitions interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both Fastboot and DFU have their own global variables that allow
specifying the partitions that can be flashed via the environment.
With the upcoming addition of the USB mass storage gadget, we will need
some way to define the partitions there as well.

Instead of adding yet another way download method-specific variable,
add a generic global.system.partitions variable that can be specified on a
per-board basis and can be used for all methods.

Existing variables will still remain for backwards-compatibility, but
when unset, it should fall back to this new parameter. This is done
in the follow-up patches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig              | 11 ++++++++++
 common/Makefile             |  1 +
 common/file-list.c          | 18 +++++++++++++++
 common/system-partitions.c  | 44 +++++++++++++++++++++++++++++++++++++
 include/file-list.h         |  2 ++
 include/system-partitions.h | 40 +++++++++++++++++++++++++++++++++
 6 files changed, 116 insertions(+)
 create mode 100644 common/system-partitions.c
 create mode 100644 include/system-partitions.h

diff --git a/common/Kconfig b/common/Kconfig
index bddf802d3bb4..3c841fb4fd5e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -707,6 +707,17 @@ config FLEXIBLE_BOOTARGS
 config BAREBOX_UPDATE
 	bool "In-system barebox update infrastructure"
 
+config SYSTEM_PARTITIONS
+	bool "Generic system partitions support"
+	depends on GLOBALVAR
+	help
+	  System partitions are a generic way for boards to specify the
+	  partitions that should be exported for flashing.
+	  Board drivers that set this directly will select this option
+	  automatically.
+	  Say y here if this should be configurable over the
+	  global.system.partitions device parameter as well.
+
 config IMD
 	select CRC32
 	bool "barebox metadata support"
diff --git a/common/Makefile b/common/Makefile
index c0b45d263e5b..dc1c6b9afdd7 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-y				+= version.o
 obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
+obj-$(CONFIG_SYSTEM_PARTITIONS) += system-partitions.o
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
diff --git a/common/system-partitions.c b/common/system-partitions.c
new file mode 100644
index 000000000000..a2e5de4665a2
--- /dev/null
+++ b/common/system-partitions.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <file-list.h>
+#include <param.h>
+#include <globalvar.h>
+#include <init.h>
+#include <magicvar.h>
+#include <system-partitions.h>
+
+static struct file_list *system_partitions;
+
+bool system_partitions_empty(void)
+{
+	return file_list_empty(system_partitions);
+}
+
+struct file_list *system_partitions_get(void)
+{
+	return file_list_dup(system_partitions);
+}
+
+void system_partitions_set(struct file_list *files)
+{
+	file_list_free(system_partitions);
+	system_partitions = files;
+}
+
+static int system_partitions_var_init(void)
+{
+	struct param_d *param;
+
+	system_partitions = file_list_parse("");
+	param = dev_add_param_file_list(&global_device, "partitions",
+					NULL, NULL, &system_partitions, NULL);
+
+	return PTR_ERR_OR_ZERO(param);
+}
+postcore_initcall(system_partitions_var_init);
+
+BAREBOX_MAGICVAR(global.system.partitions,
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
diff --git a/include/system-partitions.h b/include/system-partitions.h
new file mode 100644
index 000000000000..86de3612ccd8
--- /dev/null
+++ b/include/system-partitions.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef SYSTEM_PARTITIONS_H_
+#define SYSTEM_PARTITIONS_H_
+
+#include <file-list.h>
+
+#ifdef CONFIG_SYSTEM_PARTITIONS
+
+/* duplicates current system_partitions and returns it */
+struct file_list *system_partitions_get(void);
+
+/* takes ownership of files and store it internally */
+void system_partitions_set(struct file_list *files);
+
+/*
+ * check whether system_partitions_get would return an empty
+ * file_list without doing an allocation
+ */
+bool system_partitions_empty(void);
+
+#else
+
+static inline struct file_list *system_partitions_get(void)
+{
+	return file_list_parse("");
+}
+
+static inline bool system_partitions_empty(void)
+{
+	return true;
+}
+
+/*
+ * system_partitions_set() intentionally left unimplemented.
+ * select CONFIG_SYSTEM_PARTITIONS if you want to set it
+ */
+
+#endif
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

