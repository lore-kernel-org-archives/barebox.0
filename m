Delivery-date: Fri, 10 Nov 2023 23:05:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZdC-006VJo-2h
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZdC-0008MV-PA
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i06+5WquPvTKLF9tFcSrYtcERRtd3CsGIqVZ11mrNE8=; b=Jh4kkPEfrr01mD/ANJE6s6pqTP
	UY+xtWhkiJlw+sdbZ6PfvmgrLAJSVx8M6ckQ3ft19NefMsVcA4dl/ISl+O0VpKDLl3Mj5pwPzhJSZ
	07Xh4RegCF0lxmKBWDCL0rVreY5tW8Gx+evItk+yQWvxwxpwz6U4Fn4o8s4SeGkjDwhhUDluxd8uy
	YAxyqCchmRrITC598sFVGrbTpO+nrqNOz24sOjRZBUo+zsj48J46jzBCARrd/JwecdmBwoejzFlyd
	UsoI1Qn50PuoXjBFIdv6+qxsfTdV+wp2VKaB0XrEEO89G76HJThfcG+xRwGdvmS1NxxokEJoQ37f8
	fAPxD38Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZcA-009WW3-2k;
	Fri, 10 Nov 2023 22:04:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPI-28
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007nw-Hb; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-008736-4v; Fri, 10 Nov 2023 23:04:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-26;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:16 +0100
Message-Id: <20231110214421.2726093-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_701264_911DAFFF 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/18] include: linux/idr.h: implement more Linux API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming sync of SCMI with the kernel will start using IDR API, which we
lack in barebox, so let's retrofit it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/driver.c |  2 +-
 include/linux/idr.h                | 69 ++++++++++++++++++++++++++----
 2 files changed, 61 insertions(+), 10 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dcd15528f394..c3536d6e9fbd 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1001,7 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 	 * Search for the matching protocol rdev list and then search
 	 * of any existent equally named device...fails if any duplicate found.
 	 */
-	__idr_for_each_entry(&scmi_requested_devices, idr) {
+	idr_for_each_entry(&scmi_requested_devices, idr) {
 		struct list_head *head = idr->ptr;
 		if (!phead) {
 			/* A list found registered in the IDR is never empty */
diff --git a/include/linux/idr.h b/include/linux/idr.h
index 12494b1f01cb..de1d5d78f546 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -24,21 +24,66 @@ struct idr {
 #define DEFINE_IDR(name)	\
 	struct idr name = { .list = LIST_HEAD_INIT((name).list) }
 
-#define __idr_for_each_entry(head, idr) \
-	list_for_each_entry((idr), &(head)->list, list)
+/**
+ * idr_for_each_entry() - Iterate over an IDR's elements of a given type.
+ * @_idr: IDR handle.
+ * @_entry: The type * to use as cursor
+ * @_id: Entry ID.
+ *
+ * @_entry and @_id do not need to be initialized before the loop, and
+ * after normal termination @_entry is left with the value NULL.  This
+ * is convenient for a "not found" value.
+ */
+#define idr_for_each_entry(_idr, _entry, _id)		\
+	for (struct idr *iter = (_idr);				\
+	     &iter->list != &((_idr)->list) || (_entry = NULL);	\
+	     iter = list_next_entry(iter, list))		\
+	if ((_entry = iter->ptr, _id = iter->id, true))
 
-static inline struct idr *__idr_find(struct idr *head, int id)
+static inline struct idr *__idr_find(struct idr *head, int lookup_id)
 {
-	struct idr *idr;
+	struct idr *cursor;
 
-	__idr_for_each_entry(head, idr) {
-		if (idr->id == id)
-			return idr;
+	list_for_each_entry(cursor, &head->list, list) {
+		if (cursor->id == lookup_id)
+			return cursor;
 	}
 
 	return NULL;
 }
 
+/**
+ * idr_for_each() - Iterate through all stored pointers.
+ * @idr: IDR handle.
+ * @fn: Function to be called for each pointer.
+ * @data: Data passed to callback function.
+ *
+ * The callback function will be called for each entry in @idr, passing
+ * the ID, the entry and @data.
+ *
+ * If @fn returns anything other than %0, the iteration stops and that
+ * value is returned from this function.
+ */
+static inline int idr_for_each(const struct idr *idr,
+			       int (*fn)(int id, void *p, void *data), void *data)
+{
+	const struct idr *pos, *tmp;
+	int ret;
+
+	list_for_each_entry_safe(pos, tmp, &idr->list, list) {
+		ret = fn(pos->id, pos->ptr, data);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static inline int idr_is_empty(const struct idr *idr)
+{
+	return list_empty(&idr->list);
+}
+
 static inline void *idr_find(struct idr *head, int id)
 {
 	struct idr *idr = __idr_find(head, id);
@@ -70,12 +115,18 @@ static inline void idr_init(struct idr *idr)
 	INIT_LIST_HEAD(&idr->list);
 }
 
-static inline void idr_remove(struct idr *head, int id)
+static inline void idr_destroy(struct idr *idr)
 {
-	struct idr *idr = __idr_find(head, id);
+	if (!idr)
+		return;
 
 	list_del(&idr->list);
 	free(idr);
 }
 
+static inline void idr_remove(struct idr *head, int id)
+{
+	idr_destroy(__idr_find(head, id));
+}
+
 #endif /* __IDR_H__ */
-- 
2.39.2



