Delivery-date: Tue, 13 Apr 2021 00:37:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BA-0006FK-GW
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5B6-0007E1-99
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f3GmdSFX6zvLZo+7+kPeiDX1PdWrHgbxRc9rYinCV7w=; b=VrSHwbWL7j3nhfc1O1lA7HJew
	ZJj7UtbUy2qQ2V96CK6TGvgqd1/VkGzvHNOvYpfUGMlFSiiOwbSQbjJClI+6MM94QhrYUNzlJ1he0
	DMi2jGG1MJvH/RACXbwloiVydAovHm7TNLx24+OHnXn3H6AIq1HqzkX7W7XixlQUZ/tKgNm+Td8YF
	9ArF4TAgG+tbWKrCXmB8wOK5ZeLQF064BxaFJ0GUwX7m645Ngb9/2MudfVMeAktIKtCGp/e+Ri2L+
	Wvq8l9yftX7dKsK7ltAKJIxvaSxcSQZJ+TTy2fIrxjIXKnwBNEsdWLNw2zF2wD3x2c6/FZZYY6UY1
	770JnG/7Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59y-007nII-Qd; Mon, 12 Apr 2021 22:35:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59F-007n6y-Fv
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rLgqe9Aeubp1GnVDk0V2VYEx38V3ogCdQeKaXX2N5Ow=; b=15UFvlhYr/sbbFlX6BNXV/ewsE
 eGRb/uU0rvHc41dvBhNfxeTdLjZK3xaKIjeiZYO2yH4tdwB1XoUYq3hwOAqttmYnKtH/8yqsVnupX
 scu7+qrD1Mp2okzWIwfLhG+GMo8YdQBZRkgBIiCNwhx8/PcW0EkOBcpiwCmhnjcAxYEVnZ67BIyjk
 CUgEE0zRuXeWALFymBkJDK1WkTAf6Yd+Gx/1E/xIXAJ1Q+7RwZ3fB3vraeC4BPNESpcKINaUlM0Ta
 1Tkngypim59uGaBnAeoUxv+fUSciOHx/OJKowyze/FaAHAC0tEFiyosSMsy7hj7ckyHUuQcu8Q57i
 JXix7I5A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap3-IM
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BL-5K; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003sn-D9; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:53 +0200
Message-Id: <20210412223502.29691-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_844640_6F45A3A7 
X-CRM114-Status: GOOD (  17.38  )
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
Subject: [PATCH 05/14] param: introduce file-list parameter type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DFU, fastboot and incoming mass storage support all use file lists as
input, but individually check syntax correctness only on use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/file-list.c   | 47 +++++++++++++++++++++++
 include/file-list.h  |  3 ++
 include/param.h      | 15 ++++++++
 include/stringlist.h |  1 +
 lib/parameter.c      | 88 ++++++++++++++++++++++++++++++++++++++++++++
 lib/stringlist.c     | 30 +++++++++++++++
 6 files changed, 184 insertions(+)

diff --git a/common/file-list.c b/common/file-list.c
index cd52b5e045de..924903cef7dc 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -6,6 +6,7 @@
 #include <malloc.h>
 #include <fs.h>
 #include <file-list.h>
+#include <stringlist.h>
 #include <linux/err.h>
 
 #define PARSE_DEVICE	0
@@ -109,6 +110,25 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 	return file_list_add_entry(files, name, filename, flags);
 }
 
+static const char *flags_to_str(int flags)
+{
+	static char str[sizeof "srcu"];
+	char *s = str;;
+
+	if (flags & FILE_LIST_FLAG_SAFE)
+		*s++ = 's';
+	if (flags & FILE_LIST_FLAG_READBACK)
+		*s++ = 'r';
+	if (flags & FILE_LIST_FLAG_CREATE)
+		*s++ = 'c';
+	if (flags & FILE_LIST_FLAG_UBI)
+		*s++ = 'u';
+
+	*s = '\0';
+
+	return str;
+}
+
 struct file_list *file_list_parse(const char *str)
 {
 	struct file_list *files;
@@ -149,3 +169,30 @@ void file_list_free(struct file_list *files)
 
 	free(files);
 }
+
+char *file_list_to_str(const struct file_list *files)
+{
+	struct file_list_entry *entry;
+	struct string_list sl;
+	char *str;
+
+	if (!files)
+		return strdup("");
+
+	string_list_init(&sl);
+
+	list_for_each_entry(entry, &files->list, list) {
+		int ret = string_list_add_asprintf(&sl, "%s(%s)%s", entry->filename, entry->name,
+						   flags_to_str(entry->flags));
+		if (ret) {
+			str = ERR_PTR(ret);
+			goto out;
+		}
+	}
+
+	str = string_list_join(&sl, ",");
+out:
+	string_list_free(&sl);
+
+	return str;
+}
diff --git a/include/file-list.h b/include/file-list.h
index 9a9edfa378f3..7264a3e2c628 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -2,6 +2,8 @@
 #ifndef __FILE_LIST
 #define __FILE_LIST
 
+#include <linux/list.h>
+
 #define FILE_LIST_FLAG_SAFE	(1 << 0)
 #define FILE_LIST_FLAG_READBACK	(1 << 1)
 #define FILE_LIST_FLAG_CREATE	(1 << 2)
@@ -20,6 +22,7 @@ struct file_list {
 };
 
 struct file_list *file_list_parse(const char *str);
