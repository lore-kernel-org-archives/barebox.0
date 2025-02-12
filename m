Delivery-date: Wed, 12 Feb 2025 15:10:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRM-001SOk-1x
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRK-0001ZD-Ek
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MvCIeAxwAQZHZEjkqMjD5ADE+TfQ1lrWQh/4mrJPJPQ=; b=q3OI75meJpl8cFhHRb+IMGx/LX
	B3fDVPiQPX3r8nnYPrk9vsfjVmpy9PX7ge2KudqaYXqSotKXNH6nuN5f7relxpwtJsGUT7a1vtzk8
	xJnadKa4S6PRHDF8m34P0JL0u6Bi31YsPxSuDeCXq5NaL6sCl3LArEa8wkIcOsOh2LNlJLblPXIT6
	DHlSSj5CEyXU6NDgolkQcNUpltM964Dys2VYYKcQGQ5yEJv8RUC5QZYsPwYiAZLZT9u6Lgw+BX+Zf
	S09IqLyVXd1y3hb1SuotO58RBf6nZ63fBasEYz57/8dfibjx5kn4Y976ZGCmGjJcFnPkBT89OAERZ
	6zkgDSoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQt-00000007c9r-1jYn;
	Wed, 12 Feb 2025 14:09:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQq-00000007c4s-0dmS
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-00012D-0w; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1w-28;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1p;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-5-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=7320;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Nvo5292AKmP+v3h5Bbxj0dwLOXt+txxUYslFzHICexw=;
 b=MyfbKhbyu0L2aHpJsJBkEgRsveUlaVDgly86uyiiv1PFhgcm8NeURey9AyX4m3UQiYWfgH7LT
 IPV2mK9IsVLB4/rdYfT7Pwhhbkbvqq7Umx+RkUjFLWz/Eo7UHc+Pcgp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060940_375149_40B60561 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/20] fip: use linux list implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace open coded list handling with Linux list implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c | 16 ++++++++--------
 include/fiptool.h  | 16 ++++++++++++----
 lib/fip.c          | 40 +++++++++++++++++++++++-----------------
 3 files changed, 43 insertions(+), 29 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index a4370c9eef..45d534e470 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -73,7 +73,7 @@ static int info_cmd(struct fip_state *fip, int argc, char *argv[])
 	pr_verbose("toc_header[flags]: 0x%llX\n",
 	    (unsigned long long)toc_header.flags);
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		struct fip_image *image = desc->image;
 
 		if (image == NULL)
@@ -409,7 +409,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 		}
 
 	/* Unpack all specified images. */
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		char file[PATH_MAX];
 		struct fip_image *image = desc->image;
 
@@ -517,7 +517,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 	if (ret)
 		return ret;
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		if (desc->action != DO_REMOVE)
 			continue;
 
