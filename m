Delivery-date: Fri, 17 May 2024 08:45:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLn-000wqJ-0Y
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLm-0006w9-2x
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dKoFQn+9x3HJlRHhBpWHhq7xemBptH0kAwxoDt82c2s=; b=I1HQY1R4vu5D0NziJTb4glnk5S
	VeFifiBn+BmlLURqtP2/gWwm0PqLnOq6JuvTobpMi4utpDr3CWATm6eTtOWaXHW4YY2P/TPeKJ5IT
	FKLX6BOuOV5p6mZ0IFDme7gygQWBZ9o+/I0zO+/fPhWYGQ3m7m61ur6ZNfGOCfO0qf1/2LbOdDX+S
	f9ne6j5vwsoXTWN0QLNtH03R8/XpzSnuEPMjoiGG+ZkFqTUCPv2Avd5SZQt/hRoA09lOzkOw53s/e
	klkk8wUttIGruSOrx5uNL/lDfVCIPbMJN4yHHbzN4CQD4J2LRmhxsvZJEGbPekYKaXr4naNMAj7Tf
	XKacSiog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLH-00000006yVC-0LY9;
	Fri, 17 May 2024 06:45:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL7-00000006yQy-49pl
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006X7-TR
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pev-H1
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-1N
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 May 2024 08:45:10 +0200
Message-Id: <20240517064511.3307462-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234514_290083_BAA88FA6 
X-CRM114-Status: GOOD (  30.81  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/6] add handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

We need to pass data from the PBL to barebox proper. Right now we do
this with passing the data in registers which is quite limited. As the
amount of information that has to be passed increases it's time to
overcome this limitation.

With this patch we introduce handoff-data which is a linked list of
memory blobs that can be passed from PBL to barebox proper.

The data format is done in a way that enables us to compile the list
entries and the data into the binary, so that no memory allocations
are needed in PBL.

Link: https://lore.barebox.org/20240430105310.3149242-3-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - move header into pbl/ subdirectory
  - implement __handoff_data_size with head as argument
  - call new request_barebox_region instead of request_sdram_region
---
 include/pbl/handoff-data.h |  53 ++++++++++
 pbl/Makefile               |   1 +
 pbl/handoff-data.c         | 194 +++++++++++++++++++++++++++++++++++++
 3 files changed, 248 insertions(+)
 create mode 100644 include/pbl/handoff-data.h
 create mode 100644 pbl/handoff-data.c

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
new file mode 100644
index 000000000000..7f883421df16
--- /dev/null
+++ b/include/pbl/handoff-data.h
@@ -0,0 +1,53 @@
+#ifndef __PBL_HANDOFF_DATA_H
+#define __PBL_HANDOFF_DATA_H
+
+#include <linux/list.h>
+
+struct handoff_data {
+	struct list_head entries;
+};
+
+#define HANDOFF_DATA_BAREBOX(n)		(0x28061971 + (n))
+#define HANDOFF_DATA_INTERNAL_DT	HANDOFF_DATA_BAREBOX(0)
+#define HANDOFF_DATA_INTERNAL_DT_Z	HANDOFF_DATA_BAREBOX(1)
+#define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
+#define HANDOFF_DATA_BOARDDATA		HANDOFF_DATA_BAREBOX(3)
+
+#define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
+
+struct handoff_data_entry {
+	struct list_head list;
+	void *data;
+	size_t size;
+	unsigned int cookie;
+#define HANDOFF_DATA_FLAG_NO_COPY	BIT(0)
+	unsigned int flags;
+};
+
+#define handoff_data_add_flags(_cookie, _data, _size, _flags)	\
+	do {							\
+		static struct handoff_data_entry hde;		\
+		hde.cookie = _cookie;				\
+		hde.data = _data;				\
+		hde.size = _size;				\
+		hde.flags = _flags;				\
+								\
+		handoff_data_add_entry(&hde);			\
+	} while (0);
+
+#define handoff_data_add(_cookie, _data, _size)			\
+	handoff_data_add_flags((_cookie), (_data), (_size), 0)
+
+void handoff_data_add_entry(struct handoff_data_entry *entry);
+void handoff_data_move(void *dest);
+void handoff_data_set(struct handoff_data *handoff);
+void *handoff_data_get_entry(unsigned int cookie, size_t *size);
+int handoff_data_show(void);
+
+size_t __handoff_data_size(const struct handoff_data *hd);
+static inline size_t handoff_data_size(void)
+{
+	return __handoff_data_size(NULL);
+}
+
+#endif /* __PBL_HANDOFF_DATA_H */
diff --git a/pbl/Makefile b/pbl/Makefile
index f6e98e78be3f..79837c56114a 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -8,3 +8,4 @@ pbl-y += string.o
 pbl-y += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