+char *file_list_to_str(const struct file_list *files);
 void file_list_free(struct file_list *);
 
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
diff --git a/include/param.h b/include/param.h
index 6aca1b481d92..4835be4d2518 100644
--- a/include/param.h
+++ b/include/param.h
@@ -10,6 +10,7 @@
 #define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
 struct device_d;
+struct file_list;
 typedef uint32_t          IPaddr_t;
 
 enum param_type {
@@ -23,6 +24,7 @@ enum param_type {
 	PARAM_TYPE_BITMASK,
 	PARAM_TYPE_IPV4,
 	PARAM_TYPE_MAC,
+	PARAM_TYPE_FILE_LIST,
 };
 
 struct param_d {
@@ -89,6 +91,11 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv);
 
+struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		struct file_list **file_list, void *priv);
+
 struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
 
 void dev_remove_param(struct param_d *p);
@@ -185,6 +192,14 @@ static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char
 	return NULL;
 }
 
+static inline struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		struct file_list **file_list, void *priv)
+{
+	return NULL;
+}
+
 static inline struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name,
 						  const char *value)
 {
diff --git a/include/stringlist.h b/include/stringlist.h
index 5cd452ca5fa4..094dc7759e76 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -13,6 +13,7 @@ int string_list_add(struct string_list *sl, const char *str);
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
 int string_list_add_sorted(struct string_list *sl, const char *str);
 int string_list_contains(struct string_list *sl, const char *str);
+char *string_list_join(const struct string_list *sl, const char *joinstr);
 void string_list_print_by_column(struct string_list *sl);
 
 static inline void string_list_init(struct string_list *sl)
diff --git a/lib/parameter.c b/lib/parameter.c
index f57b7d07fd3a..1f768ab65ede 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -27,6 +27,8 @@
 #include <string.h>
 #include <globalvar.h>
 #include <linux/err.h>
+#include <file-list.h>
+#include <stringlist.h>
 
 static const char *param_type_string[] = {
 	[PARAM_TYPE_STRING] = "string",
@@ -39,6 +41,7 @@ static const char *param_type_string[] = {
 	[PARAM_TYPE_BITMASK] = "bitmask",
 	[PARAM_TYPE_IPV4] = "ipv4",
 	[PARAM_TYPE_MAC] = "MAC",
+	[PARAM_TYPE_FILE_LIST] = "file-list",
 };
 
 const char *get_param_type(struct param_d *param)
@@ -909,6 +912,91 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 	return &pm->param;
 }
 
+struct param_file_list {
+	struct param_d param;
+	struct file_list **file_list;
+	char *file_list_str;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_file_list *to_param_file_list(struct param_d *p)
+{
+	return container_of(p, struct param_file_list, param);
+}
+
+static int param_file_list_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_file_list *pfl = to_param_file_list(p);
+	struct file_list *file_list_save = *pfl->file_list;
+	int ret;
+
+	if (!val)
+		val = "";
+
+	*pfl->file_list = file_list_parse(val);
+	if (IS_ERR(*pfl->file_list)) {
+		ret = PTR_ERR(*pfl->file_list);
+		goto out;
+	}
+
+	if (pfl->set) {
+		ret = pfl->set(p, p->driver_priv);
+		if (ret) {
+			file_list_free(*pfl->file_list);
+			goto out;
+		}
+	}
+
+	return 0;
+out:
+	*pfl->file_list = file_list_save;
+
+	return ret;
+}
+
+static const char *param_file_list_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_file_list *pfl = to_param_file_list(p);
+	int ret;
+
+	if (pfl->get) {
+		ret = pfl->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	free(p->value);
+	p->value = file_list_to_str(*pfl->file_list);
+	return p->value;
+}
+
+struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		struct file_list **file_list, void *priv)
+{
+	struct param_file_list *pfl;
+	int ret;
+
+	pfl = xzalloc(sizeof(*pfl));
+	pfl->file_list = file_list;
+	pfl->set = set;
+	pfl->get = get;
+	pfl->param.driver_priv = priv;
+	pfl->param.type = PARAM_TYPE_FILE_LIST;
+
+	ret = __dev_add_param(&pfl->param, dev, name,
+			param_file_list_set, param_file_list_get, 0);
+	if (ret) {
+		free(pfl);
+		return ERR_PTR(ret);
+	}
+
+	return &pfl->param;
+}
+
+
 /**
  * dev_remove_param - remove a parameter from a device and free its
  * memory
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 8e92c1b207c5..d67da5a1d8f5 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -2,6 +2,7 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <errno.h>
+#include <string.h>
 #include <stringlist.h>
 
 static int string_list_compare(struct list_head *a, struct list_head *b)
@@ -72,6 +73,35 @@ int string_list_contains(struct string_list *sl, const char *str)
 	return 0;
 }
 
+char *string_list_join(const struct string_list *sl, const char *joinstr)
+{
+	struct string_list *entry;
+	size_t len = 0;
+	size_t joinstr_len = strlen(joinstr);
+	char *str, *next;
+
+	string_list_for_each_entry(entry, sl)
+		len += strlen(entry->str) + joinstr_len;
+
+	if (len == 0)
+		return strdup("");
+
+	str = malloc(len + 1);
+	if (!str)
+		return NULL;
+
+	next = str;
+
+	string_list_for_each_entry(entry, sl) {
+		next = stpcpy(next, entry->str);
+		next = stpcpy(next, joinstr);
+	}
+
+	next[-joinstr_len] = '\0';
+
+	return str;
+}
+
 void string_list_print_by_column(struct string_list *sl)
 {
 	int len = 0, num, i;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

