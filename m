Delivery-date: Wed, 12 Feb 2025 15:10:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRL-001SO9-2e
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRJ-0001Yo-BN
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YH+NBbZuzM86iBchmK7hY9kENpxwETm2heUFOEOW4bw=; b=ROh+o5inUmYh09OvFQRAbyHZtI
	jHEA643/+C/St3xWXeZR9ERdNfi6j2KYOwlnMnqrr+bKH1Ue3gmisxuZDpw7UPJi+YQyxlsAM/jki
	pMkqA7BNvIwNjqklz9nwaXkeAeQVbtAodPZMdh2qyCwu8gtfT+SeL2dgbOTJzvVQPmNjPfuDELwjd
	hkUx7cYDi/HE2twCphZ2ioGkwu72/FJ2G3WcDG+WqIwGBEHX05/MVXNDgwdx+rlUHrd7ONsfvQZDX
	kEUCyW2MvCVT2748Ju5V3LczZ3IvvXP0CDBPPraLhSpPo2nCWBB9Fc+qYJy+i8Ql8Hw+RQkBULw1d
	9bWbctTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQp-00000007c3u-03BL;
	Wed, 12 Feb 2025 14:09:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxt-1Gq2
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-000128-08; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1z-29;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1s;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-8-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=14765;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7tW2WnXkF0atNsNdauJfUwJN8cJmaJxm9mTUpSKrscg=;
 b=dx1WTuJYvwwDYC2SYmXWNZZete37tBSXQQaa/3jXwfEDE0JODPszhQlyTdws1fDv9VDLZkdOA
 /34WFBsA766BfFnwz5zMfISDdniLPnYT45b/nCBY9D0gUqZ+c/+Rhcb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_656691_749974DD 
X-CRM114-Status: GOOD (  17.41  )
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
Subject: [PATCH v2 08/20] fip: add fip_ prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Many functions of the FIP library do not have an indication what
they are about. Add a fip_ prefix to all FIP related functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c | 68 +++++++++++++++++++++++++++---------------------------
 include/fiptool.h  | 20 ++++++++--------
 lib/fip.c          | 40 ++++++++++++++++----------------
 3 files changed, 64 insertions(+), 64 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index eb7d9b5ac7..46b5ed29c3 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -62,7 +62,7 @@ static int info_cmd(struct fip_state *fip, int argc, char *argv[])
 
 	argc--, argv++;
 
-	ret = parse_fip(fip, argv[0], &toc_header);
+	ret = fip_parse(fip, argv[0], &toc_header);
 	if (ret)
 		return ret;
 
@@ -195,10 +195,10 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 		case 'e': {
 			struct fip_image_desc *desc;
 
-			desc = lookup_image_desc_from_opt(fip, &optarg);
+			desc = fip_lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
 				return COMMAND_ERROR;
-			set_image_desc_action(desc, DO_PACK, optarg);
+			fip_set_image_desc_action(desc, DO_PACK, optarg);
 			break;
 		}
 		case 'p':
@@ -222,13 +222,13 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 			if (uuid_is_null(&uuid) || filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
-			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			desc = fip_lookup_image_desc_from_uuid(fip, &uuid);
 			if (desc == NULL) {
 				snprintf(name, sizeof(name), "%pU", &uuid);
-				desc = new_image_desc(&uuid, name, "blob");
-				add_image_desc(fip, desc);
+				desc = fip_new_image_desc(&uuid, name, "blob");
+				fip_add_image_desc(fip, desc);
 			}
-			set_image_desc_action(desc, DO_PACK, filename);
+			fip_set_image_desc_action(desc, DO_PACK, filename);
 			break;
 		}
 		default:
@@ -241,10 +241,10 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 	if (argc == 0)
 		return COMMAND_ERROR_USAGE;
 
-	if (update_fip(fip))
+	if (fip_update(fip))
 		return COMMAND_ERROR;
 
-	return pack_images(fip, argv[0], toc_flags, align);
+	return fip_pack_images(fip, argv[0], toc_flags, align);
 }
 
 
@@ -265,10 +265,10 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 		case 'e': {
 			struct fip_image_desc *desc;
 
-			desc = lookup_image_desc_from_opt(fip, &optarg);
+			desc = fip_lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
 				return COMMAND_ERROR;
-			set_image_desc_action(desc, DO_PACK, optarg);
+			fip_set_image_desc_action(desc, DO_PACK, optarg);
 			break;
 		}
 		case 'p':