+obj-pbl-y += handoff-data.o
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
new file mode 100644
index 000000000000..e6745797c038
--- /dev/null
+++ b/pbl/handoff-data.c
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <pbl/handoff-data.h>
+#include <init.h>
+#include <linux/list.h>
+#include <memory.h>
+
+static struct handoff_data *handoff_data = (void *)-1;
+
+static struct handoff_data *handoff_data_get(void)
+{
+	static struct handoff_data __handoff_data;
+
+	/*
+	 * Sometimes the PBL copies itself to some other location and is
+	 * re-entered at that location. For example on some i.MX SoCs we have
+	 * to move the PBL out of the SRAM (which will be occupied by the TF-A
+	 * later). We force the handoff_data variable into the data segment.
+	 * When moving the PBL somewhere else with handoff_data set we move the
+	 * content of the variable with it and thus find it to have the correct
+	 * value in the new PBL.
+	 */
+	if (handoff_data == (void *)-1) {
+		handoff_data = &__handoff_data;
+		INIT_LIST_HEAD(&handoff_data->entries);
+	}
+
+	return handoff_data;
+}
+
+/**
+ * handoff_data_set - set the handoff data to be at a specified pointer
+ * @handoff: the place where the handoff data is
+ *
+ * This sets the handoff data to @handoff. To be used by barebox proper
+ * to pass the place where the handoff data has been placed by the PBL.
+ */
+void handoff_data_set(struct handoff_data *handoff)
+{
+	handoff_data = handoff;
+}
+
+/**
+ * handoff_data_add_entry - add a new handoff data entry
+ * @hde: the new entry
+ *
+ * This adds a new handoff data entry.
+ */
+void handoff_data_add_entry(struct handoff_data_entry *hde)
+{
+	struct handoff_data *hd = handoff_data_get();
+
+	list_add_tail(&hde->list, &hd->entries);
+}
+
+/**
+ * handoff_data_size - calculate the handoff data size
+ *
+ * This calculates the size needed for the current handoff data
+ * when put to a contiguous memory regions. Can be used to get the
+ * size needed in preparation for a handoff_data_move()
+ */
+size_t __handoff_data_size(const struct handoff_data *hd)
+{
+	struct handoff_data_entry *hde;
+	size_t size = 0;
+	size_t dsize = 0;
+
+	if (!hd)
+		hd = handoff_data_get();
+
+	dsize += sizeof(*hd);
+
+	list_for_each_entry(hde, &hd->entries, list) {
+		dsize += sizeof(*hde);
+		size += ALIGN(hde->size, 8);
+	}
+
+	return dsize + size;
+}
+
+/**
+ * handoff_data_move - move handoff data to specified destination
+ * @dest: The place where to move the handoff data to
+ *
+ * This moves the handoff data to @dest and also sets the new location
+ * to @dest. This can be used to move the handoff data to a contiguous
+ * region outside the binary. Note once moved no data should be added,
+ * as that would make the handoff_data discontigoous again.
+ */
+void handoff_data_move(void *dest)
+{
+	struct handoff_data *hd = handoff_data_get();
+	struct handoff_data *hdnew = dest;
+	struct handoff_data_entry *hde;
+
+	INIT_LIST_HEAD(&hdnew->entries);
+
+	dest = hdnew + 1;
+
+	list_for_each_entry(hde, &hd->entries, list) {
+		struct handoff_data_entry *newde = dest;
+
+		dest = newde + 1;
+
+		if (hde->flags & HANDOFF_DATA_FLAG_NO_COPY) {
+			newde->data = hde->data;
+		} else {
+			memcpy(dest, hde->data, hde->size);
+			newde->data = dest;
+			dest += ALIGN(hde->size, 8);
+		}
+
+		newde->size = hde->size;
+		newde->cookie = hde->cookie;
+		list_add_tail(&newde->list, &hdnew->entries);
+	}
+
+	handoff_data_set(hdnew);
+}
+
+/**
+ * handoff_data_get_entry - get the memory associated to a cookie
+ * @cookie: the cookie the data is identified with
+ * @size: size of the memory returned
+ *
+ * This returns the memory associated with @cookie.
+ */
+void *handoff_data_get_entry(unsigned int cookie, size_t *size)
+{
+	struct handoff_data *hd = handoff_data_get();
+	struct handoff_data_entry *hde;
+
+	list_for_each_entry(hde, &hd->entries, list) {
+		if (hde->cookie == cookie) {
+			*size = hde->size;
+			return hde->data;
+		}
+	}
+
+	return NULL;
+}
+
+/**
+ * handoff_data_show - show current handoff data entries
+ *
+ * This prints the current handoff data entries to the console for debugging
+ * purposes.
+ */
+int handoff_data_show(void)
+{
+	struct handoff_data *hd = handoff_data_get();
+	struct handoff_data_entry *hde;
+
+	list_for_each_entry(hde, &hd->entries, list) {
+		printf("handoff 0x%08x at 0x%p (size %zu)\n",
+			hde->cookie, hde->data, hde->size);
+	}
+
+	return 0;
+}
+
+static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
+{
+	static char name[sizeof("handoff 12345678")];
+
+	switch (hde->cookie) {
+	case HANDOFF_DATA_INTERNAL_DT:
+		return "handoff FDT (internal)";
+	case HANDOFF_DATA_INTERNAL_DT_Z:
+		return "handoff FDT (internal, compressed)";
+	case HANDOFF_DATA_EXTERNAL_DT:
+		return "handoff FDT (external)";
+	case HANDOFF_DATA_BOARDDATA:
+		return "handoff boarddata";
+	default:
+		sprintf(name, "handoff %08x", hde->cookie);
+		return name;
+	}
+}
+
+static int handoff_data_reserve(void)
+{
+	struct handoff_data *hd = handoff_data_get();
+	struct handoff_data_entry *hde;
+
+	list_for_each_entry(hde, &hd->entries, list) {
+		const char *name = handoff_data_entry_name(hde);
+		request_barebox_region(name, (resource_size_t)hde->data, hde->size);
+	}
+
+	return 0;
+}
+late_initcall(handoff_data_reserve);
-- 
2.39.2



