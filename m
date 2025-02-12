Delivery-date: Wed, 12 Feb 2025 15:10:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRG-001SMk-32
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRE-0001US-Ns
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=67R9lPmkm4auY7raFivXs19IONN7BZXCtmIc3rokpzk=; b=mlCEoJF4hm5mDHlXRRDkpTNHYO
	Dg5LpWmkcUaLcdwbXdb5xbZI8SAvzZsxUyxHvb+BB5NPlkWKIsJF2Fq+Tk8aCDIZAofWMnGK4hC4X
	iVECWUxD3vYFnAWUlpU+4RivBxGQ1kCqqD5D1aqvakLTRzFtCgesfePqIswY3QvnH9I07YGMYY3bK
	eH3wkZ/l1wx0GV8DPm+JPq87865df//L6/RacghJAiPOZZCAj2UNEP3pw5h8IjNwwH5bqRc+RbPiQ
	BPdF8pr7+Xm/CITFAQZ85Oi7lA6AajAcC1br3/8wLnuz1uEmQvlIkqbg7YT4XHjEnJAB4NhAUwlxD
	rsJ1I4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQm-00000007c0t-304Z;
	Wed, 12 Feb 2025 14:09:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxu-1HC7
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-000127-0x; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1v-29;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1o;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-4-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=12090;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nAD2KnHlbuH5mND0X+NXGTH3PLNJD+cJdZMBsHThXqc=;
 b=cRZJmDmF7NZeDGAsy5mssulr1nRILs5XJDdOjhlhy562aBJu68WEZIK+pV+ogPxzmku3CN8QW
 lAOx4VA0JwoDtejEsjnePDD/W4yIRAPkc/hYAeA16jVBoZKiUWTBnBX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_656929_D4BCF884 
X-CRM114-Status: GOOD (  15.93  )
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
Subject: [PATCH v2 04/20] fip: drop typedefs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Do not typedef struct types.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c | 28 ++++++++++++++--------------
 include/fiptool.h  | 26 +++++++++++++-------------
 lib/fip.c          | 44 ++++++++++++++++++++++----------------------
 3 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index 2d766f895b..a4370c9eef 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -31,7 +31,7 @@ typedef struct cmd {
 } cmd_t;
 
 