@@ -289,13 +289,13 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 			    filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
-			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			desc = fip_lookup_image_desc_from_uuid(fip, &uuid);
 			if (desc == NULL) {
 				snprintf(name, sizeof(name), "%pU", &uuid);
-				desc = new_image_desc(&uuid, name, "blob");
-				add_image_desc(fip, desc);
+				desc = fip_new_image_desc(&uuid, name, "blob");
+				fip_add_image_desc(fip, desc);
 			}
-			set_image_desc_action(desc, DO_PACK, filename);
+			fip_set_image_desc_action(desc, DO_PACK, filename);
 			break;
 		}
 		case 'a':
@@ -320,7 +320,7 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 		snprintf(outfile, sizeof(outfile), "%s", argv[0]);
 
 	if (file_exists(argv[0])) {
-		ret = parse_fip(fip, argv[0], &toc_header);
+		ret = fip_parse(fip, argv[0], &toc_header);
 		if (ret)
 			return ret;
 	}
@@ -329,10 +329,10 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 		toc_header.flags &= ~(0xffffULL << 32);
 	toc_flags = (toc_header.flags |= toc_flags);
 
-	if (update_fip(fip))
+	if (fip_update(fip))
 		return COMMAND_ERROR;
 
-	return pack_images(fip, outfile, toc_flags, align);
+	return fip_pack_images(fip, outfile, toc_flags, align);
 }
 
 static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
@@ -351,10 +351,10 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 		case 'e': {
 			struct fip_image_desc *desc;
 
-			desc = lookup_image_desc_from_opt(fip, &optarg);
+			desc = fip_lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
 				return COMMAND_ERROR;
-			set_image_desc_action(desc, DO_UNPACK, optarg);
+			fip_set_image_desc_action(desc, DO_UNPACK, optarg);
 			unpack_all = 0;
 			break;
 		}
@@ -370,13 +370,13 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 			if (uuid_is_null(&uuid) || filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
-			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			desc = fip_lookup_image_desc_from_uuid(fip, &uuid);
 			if (desc == NULL) {
 				snprintf(name, sizeof(name), "%pU", &uuid);
-				desc = new_image_desc(&uuid, name, "blob");
-				add_image_desc(fip, desc);
+				desc = fip_new_image_desc(&uuid, name, "blob");
+				fip_add_image_desc(fip, desc);
 			}
-			set_image_desc_action(desc, DO_UNPACK, filename);
+			fip_set_image_desc_action(desc, DO_UNPACK, filename);
 			unpack_all = 0;
 			break;
 		}
@@ -396,7 +396,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 	if (argc == 0)
 		return COMMAND_ERROR_USAGE;
 
-	ret = parse_fip(fip, argv[0], NULL);
+	ret = fip_parse(fip, argv[0], NULL);
 	if (ret)
 		return ret;
 
@@ -457,10 +457,10 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 		case 'e': {
 			struct fip_image_desc *desc;
 
-			desc = lookup_image_desc_from_opt(fip, &optarg);
+			desc = fip_lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
 				return COMMAND_ERROR;
-			set_image_desc_action(desc, DO_REMOVE, NULL);
+			fip_set_image_desc_action(desc, DO_REMOVE, NULL);
 			break;
 		}
 		case 'a':
@@ -479,13 +479,13 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 			if (uuid_is_null(&uuid))
 				return COMMAND_ERROR_USAGE;
 
-			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			desc = fip_lookup_image_desc_from_uuid(fip, &uuid);
 			if (desc == NULL) {
 				snprintf(name, sizeof(name), "%pU", &uuid);
-				desc = new_image_desc(&uuid, name, "blob");
-				add_image_desc(fip, desc);
+				desc = fip_new_image_desc(&uuid, name, "blob");
+				fip_add_image_desc(fip, desc);
 			}
-			set_image_desc_action(desc, DO_REMOVE, NULL);
+			fip_set_image_desc_action(desc, DO_REMOVE, NULL);
 			break;
 		}
 		case 'f':
@@ -511,7 +511,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 	if (outfile[0] == '\0')
 		snprintf(outfile, sizeof(outfile), "%s", argv[0]);
 
-	ret = parse_fip(fip, argv[0], &toc_header);
+	ret = fip_parse(fip, argv[0], &toc_header);
 	if (ret)
 		return ret;
 
