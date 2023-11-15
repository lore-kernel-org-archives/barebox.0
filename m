Delivery-date: Wed, 15 Nov 2023 10:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Bp4-00CJGO-2Q
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 10:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Bp4-0002xd-Lg
	for lore@pengutronix.de; Wed, 15 Nov 2023 10:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GfS2/T3s3EqbsKaAS5CmscFGdBliKteDA1zdXOzm7Ok=; b=ytLTPlGcerPOTpXguq1q2t/CHf
	xu/xDq02r4MfDR2MThjnfF8K8B76uV9qM0r0xNP/T34EgeV3dCuYcF4soU/qhDdD22mW5Nk5ztGkK
	eoumO3BBdHigKp6g8RYar7b3zXYNJaO2QejThtK59y0DlW/uMWe/LD3F7TP059XtEsOcfWoMb4OtR
	uO+wac1OKbyeV7jHHP5PW6tNLwi+n0WSfwIV3shKMzzJnFIxLJuC+AhFH6jV39RhtfjWUotBv/6fT
	pca0cgRqXuvnswMMUALeKfusgLT/y/blfZRMAU/idsOg/NEnW9DtL16OnKmekNYpL9JcSjHeEUxKX
	t148KiXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnX-000Hro-1K;
	Wed, 15 Nov 2023 09:02:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnO-000HpE-25
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 09:02:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3BnL-0002Lj-H0; Wed, 15 Nov 2023 10:02:47 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3BnK-009BNo-Uu; Wed, 15 Nov 2023 10:02:46 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3BnK-001mom-LI; Wed, 15 Nov 2023 10:02:46 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	barebox@lists.infradead.org
Date: Wed, 15 Nov 2023 10:02:40 +0100
Message-ID: <20231115090238.399200-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.42.0.586.gbc5204569f7d.dirty
In-Reply-To: <20231115090238.399200-1-uwe@kleine-koenig.org>
References: <20231115090238.399200-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4907; i=uwe@kleine-koenig.org; h=from:subject; bh=X8mA+1PlRMxhN/1RRQ1AoRNncnzMzoM6uW1Pk7FyztA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlVIkvQXmcZScHaSQ1Z+8vKFnF1onjjKbv+wIrK X9NvjTn9AGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZVSJLwAKCRCPgPtYfRL+ ThkaB/9wvFOu/L7KrHhFl6EHOEZeYdgh/NW2Ajb5qh/lMShSXBjzE053DC/hdAwLPhTTDM/tE63 XH85DrgpqGpxVhqxbdIo43RSBbYgIMt5AFeZOQ1xA/imiu/OR4BoZBQTujzVIm0nuK0WGRJOpkL oQRLNOD/CkY9qwAPJ+qL67fWzqWXbW26BuLtdJ7hr+0N0wkPikD1vKdtP9CmYclikLbHWn5M05a 5cg+rBaq2ePBLTwh26AyxGJZKP0uMaN9/7A6Wa+mksZ8iVQ8wf+fvRhF3ihLnzA+gmJX2SN+BQB OEvpDo2+4Ph/CZgjv8ZYJjpqZnyzJdzerppm3fsdW2xA1MrK
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_010250_684831_0F0F8994 
X-CRM114-Status: GOOD (  20.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] common: machine_id: support deriving app specific UUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

libsystemd provides a sd_id128_get_machine_app_specific() function that
allows deriving an application specific UUID without directly leaking
the machine ID.

Let's provide an equivalent for barebox that will be used in a following
commit to generate a stable MAC instead of randomizing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/machine_id.c  | 84 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/uuid.h |  8 +++++
 include/machine_id.h | 11 ++++++
 3 files changed, 101 insertions(+), 2 deletions(-)

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
index e30bbada1acd..9245a5412770 100644
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
 
@@ -13,6 +17,13 @@ static inline void machine_id_set_hashable(const void *hashable, size_t len)
 {
 }
 
+static inline int machine_id_get_app_specific(uuid_t *result, ...)
+	__attribute__((__sentinel__));
+static inline int machine_id_get_app_specific(uuid_t *result, ...)
+{
+	return -ENOSYS;
+}
+
 #endif /* CONFIG_MACHINE_ID */
 
 #endif  /* __MACHINE_ID_H__ */
-- 
2.42.0.586.gbc5204569f7d.dirty



