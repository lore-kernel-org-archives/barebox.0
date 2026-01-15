Delivery-date: Thu, 15 Jan 2026 13:08:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9I-001aGn-0u
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9G-0002Zr-OM
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rxEYbBx/P8EVEtot+3GJ5GythZAJ0zTIVd2hfNYQibA=; b=25VqsOTRwehKdXkA5yUa6uasrn
	VTPYcQBJhwbFY30tF11cXRw1Q2dwg+tNw520NCVbZ+57pZTU2GzrRBytO42zYQwvEaEZTZ3+qfyTS
	93jeEcKDxwIArOiqGNPFqVn42jEOSFcz6mG3bJKNKZwoafarNPH5xX79xg6Y3QwA4jDgikrmIYd0f
	cLu6AcZcEM9Z9fSD9EeU3QGgYQkV2nhIbErDLlmNsePJ6yuLTbPDPZ9EFctfdltvyQXzJmP4eSyJ6
	89Bu83NKWkLYjYW8Mh/t0l6gqtDyvwaaN7h/aEqbVQ48dIrcxkJFCkEpSD7sTnLepoYKEgxDX1uUW
	alAi5gpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8o-0000000CIW1-3EIS;
	Thu, 15 Jan 2026 12:07:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8l-0000000CITS-2vM4
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8k-0002HG-4D; Thu, 15 Jan 2026 13:07:50 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:10 +0100
Message-ID: <20260115120748.3433463-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040751_911690_948CA59A 
X-CRM114-Status: GOOD (  16.00  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] param: support uuid/guid parameter type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make UUIDs and GUIDs first class citizens for parameters by adding
dedicated dev_add_param_guid/uuid functions as well as globalvar_
wrappers.

We add different functions for both UUID and GUID to handle the
difference in string representation.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/globalvar.c      | 40 +++++++++++++++++
 include/globalvar.h     | 12 ++++++
 include/linux/sprintf.h |  3 ++
 include/param.h         | 39 +++++++++++++++++
 lib/parameter.c         | 95 +++++++++++++++++++++++++++++++++++++++++
 lib/vsprintf.c          |  2 +-
 6 files changed, 190 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index fcaa15179f68..1fac891ae073 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -672,6 +672,46 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 	return 0;
 }
 
