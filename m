Delivery-date: Mon, 11 Sep 2023 18:00:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLE-00BfSQ-6J
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 18:00:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLC-0004MH-8t
	for lore@pengutronix.de; Mon, 11 Sep 2023 18:00:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7uuIGaJAQGynjy8cqrsitmX2ATtcsPgpVhzZBf1yuXE=; b=fuqEi5mncnWtahdULd6x7vkMKs
	rI/AvqnCvWxs7DG2P8JeBNF56yd6+xgzx5TPNgI+5mo2WHcP8YluAjUVm6kgA6mMRCF0AfL6vhX+O
	JhB1XyQ9WIeqjsCrv0DihRCOenFwB96HiktEV8wIQJLu1F27FNBhF3UcYiul41uLIHjSbux8wsHTl
	UD6q1juuYGAhNjlmgqU82f3hBHTZSjD2hQRxQtCbtyNccTv+zVmc6hKRkcGBbSiAMvmQfkj1C913l
	CZn2/nVSpSrND+G/ylN9s8GXfB1LHoztDN0qQ1PCIXBN4Uw032YQYdCK+qxAmWJ398+Fr6IEb4HKz
	ALkgCUGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK5-000xKC-1j;
	Mon, 11 Sep 2023 15:59:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK1-000xIX-1w
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:59:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjK0-0003z8-A5; Mon, 11 Sep 2023 17:59:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJz-005aH8-Ty; Mon, 11 Sep 2023 17:59:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJy-00Ft0P-2e;
	Mon, 11 Sep 2023 17:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:59:25 +0200
Message-Id: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_085933_641619_644FBEC3 
X-CRM114-Status: GOOD (  19.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: machine_id: support deriving app specific UUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

libsystemd provides a sd_id128_get_machine_app_specific() function that
allows deriving an application specific UUID without directly leaking
the machine ID.

Let's provide an equivalent for barebox that will be used in a following
commit to generate a stable MAC instead of randomizing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/machine_id.c  | 84 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/uuid.h |  8 +++++
 include/machine_id.h | 10 ++++++
 3 files changed, 100 insertions(+), 2 deletions(-)

diff --git a/common/machine_id.c b/common/machine_id.c
index 8c273b934989..edc8ad0ac156 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -13,17 +13,96 @@
 
 #define MACHINE_ID_LENGTH 32
 
+static bool __machine_id_initialized;
 static void *__machine_id_hashable;
 static size_t __machine_id_hashable_length;
 
-
+/**
+ * machine_id_set_hashable - Provide per-board unique data
+ * @hashable: Buffer
+ * @len: size of buffer
+ *
+ * The data supplied to the last call of this function prior to
+ * late_initcall will be hashed and stored into global.machine_id,
+ * which can be later used for fixup into the kernel command line
+ * or for deriving application specific unique IDs via
+ * machine_id_get_app_specific().
+ */
 void machine_id_set_hashable(const void *hashable, size_t len)
 {
-
 	__machine_id_hashable = xmemdup(hashable, len);
 	__machine_id_hashable_length = len;
 }
 
+/**
+ * machine_id_get_app_specific - Generates an application-specific UUID
+ * @result: UUID output of the function
+ * @...: pairs of (const void *, size_t) arguments of data to factor
+ * into the UUID followed by a NULL sentinel value.
+ *
+ * Combines the machine ID with the application specific varargs data
+ * to arrive at an application-specific and board-specific UUID that is
+ * stable and unique.
+ *
+ * The function returns 0 if a UUID was successfully written into @result
+ * and a negative error code otherwise.
+ */
+int machine_id_get_app_specific(uuid_t *result, ...)
+{
+	static u8 hmac[SHA256_DIGEST_SIZE];
+	const void *data;
+	size_t size;
+	va_list args;
+	struct digest *d;
+	int ret;
+
+	if (!__machine_id_initialized)
+		return -ENODATA;
+
+	d = digest_alloc("hmac(sha256)");
+	if (!d)
+		return -ENOSYS;
+
+	ret = digest_set_key(d, __machine_id_hashable, __machine_id_hashable_length);
+	if (ret)
+		goto out;
+
+	ret = digest_init(d);
+	if (ret)
+		goto out;
+
+	ret = -ENODATA;
+
+	va_start(args, result);
+
+	while ((data = va_arg(args, const void *))) {
+		size = va_arg(args, size_t);
+
+		ret = digest_update(d, data, size);
+		if (ret)
+			break;
+	}
+
+	va_end(args);
+
+	if (ret)
+		goto out;
+
+	ret = digest_final(d, hmac);
+	if (ret)
+		goto out;
+
+	/* Take only the first half. */
+	memcpy(result, hmac, min(sizeof(hmac), sizeof(*result)));
+
+	uuid_make_v4(result);
+
+out:
+	digest_free(d);
+
+	return ret;
+}
+
 static int machine_id_set_globalvar(void)
 {
 	struct digest *digest = NULL;
@@ -61,6 +140,7 @@ static int machine_id_set_globalvar(void)
 	env_machine_id = basprintf("%.*s", MACHINE_ID_LENGTH, hex_machine_id);
 	globalvar_add_simple("machine_id", env_machine_id);
 	free(env_machine_id);
+	__machine_id_initialized = true;
 
 out:
 	digest_free(digest);
diff --git a/include/linux/uuid.h b/include/linux/uuid.h
index 6b1a3efa1e0b..1e4ffb343452 100644
--- a/include/linux/uuid.h
+++ b/include/linux/uuid.h
@@ -107,6 +107,14 @@ extern const u8 uuid_index[16];
 int guid_parse(const char *uuid, guid_t *u);
 int uuid_parse(const char *uuid, uuid_t *u);
 
+static inline void uuid_make_v4(uuid_t *u) {
+	/* Set UUID version to 4 --- truly random generation */
+	u->b[6] = (u->b[6] & 0x0F) | 0x40;
+
+	/* Set the UUID variant to DCE */
+	u->b[8] = (u->b[8] & 0x3F) | 0x80;
+}
+
 /* MEI UUID type, don't use anywhere else */
 #include <uapi/linux/uuid.h>
 
diff --git a/include/machine_id.h b/include/machine_id.h
index e30bbada1acd..0ed4052ec47c 100644
--- a/include/machine_id.h
+++ b/include/machine_id.h
@@ -3,9 +3,13 @@
 #ifndef __MACHINE_ID_H__
 #define __MACHINE_ID_H__
 
+#include <linux/types.h>
+#include <linux/uuid.h>
+
 #if IS_ENABLED(CONFIG_MACHINE_ID)
 
 void machine_id_set_hashable(const void *hashable, size_t len);
+int machine_id_get_app_specific(uuid_t *result, ...) __attribute__((__sentinel__));
 
 #else
 
@@ -13,6 +17,12 @@ static inline void machine_id_set_hashable(const void *hashable, size_t len)
 {
 }
 
+static inline int machine_id_get_app_specific(uuid_t *result, ...)
+	__attribute__((__sentinel__));
+{
+	return -ENOSYS;
+}
+
 #endif /* CONFIG_MACHINE_ID */
 
 #endif  /* __MACHINE_ID_H__ */
-- 
2.39.2