-static int write_image_to_file(const image_t *image, const char *filename)
+static int write_image_to_file(const struct fip_image *image, const char *filename)
 {
 	int fd;
 
@@ -53,7 +53,7 @@ static int write_image_to_file(const image_t *image, const char *filename)
 
 static int info_cmd(struct fip_state *fip, int argc, char *argv[])
 {
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 	fip_toc_header_t toc_header;
 	int ret;
 
@@ -74,7 +74,7 @@ static int info_cmd(struct fip_state *fip, int argc, char *argv[])
 	    (unsigned long long)toc_header.flags);
 
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
-		image_t *image = desc->image;
+		struct fip_image *image = desc->image;
 
 		if (image == NULL)
 			continue;
@@ -193,7 +193,7 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 	while ((opt = getopt(argc, argv, "e:p:a:b:")) > 0) {
 		switch (opt) {
 		case 'e': {
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			desc = lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
@@ -214,7 +214,7 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 			char name[UUID_STRING_LEN + 1];
 			char filename[PATH_MAX] = { 0 };
 			uuid_t uuid = uuid_null;
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
@@ -264,7 +264,7 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 	while ((opt = getopt(argc, argv, "e:p:b:a:o:")) > 0) {
 		switch (opt) {
 		case 'e': {
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			desc = lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
@@ -281,7 +281,7 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 			char name[UUID_STRING_LEN + 1];
 			char filename[PATH_MAX] = { 0 };
 			uuid_t uuid = uuid_null;
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
@@ -339,7 +339,7 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 {
 	char outdir[PATH_MAX] = { 0 };
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 	int fflag = 0;
 	int unpack_all = 1;
 	int ret, opt;
@@ -350,7 +350,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 	while ((opt = getopt(argc, argv, "e:b:fo:")) > 0) {
 		switch (opt) {
 		case 'e': {
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			desc = lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
@@ -363,7 +363,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 			char name[UUID_STRING_LEN + 1];
 			char filename[PATH_MAX] = { 0 };
 			uuid_t uuid = uuid_null;
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
@@ -411,7 +411,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 	/* Unpack all specified images. */
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
 		char file[PATH_MAX];
-		image_t *image = desc->image;
+		struct fip_image *image = desc->image;
 
 		if (!unpack_all && desc->action != DO_UNPACK)
 			continue;
@@ -447,7 +447,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 {
 	char outfile[PATH_MAX] = { 0 };
 	fip_toc_header_t toc_header;
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 	long align = 1;
 	int ret, opt, fflag = 0;
 
@@ -457,7 +457,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 	while ((opt = getopt(argc, argv, "e:a:b:fo:")) > 0) {
 		switch (opt) {
 		case 'e': {
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			desc = lookup_image_desc_from_opt(fip, &optarg);
 			if (!desc)
@@ -473,7 +473,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 		case 'b': {
 			char name[UUID_STRING_LEN + 1], filename[PATH_MAX];
 			uuid_t uuid = uuid_null;
-			image_desc_t *desc;
+			struct fip_image_desc *desc;
 
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
diff --git a/include/fiptool.h b/include/fiptool.h
index 704845f456..6f1d69d178 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -16,23 +16,23 @@ enum {
 	DO_REMOVE = 3
 };
 
-typedef struct image_desc {
+struct fip_image_desc {
 	uuid_t             uuid;
 	char              *name;
 	char              *cmdline_name;
 	int                action;
 	char              *action_arg;
-	struct image      *image;
-	struct image_desc *next;
-} image_desc_t;
+	struct fip_image  *image;
+	struct fip_image_desc *next;
+};
 
-typedef struct image {
+struct fip_image {
 	struct fip_toc_entry toc_e;
 	void                *buffer;
-} image_t;
+};
 
 struct fip_state {
-	image_desc_t *image_desc_head;
+	struct fip_image_desc *image_desc_head;
 	size_t nr_image_descs;
 	int verbose;
 };
@@ -45,24 +45,24 @@ struct fip_state {
 	} \
 } while (0)
 
-image_desc_t *new_image_desc(const uuid_t *uuid,
+struct fip_image_desc *new_image_desc(const uuid_t *uuid,
 			     const char *name, const char *cmdline_name);
 
-void set_image_desc_action(image_desc_t *desc, int action,
+void set_image_desc_action(struct fip_image_desc *desc, int action,
     const char *arg);
 
-void free_image_desc(image_desc_t *desc);
+void free_image_desc(struct fip_image_desc *desc);
 
-void add_image_desc(struct fip_state *fip, image_desc_t *desc);
+void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc);
 
 void free_image_descs(struct fip_state *fip);
 
 void fill_image_descs(struct fip_state *fip);
 
-image_desc_t *lookup_image_desc_from_uuid(struct fip_state *fip,
+struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
 						 const uuid_t *uuid);
 
-image_desc_t *lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
+struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
 
 int parse_fip(struct fip_state *fip,
 		     const char *filename, fip_toc_header_t *toc_header_out);
diff --git a/lib/fip.c b/lib/fip.c
index ae7ff8b3ad..e7589ff4c2 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -26,10 +26,10 @@
 #include <fip.h>
 #include <fiptool.h>
 
-image_desc_t *new_image_desc(const uuid_t *uuid,
+struct fip_image_desc *new_image_desc(const uuid_t *uuid,
 			     const char *name, const char *cmdline_name)
 {
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 
 	desc = xzalloc(sizeof(*desc));
 	memcpy(&desc->uuid, uuid, sizeof(uuid_t));
@@ -39,7 +39,7 @@ image_desc_t *new_image_desc(const uuid_t *uuid,
 	return desc;
 }
 
-void set_image_desc_action(image_desc_t *desc, int action,
+void set_image_desc_action(struct fip_image_desc *desc, int action,
     const char *arg)
 {
 	ASSERT(desc != NULL);
@@ -52,7 +52,7 @@ void set_image_desc_action(image_desc_t *desc, int action,
 		desc->action_arg = xstrdup(arg);
 }
 
-void free_image_desc(image_desc_t *desc)
+void free_image_desc(struct fip_image_desc *desc)
 {
 	free(desc->name);
 	free(desc->cmdline_name);
@@ -64,9 +64,9 @@ void free_image_desc(image_desc_t *desc)
 	free(desc);
 }
 
-void add_image_desc(struct fip_state *fip, image_desc_t *desc)
+void add_image_desc(struct fip_state *fip, struct fip_image_desc *desc)
 {
-	image_desc_t **p = &fip->image_desc_head;
+	struct fip_image_desc **p = &fip->image_desc_head;
 
 	while (*p)
 		p = &(*p)->next;
@@ -78,7 +78,7 @@ void add_image_desc(struct fip_state *fip, image_desc_t *desc)
 
 void free_image_descs(struct fip_state *fip)
 {
-	image_desc_t *desc = fip->image_desc_head, *tmp;
+	struct fip_image_desc *desc = fip->image_desc_head, *tmp;
 
 	while (desc != NULL) {
 		tmp = desc->next;
@@ -96,7 +96,7 @@ void fill_image_descs(struct fip_state *fip)
 	for (toc_entry = toc_entries;
 	     toc_entry->cmdline_name != NULL;
 	     toc_entry++) {
-		image_desc_t *desc;
+		struct fip_image_desc *desc;
 
 		desc = new_image_desc(&toc_entry->uuid,
 		    toc_entry->name,
@@ -106,7 +106,7 @@ void fill_image_descs(struct fip_state *fip)
 	for (toc_entry = plat_def_toc_entries;
 	     toc_entry->cmdline_name != NULL;
 	     toc_entry++) {
-		image_desc_t *desc;
+		struct fip_image_desc *desc;
 
 		desc = new_image_desc(&toc_entry->uuid,
 		    toc_entry->name,
@@ -115,10 +115,10 @@ void fill_image_descs(struct fip_state *fip)
 	}
 }
 
-image_desc_t *lookup_image_desc_from_uuid(struct fip_state *fip,
+struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
 						 const uuid_t *uuid)
 {
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next)
 		if (memcmp(&desc->uuid, uuid, sizeof(uuid_t)) == 0)
@@ -126,10 +126,10 @@ image_desc_t *lookup_image_desc_from_uuid(struct fip_state *fip,
 	return NULL;
 }
 
-image_desc_t *lookup_image_desc_from_opt(struct fip_state *fip, char **arg)
+struct fip_image_desc *lookup_image_desc_from_opt(struct fip_state *fip, char **arg)
 {
 	int len = 0;
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 	char *eq;
 
 	eq = strchrnul(*arg, '=');
@@ -200,8 +200,8 @@ int parse_fip(struct fip_state *fip,
 
 	/* Walk through each ToC entry in the file. */
 	while ((char *)toc_entry + sizeof(*toc_entry) - 1 < bufend) {
-		image_t *image;
-		image_desc_t *desc;
+		struct fip_image *image;
+		struct fip_image_desc *desc;
 
 		/* Found the ToC terminator, we are done. */
 		if (memcmp(&toc_entry->uuid, &uuid_null, sizeof(uuid_t)) == 0) {
@@ -260,10 +260,10 @@ int parse_fip(struct fip_state *fip,
 	return 0;
 }
 
-static image_t *read_image_from_file(const uuid_t *uuid, const char *filename)
+static struct fip_image *read_image_from_file(const uuid_t *uuid, const char *filename)
 {
 	struct stat st;
-	image_t *image;
+	struct fip_image *image;
 	int fd;
 
 	ASSERT(uuid != NULL);
@@ -298,7 +298,7 @@ int pack_images(struct fip_state *fip,
 		uint64_t toc_flags, unsigned long align)
 {
 	int fd;
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 	fip_toc_header_t *toc_header;
 	fip_toc_entry_t *toc_entry;
 	char *buf;
@@ -325,7 +325,7 @@ int pack_images(struct fip_state *fip,
 
 	entry_offset = buf_size;
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
-		image_t *image = desc->image;
+		struct fip_image *image = desc->image;
 
 		if (image == NULL || (image->toc_e.size == 0ULL))
 			continue;
@@ -361,7 +361,7 @@ int pack_images(struct fip_state *fip,
 	pr_verbose("Payload size: %llu bytes\n", payload_size);
 
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
-		image_t *image = desc->image;
+		struct fip_image *image = desc->image;
 
 		if (image == NULL)
 			continue;
@@ -396,11 +396,11 @@ int pack_images(struct fip_state *fip,
  */
 int update_fip(struct fip_state *fip)
 {
-	image_desc_t *desc;
+	struct fip_image_desc *desc;
 
 	/* Add or replace images in the FIP file. */
 	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
-		image_t *image;
+		struct fip_image *image;
 
 		if (desc->action != DO_PACK)
 			continue;

-- 
2.39.5