+int globalvar_add_simple_uuid(const char *name, uuid_t *uuid)
+{
+	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_uuid(&global_device, name,
+			       NULL, NULL, uuid, 0);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	globalvar_nv_sync(name);
+
+	return 0;
+}
+
+int globalvar_add_simple_guid(const char *name, guid_t *guid)
+{
+	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_guid(&global_device, name,
+			       NULL, NULL, guid, 0);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	globalvar_nv_sync(name);
+
+	return 0;
+}
+
 static int globalvar_init(void)
 {
 	const char *endianness;
diff --git a/include/globalvar.h b/include/globalvar.h
index d0a8272588b4..e369616c632a 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -5,6 +5,7 @@
 #include <param.h>
 #include <driver.h>
 #include <linux/err.h>
+#include <linux/uuid.h>
 #include <stringlist.h>
 
 extern struct device global_device;
@@ -36,6 +37,8 @@ int globalvar_add_simple_enum(const char *name,	int *value,
 int globalvar_add_simple_bitmask(const char *name, unsigned long *value,
 				 const char * const *names, int max);
 int globalvar_add_simple_ip(const char *name, IPaddr_t *ip);
+int globalvar_add_simple_uuid(const char *name, uuid_t *uuid);
+int globalvar_add_simple_guid(const char *name, guid_t *guid);
 
 int nvvar_load(void);
 void nvvar_print(void);
@@ -101,6 +104,15 @@ static inline int globalvar_add_simple_ip(const char *name,
 	return 0;
 }
 
+static inline int globalvar_add_simple_uuid(const char *name, uuid_t *uuid)
+{
+	return 0;
+}
+static inline int globalvar_add_simple_guid(const char *name, guid_t *guid)
+{
+	return 0;
+}
+
 static inline void globalvar_remove(const char *name) {}
 
 static inline void globalvar_print(void) {}
diff --git a/include/linux/sprintf.h b/include/linux/sprintf.h
index 349773d3e16a..e4b3df959a72 100644
--- a/include/linux/sprintf.h
+++ b/include/linux/sprintf.h
@@ -43,6 +43,9 @@ static inline __printf(2, 3) int rasprintf(char **strp, const char *fmt, ...)
 
 #define basprintf xasprintf
 
+char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
+		  int precision, int flags, const char *fmt);
 const char *size_human_readable(unsigned long long size);
 
+
 #endif	/* _LINUX_KERNEL_SPRINTF_H */
diff --git a/include/param.h b/include/param.h
index 1713a18c378e..c223114fbde1 100644
--- a/include/param.h
+++ b/include/param.h
@@ -5,6 +5,7 @@
 #include <linux/err.h>
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/uuid.h>
 #include <bobject.h>
 #include <stdarg.h>
 
@@ -27,6 +28,8 @@ enum param_type {
 	PARAM_TYPE_IPV4,
 	PARAM_TYPE_MAC,
 	PARAM_TYPE_FILE_LIST,
+	PARAM_TYPE_UUID,
+	PARAM_TYPE_GUID,
 };
 
 struct param_d {
@@ -106,6 +109,12 @@ struct param_d *bobject_add_param_file_list(bobject_t bobj, const char *name,
 					struct file_list **file_list,
 					void *priv);
 
+struct param_d *__bobject_add_param_uuid(bobject_t _bobj, const char *name,
+					 int (*set)(struct param_d *p, void *priv),
+					 int (*get)(struct param_d *p, void *priv),
+					 void *uuid, bool is_guid,
+					 void *priv);
+
 struct param_d *vbobject_add_param_fixed(struct bobject *bobj, const char *name,
 					 const char *fmt, va_list ap);
 
@@ -233,6 +242,15 @@ static inline struct param_d *bobject_add_param_file_list(bobject_t bobj,
 	return NULL;
 }
 
+static inline struct param_d *__bobject_add_param_uuid(bobject_t _bobj, const char *name,
+						       int (*set)(struct param_d *p, void *priv),
+						       int (*get)(struct param_d *p, void *priv),
+						       void *uuid, bool is_guid,
+						       void *priv)
+{
+	return NULL;
+}
+
 static inline
 struct param_d *vbobject_add_param_fixed(struct bobject *bobj, const char *name,
 					 const char *fmt, va_list ap)
@@ -273,6 +291,25 @@ static inline const char *get_param_value(struct param_d *param)
 	return param->get(param->bobj, param);
 }
 
+static inline struct param_d *
+bobject_add_param_uuid(bobject_t _bobj, const char *name,
+		       int (*set)(struct param_d *p, void *priv),
+		       int (*get)(struct param_d *p, void *priv),
+		       uuid_t *uuid, void *priv)
+{
+	return __bobject_add_param_uuid(_bobj, name, set, get, uuid, false, priv);
+}
+
+static inline struct param_d *
+bobject_add_param_guid(bobject_t _bobj, const char *name,
+		       int (*set)(struct param_d *p, void *priv),
+		       int (*get)(struct param_d *p, void *priv),
+		       guid_t *guid, void *priv)
+{
+	return __bobject_add_param_uuid(_bobj, name, set, get, guid, true, priv);
+}
+
+
 int param_set_readonly(struct param_d *p, void *priv);
 
 /*
@@ -409,6 +446,8 @@ static inline struct param_d *bobject_add_param_bitmask_ro(bobject_t bobj,
 #define dev_add_param_ip		bobject_add_param_ip
 #define dev_add_param_mac		bobject_add_param_mac
 #define dev_add_param_file_list		bobject_add_param_file_list
+#define dev_add_param_uuid		bobject_add_param_uuid
+#define dev_add_param_guid		bobject_add_param_guid
 #define dev_param_set_generic		bobject_param_set_generic
 
 #define dev_add_param_int		bobject_add_param_int
diff --git a/lib/parameter.c b/lib/parameter.c
index 1243a12e8701..5c8b86d0dff3 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -42,6 +42,8 @@ static const char *param_type_string[] = {
 	[PARAM_TYPE_IPV4] = "ipv4",
 	[PARAM_TYPE_MAC] = "MAC",
 	[PARAM_TYPE_FILE_LIST] = "file-list",
+	[PARAM_TYPE_UUID] = "uuid",
+	[PARAM_TYPE_GUID] = "guid",
 };
 
 const char *get_param_type(struct param_d *param)
@@ -1095,6 +1097,99 @@ struct param_d *bobject_add_param_file_list(bobject_t _bobj, const char *name,
 	return &pfl->param;
 }
 
+struct param_uuid {
+	struct param_d param;
+	void *uuid;
+	char *uuid_str;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_uuid *to_param_uuid(struct param_d *p)
+{
+	return container_of(p, struct param_uuid, param);
+}
+
+static int param_uuid_set(struct bobject *bobj, struct param_d *p,
+			  const char *val)
+{
+	struct param_uuid *pui = to_param_uuid(p);
+	u8 uuid_save[UUID_SIZE];
+	int ret;
+
+	if (!val || strlen(val) == UUID_STRING_LEN)
+		return -EINVAL;
+
+	memcpy(uuid_save, pui->uuid, UUID_SIZE);
+
+	if (pui->param.type == PARAM_TYPE_GUID)
+		ret = guid_parse(val, pui->uuid);
+	else
+		ret = uuid_parse(val, pui->uuid);
+
+	if (ret)
+		return ret;
+
+	if (!pui->set)
+		return 0;
+
+	ret = pui->set(p, p->driver_priv);
+	if (ret)
+		memcpy(pui->uuid, uuid_save, UUID_SIZE);
+
+	return ret;
+}
+
+static const char *param_uuid_get(struct bobject *bobj, struct param_d *p)
+{
+	struct param_uuid *pui = to_param_uuid(p);
+	int ret;
+
+	if (pui->get) {
+		ret = pui->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	p->value = xrealloc(p->value, UUID_STRING_LEN + 1);
+
+	/* We don't use xasprintf here to avoid forcing a PRINTF_UUID
+	 * dependency on all CONFIG_PARAMETER users
+	 */
+	*uuid_string(p->value, p->value + UUID_STRING_LEN + 1,
+		    pui->uuid, -1, -1, 0,
+		    pui->param.type == PARAM_TYPE_GUID ? "Ul" : "Ub") = '\0';
+
+	return p->value;
+}
+
+struct param_d *__bobject_add_param_uuid(bobject_t _bobj, const char *name,
+					 int (*set)(struct param_d *p, void *priv),
+					 int (*get)(struct param_d *p, void *priv),
+					 void *uuid, bool is_guid,
+					 void *priv)
+{
+	struct bobject *bobj = _bobj.bobj;
+	struct param_uuid *pui;
+	int ret;
+
+	pui = xzalloc(sizeof(*pui));
+	pui->uuid = uuid;
+	pui->set = set;
+	pui->get = get;
+	pui->param.driver_priv = priv;
+	pui->param.type = is_guid ? PARAM_TYPE_GUID : PARAM_TYPE_UUID;
+
+	ret = __bobject_add_param(&pui->param, bobj, name,
+			param_uuid_set, param_uuid_get, 0);
+	if (ret) {
+		free(pui);
+		return ERR_PTR(ret);
+	}
+
+	return &pui->param;
+}
+
 
 /**
  * param_remove - remove a parameter and free its memory
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 6c9dae467496..2dca20b8b0a3 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -321,7 +321,7 @@ char *error_string(char *buf, const char *end, const void *errptr, int field_wid
     return string(buf, end, strerror(-PTR_ERR(errptr)), field_width, precision, flags);
 }
 
-static noinline_for_stack
+noinline_for_stack
 char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 		  int precision, int flags, const char *fmt)
 {
-- 
2.47.3