@@ -548,7 +548,7 @@ static cmd_t cmds[] = {
 static int do_fiptool(int argc, char *argv[])
 {
 	int i, opt, ret = 0;
-	struct fip_state fip = {};
+	struct fip_state *fip = fip_new();
 
 	/*
 	 * Set POSIX mode so getopt stops at the first non-option
@@ -557,7 +557,7 @@ static int do_fiptool(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, "+v")) > 0) {
 		switch (opt) {
 		case 'v':
-			fip.verbose = 1;
+			fip->verbose = 1;
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -569,14 +569,14 @@ static int do_fiptool(int argc, char *argv[])
 	if (argc == 0)
 		return COMMAND_ERROR_USAGE;
 
-	fill_image_descs(&fip);
+	fill_image_descs(fip);
 	for (i = 0; i < ARRAY_SIZE(cmds); i++) {
 		if (strcmp(cmds[i].name, argv[0]) == 0) {
 			struct getopt_context gc;
 
 			getopt_context_store(&gc);
 
-			ret = cmds[i].handler(&fip, argc, argv);
+			ret = cmds[i].handler(fip, argc, argv);
 
 			getopt_context_restore(&gc);
 			break;
@@ -585,7 +585,7 @@ static int do_fiptool(int argc, char *argv[])
 
 	if (i == ARRAY_SIZE(cmds))
 		return COMMAND_ERROR_USAGE;
-	free_image_descs(&fip);
+	fip_free(fip);
 	return ret;
 }
 
diff --git a/include/fiptool.h b/include/fiptool.h
index 6f1d69d178..5a3fdee6e0 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -8,6 +8,7 @@
 
 #include <linux/uuid.h>
 #include <fip.h>
+#include <linux/list.h>
 
 enum {
 	DO_UNSPEC = 0,
@@ -23,7 +24,7 @@ struct fip_image_desc {
 	int                action;
 	char              *action_arg;
 	struct fip_image  *image;
-	struct fip_image_desc *next;
+	struct list_head  list;
 };
 
 struct fip_image {
@@ -32,7 +33,7 @@ struct fip_image {
 };
 
 struct fip_state {
-	struct fip_image_desc *image_desc_head;
+	struct list_head descs;
 	size_t nr_image_descs;
 	int verbose;
 };
@@ -45,6 +46,9 @@ struct fip_state {
 	} \
 } while (0)
 
+struct fip_state *fip_new(void);
+void fip_free(struct fip_state *fip);
+
 struct fip_image_desc *new_image_desc(const uuid_t *uuid,
 			     const char *name, const char *cmdline_name);
 
@@ -55,8 +59,6 @@ void free_image_desc(struct fip_image_desc *desc);
 
 void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc);
 
-void free_image_descs(struct fip_state *fip);
-
 void fill_image_descs(struct fip_state *fip);
 
 struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
@@ -84,4 +86,10 @@ typedef struct toc_entry {
 extern toc_entry_t toc_entries[];
 extern toc_entry_t plat_def_toc_entries[];
 
+#define fip_for_each_desc(fip, e) \
+        list_for_each_entry(e, &(fip)->descs, list)
+
+#define fip_for_each_desc_safe(fip, e, tmp) \
+        list_for_each_entry_safe(e, tmp, &(fip)->descs, list)
+
 #endif /* FIPTOOL_H */
diff --git a/lib/fip.c b/lib/fip.c
index e7589ff4c2..63f1469086 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -66,27 +66,33 @@ void free_image_desc(struct fip_image_desc *desc)
 
 void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc)
 {
-	struct fip_image_desc **p = &fip->image_desc_head;
+	list_add_tail(&desc->list, &fip->descs);
+	fip->nr_image_descs++;
+}
 
-	while (*p)
-		p = &(*p)->next;
+struct fip_state *fip_new(void)
+{
+	struct fip_state *fip;
 
-	ASSERT(*p == NULL);
-	*p = desc;
-	fip->nr_image_descs++;
+	fip = xzalloc(sizeof(*fip));
+
+	INIT_LIST_HEAD(&fip->descs);
+
+	return fip;
 }
 
-void free_image_descs(struct fip_state *fip)
+void fip_free(struct fip_state *fip)
 {
-	struct fip_image_desc *desc = fip->image_desc_head, *tmp;
+	struct fip_image_desc *desc, *tmp;
 
-	while (desc != NULL) {
-		tmp = desc->next;
+	fip_for_each_desc_safe(fip, desc, tmp) {
 		free_image_desc(desc);
-		desc = tmp;
 		fip->nr_image_descs--;
 	}
+
 	ASSERT(fip->nr_image_descs == 0);
+
+	free(fip);
 }
 
 void fill_image_descs(struct fip_state *fip)
@@ -120,7 +126,7 @@ struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
 {
 	struct fip_image_desc *desc;
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next)
+	fip_for_each_desc(fip, desc)
 		if (memcmp(&desc->uuid, uuid, sizeof(uuid_t)) == 0)
 			return desc;
 	return NULL;
@@ -135,7 +141,7 @@ struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **
 	eq = strchrnul(*arg, '=');
 	len = eq - *arg;
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		if (strncmp(desc->cmdline_name, *arg, len) == 0) {
 			if (*eq)
 				*arg = eq + 1;
@@ -305,7 +311,7 @@ int pack_images(struct fip_state *fip,
 	uint64_t entry_offset, buf_size, payload_size = 0, pad_size;
 	size_t nr_images = 0;
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next)
+	fip_for_each_desc(fip, desc)
 		if (desc->image != NULL)
 			nr_images++;
 
@@ -324,7 +330,7 @@ int pack_images(struct fip_state *fip,
 	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
 
 	entry_offset = buf_size;
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		struct fip_image *image = desc->image;
 
 		if (image == NULL || (image->toc_e.size == 0ULL))
@@ -360,7 +366,7 @@ int pack_images(struct fip_state *fip,
 
 	pr_verbose("Payload size: %llu bytes\n", payload_size);
 
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		struct fip_image *image = desc->image;
 
 		if (image == NULL)
@@ -399,7 +405,7 @@ int update_fip(struct fip_state *fip)
 	struct fip_image_desc *desc;
 
 	/* Add or replace images in the FIP file. */
-	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+	fip_for_each_desc(fip, desc) {
 		struct fip_image *image;
 
 		if (desc->action != DO_PACK)

-- 
2.39.5



