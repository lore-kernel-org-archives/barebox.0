Delivery-date: Tue, 30 Apr 2024 12:53:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7X-00ACWd-0C
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 12:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7V-00061O-MV
	for lore@pengutronix.de; Tue, 30 Apr 2024 12:53:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vzS37HloSszvlByOmRQ3uFdQd4xpZYSBfTHnVMZJc+I=; b=jmJE9OqEzl/gcoL8U0k9dUNGGR
	kDXYzNC8VfbpQRHwd+XjyJiehnpSG72HaqUSV/3peXsd/T14/HHw9OKYda+Cnorx8GeMcB4IpBDtp
	kRF9CTUKs5iYt706PHa+a7AdgQ/7X7/Y+yhMWFkanIIXNW29JW99mvnHEx5iEOxZ8lHYEqHvwoZGD
	XMgrYTysXgMD4F9bsqqicZG6frv/IJRO2/FObeivUesdO6M8jWTihTK3CWiCr2yEC5igymRf7wwKC
	K4yi3xwuOyNz4N8mjk55LaI6HtURYmD6+moggJcMcq2FBmkOHFOXYPBgrRhVs985hjtCb1a98xOsg
	/OLsfPlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l70-000000064xv-369t;
	Tue, 30 Apr 2024 10:53:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6p-000000064nu-1BlE
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 10:53:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-0005hh-Tk; Tue, 30 Apr 2024 12:53:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00F99m-H1; Tue, 30 Apr 2024 12:53:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00DEvB-1N;
	Tue, 30 Apr 2024 12:53:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 12:53:09 +0200
Message-Id: <20240430105310.3149242-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430105310.3149242-1-s.hauer@pengutronix.de>
References: <20240430105310.3149242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_035315_556509_B80A0BD2 
X-CRM114-Status: GOOD (  30.41  )
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
Subject: [PATCH 2/3] add handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We need to pass data from the PBL to barebox proper. Right now we do
this with passing the data in registers which is quite limited. As the
amount of information that has to be passed increases it's time to
overcome this limitation.

With this patch we introduce handoff-data which is a linked list of
memory blobs that can be passed from PBL to barebox proper.

The data format is done in a way that enables us to compile the list
entries and the data into the binary, so that no memory allocations
are needed in PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/handoff-data.h |  48 +++++++++++
 pbl/Makefile           |   1 +
 pbl/handoff-data.c     | 192 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 241 insertions(+)
 create mode 100644 include/handoff-data.h
 create mode 100644 pbl/handoff-data.c

diff --git a/include/handoff-data.h b/include/handoff-data.h
new file mode 100644
index 0000000000..f5586e22fe
--- /dev/null
+++ b/include/handoff-data.h
@@ -0,0 +1,48 @@
+#ifndef __HANDOFF_DATA_H
+#define __HANDOFF_DATA_H
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
+size_t handoff_data_size(void);
+void handoff_data_move(void *dest);
+void handoff_data_set(struct handoff_data *handoff);
+void *handoff_data_get_entry(unsigned int cookie, size_t *size);
+int handoff_data_show(void);
+
+#endif /* __HANDOFF_DATA_H */
diff --git a/pbl/Makefile b/pbl/Makefile
index f6e98e78be..79837c5611 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -8,3 +8,4 @@ pbl-y += string.o
 pbl-y += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
+obj-pbl-y += handoff-data.o
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
new file mode 100644
index 0000000000..fcb27234a6
--- /dev/null
+++ b/pbl/handoff-data.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <handoff-data.h>
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
+size_t handoff_data_size(void)
+{
+	struct handoff_data *hd = handoff_data_get();
+	struct handoff_data_entry *hde;
+	size_t size = 0;
+	size_t dsize = 0;
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
+		request_sdram_region(name, (resource_size_t)hde->data, hde->size);
+	}
+
+	return 0;
+}
+late_initcall(handoff_data_reserve);
-- 
2.39.2