@@ -528,7 +528,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 		}
 	}
 
-	return pack_images(fip, outfile, toc_header.flags, align);
+	return fip_pack_images(fip, outfile, toc_header.flags, align);
 }
 
 /* Available subcommands. */
@@ -567,7 +567,7 @@ static int do_fiptool(int argc, char *argv[])
 	if (argc == 0)
 		return COMMAND_ERROR_USAGE;
 
-	fill_image_descs(fip);
+	fip_fill_image_descs(fip);
 	for (i = 0; i < ARRAY_SIZE(cmds); i++) {
 		if (strcmp(cmds[i].name, argv[0]) == 0) {
 			struct getopt_context gc;
diff --git a/include/fiptool.h b/include/fiptool.h
index 5a3fdee6e0..6a12466c29 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -49,31 +49,31 @@ struct fip_state {
 struct fip_state *fip_new(void);
 void fip_free(struct fip_state *fip);
 
-struct fip_image_desc *new_image_desc(const uuid_t *uuid,
+struct fip_image_desc *fip_new_image_desc(const uuid_t *uuid,
 			     const char *name, const char *cmdline_name);
 
-void set_image_desc_action(struct fip_image_desc *desc, int action,
+void fip_set_image_desc_action(struct fip_image_desc *desc, int action,
     const char *arg);
 
-void free_image_desc(struct fip_image_desc *desc);
+void fip_free_image_desc(struct fip_image_desc *desc);
 
-void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc);
+void fip_add_image_desc(struct fip_state *fip, struct fip_image_desc *desc);
 
-void fill_image_descs(struct fip_state *fip);
+void fip_fill_image_descs(struct fip_state *fip);
 
-struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
+struct fip_image_desc *fip_lookup_image_desc_from_uuid(struct fip_state *fip,
 						 const uuid_t *uuid);
 
-struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
+struct fip_image_desc *fip_lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
 
-int parse_fip(struct fip_state *fip,
+int fip_parse(struct fip_state *fip,
 		     const char *filename, fip_toc_header_t *toc_header_out);
 
-int pack_images(struct fip_state *fip,
+int fip_pack_images(struct fip_state *fip,
 		const char *filename,
 		uint64_t toc_flags, unsigned long align);
 
-int update_fip(struct fip_state *fip);
+int fip_update(struct fip_state *fip);
 
 #define TOC_HEADER_SERIAL_NUMBER 0x12345678
 
diff --git a/lib/fip.c b/lib/fip.c
index 774de2ad1d..075cd0e1e6 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -26,7 +26,7 @@
 #include <fip.h>
 #include <fiptool.h>
 
-struct fip_image_desc *new_image_desc(const uuid_t *uuid,
+struct fip_image_desc *fip_new_image_desc(const uuid_t *uuid,
 			     const char *name, const char *cmdline_name)
 {
 	struct fip_image_desc *desc;
@@ -39,7 +39,7 @@ struct fip_image_desc *new_image_desc(const uuid_t *uuid,
 	return desc;
 }
 
-void set_image_desc_action(struct fip_image_desc *desc, int action,
+void fip_set_image_desc_action(struct fip_image_desc *desc, int action,
     const char *arg)
 {
 	ASSERT(desc != NULL);
@@ -52,7 +52,7 @@ void set_image_desc_action(struct fip_image_desc *desc, int action,
 		desc->action_arg = xstrdup(arg);
 }
 
-void free_image_desc(struct fip_image_desc *desc)
+void fip_free_image_desc(struct fip_image_desc *desc)
 {
 	free(desc->name);
 	free(desc->cmdline_name);
@@ -64,7 +64,7 @@ void free_image_desc(struct fip_image_desc *desc)
 	free(desc);
 }
 
-void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc)
+void fip_add_image_desc(struct fip_state *fip, struct fip_image_desc *desc)
 {
 	list_add_tail(&desc->list, &fip->descs);
 	fip->nr_image_descs++;
@@ -86,7 +86,7 @@ void fip_free(struct fip_state *fip)
 	struct fip_image_desc *desc, *tmp;
 
 	fip_for_each_desc_safe(fip, desc, tmp) {
-		free_image_desc(desc);
+		fip_free_image_desc(desc);
 		fip->nr_image_descs--;
 	}
 
@@ -95,7 +95,7 @@ void fip_free(struct fip_state *fip)
 	free(fip);
 }
 
-void fill_image_descs(struct fip_state *fip)
+void fip_fill_image_descs(struct fip_state *fip)
 {
 	toc_entry_t *toc_entry;
 
@@ -104,24 +104,24 @@ void fill_image_descs(struct fip_state *fip)
 	     toc_entry++) {
 		struct fip_image_desc *desc;
 
-		desc = new_image_desc(&toc_entry->uuid,
+		desc = fip_new_image_desc(&toc_entry->uuid,
 		    toc_entry->name,
 		    toc_entry->cmdline_name);
-		add_image_desc(fip, desc);
+		fip_add_image_desc(fip, desc);
 	}
 	for (toc_entry = plat_def_toc_entries;
 	     toc_entry->cmdline_name != NULL;
 	     toc_entry++) {
 		struct fip_image_desc *desc;
 
-		desc = new_image_desc(&toc_entry->uuid,
+		desc = fip_new_image_desc(&toc_entry->uuid,
 		    toc_entry->name,
 		    toc_entry->cmdline_name);
-		add_image_desc(fip, desc);
+		fip_add_image_desc(fip, desc);
 	}
 }
 
-struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
+struct fip_image_desc *fip_lookup_image_desc_from_uuid(struct fip_state *fip,
 						 const uuid_t *uuid)
 {
 	struct fip_image_desc *desc;
@@ -132,7 +132,7 @@ struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
 	return NULL;
 }
 
-struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **arg)
+struct fip_image_desc *fip_lookup_image_desc_from_opt(struct fip_state *fip, char **arg)
 {
 	int len = 0;
 	struct fip_image_desc *desc;
@@ -153,7 +153,7 @@ struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **
 	return NULL;
 }
 
-int parse_fip(struct fip_state *fip,
+int fip_parse(struct fip_state *fip,
 		     const char *filename, fip_toc_header_t *toc_header_out)
 {
 	struct stat st;
@@ -238,17 +238,17 @@ int parse_fip(struct fip_state *fip,
 		    toc_entry->size);
 
 		/* If this is an unknown image, create a descriptor for it. */
-		desc = lookup_image_desc_from_uuid(fip, &toc_entry->uuid);
+		desc = fip_lookup_image_desc_from_uuid(fip, &toc_entry->uuid);
 		if (desc == NULL) {
 			char name[UUID_STRING_LEN + 1], filename[PATH_MAX];
 
 			snprintf(name, sizeof(name), "%pU", &toc_entry->uuid);
 			snprintf(filename, sizeof(filename), "%s%s",
 			    name, ".bin");
-			desc = new_image_desc(&toc_entry->uuid, name, "blob");
+			desc = fip_new_image_desc(&toc_entry->uuid, name, "blob");
 			desc->action = DO_UNPACK;
 			desc->action_arg = xstrdup(filename);
-			add_image_desc(fip, desc);
+			fip_add_image_desc(fip, desc);
 		}
 
 		ASSERT(desc->image == NULL);
@@ -266,7 +266,7 @@ int parse_fip(struct fip_state *fip,
 	return 0;
 }
 
-static struct fip_image *read_image_from_file(const uuid_t *uuid, const char *filename)
+static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char *filename)
 {
 	struct stat st;
 	struct fip_image *image;
@@ -299,7 +299,7 @@ static struct fip_image *read_image_from_file(const uuid_t *uuid, const char *fi
 	return image;
 }
 
-int pack_images(struct fip_state *fip,
+int fip_pack_images(struct fip_state *fip,
 		const char *filename,
 		uint64_t toc_flags, unsigned long align)
 {
@@ -400,7 +400,7 @@ int pack_images(struct fip_state *fip,
  * in update_fip() creating the new FIP file from scratch because the
  * internal image table is not populated.
  */
-int update_fip(struct fip_state *fip)
+int fip_update(struct fip_state *fip)
 {
 	struct fip_image_desc *desc;
 
@@ -411,7 +411,7 @@ int update_fip(struct fip_state *fip)
 		if (desc->action != DO_PACK)
 			continue;
 
-		image = read_image_from_file(&desc->uuid,
+		image = fip_read_image_from_file(&desc->uuid,
 		    desc->action_arg);
 		if (!image)
 			return -1;

-- 
2.39.5



