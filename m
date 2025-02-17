Delivery-date: Mon, 17 Feb 2025 13:30:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0H5-003Ts7-18
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0H4-0000uo-25
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hmWxyn0l4CJ3AgnsG3VGsKOJJLnr3KxNFZBoMLwuNzI=; b=CXr01HtCm/BlE6dhQJAWWJdKLu
	sJfv1MXP9D/V/ULl4HFKx7Z5dkxRgiWzMNqfHr56icaitoJPzojJIGhrqCONRLUwYG3Gc6NAVKpVw
	nWwBNRFsOaqyN54JW++IE0tj0N8n/eif1RziATwgcjZyflTEcd2UYyYJpdFRJinG2JNV63YtEs/+0
	dOzXMi5I29ZFRNRORsWjsbj8ovYO9kTGaK9IWyYGnLXHPsqU3mplWpu8Sepv+OsHC2Jr8qLzQq0od
	tMOOP3iEh9CuvujHKmksOTqE7PBcMM36OWSCoPBS+/nZxiLrhe7boxNe2BpdvUJIueW53ATai+rq/
	v71e7+OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Gc-00000004TUW-310H;
	Mon, 17 Feb 2025 12:30:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Bx-00000004RcL-2ojA
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 12:25:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-00083H-CU; Mon, 17 Feb 2025 13:25:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-001PH8-0d;
	Mon, 17 Feb 2025 13:25:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-00DV0N-0I;
	Mon, 17 Feb 2025 13:25:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Feb 2025 13:25:38 +0100
Message-Id: <20250217122538.3216703-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217122538.3216703-1-s.hauer@pengutronix.de>
References: <20250217122538.3216703-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_042541_707665_E784628F 
X-CRM114-Status: GOOD (  17.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fip: add function to parse FIP from a buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we can only parse a FIP image from a file. Provide fip_parse_buf()
to open a FIP image from a buffer.
The bulk of fip_parse() can be re-used for that. While at it use
read_file_2() to read in the FIP image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fiptool.h |  4 +++
 lib/fip.c         | 92 ++++++++++++++++++++++++++---------------------
 2 files changed, 56 insertions(+), 40 deletions(-)

diff --git a/include/fiptool.h b/include/fiptool.h
index bc42f7edd6..bb63a79c16 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -38,6 +38,7 @@ struct fip_state {
 	size_t nr_image_descs;
 	int verbose;
 	void *buffer;
+	bool buf_no_free;
 };
 
 #define pr_verbose(...) do { \
@@ -68,6 +69,9 @@ struct fip_image_desc *fip_lookup_image_desc_from_uuid(struct fip_state *fip,
 
 struct fip_image_desc *fip_lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
 
+int fip_parse_buf(struct fip_state *fip, void *buf, size_t size,
+		  fip_toc_header_t *toc_header_out);
+
 int fip_parse(struct fip_state *fip,
 		     const char *filename, fip_toc_header_t *toc_header_out);
 
diff --git a/lib/fip.c b/lib/fip.c
index 806f172318..23e82098da 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -22,6 +22,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <libfile.h>
+#include <fs.h>
 
 #include <fip.h>
 #include <fiptool.h>
@@ -93,7 +94,9 @@ void fip_free(struct fip_state *fip)
 
 	ASSERT(fip->nr_image_descs == 0);
 
-	free(fip->buffer);
+	if (!fip->buf_no_free)
+		free(fip->buffer);
+
 	free(fip);
 }
 
@@ -155,44 +158,20 @@ struct fip_image_desc *fip_lookup_image_desc_from_opt(struct fip_state *fip, cha
 	return NULL;
 }
 
-int fip_parse(struct fip_state *fip,
-		     const char *filename, fip_toc_header_t *toc_header_out)
+static int fip_do_parse_buf(struct fip_state *fip, void *buf, size_t size,
+			    fip_toc_header_t *toc_header_out)
 {
-	struct stat st;
-	int fd;
 	char *bufend;
 	fip_toc_header_t *toc_header;
 	fip_toc_entry_t *toc_entry;
 	int terminated = 0;
-	size_t st_size;
-
-	if (fip->buffer)
-		return -EBUSY;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		pr_err("open %s: %m\n", filename);
-		return -errno;
-	}
-
-	if (fstat(fd, &st) == -1) {
-		pr_err("fstat %s: %m\n", filename);
-		return -errno;
-	}
-
-	st_size = st.st_size;
 
-	fip->buffer = xmalloc(st_size);
-	if (read_full(fd, fip->buffer, st_size) != st_size) {
-		pr_err("Failed to read %s: %m\n", filename);
-		return -errno;
-	}
+	fip->buffer = buf;
 
-	bufend = fip->buffer + st_size;
-	close(fd);
+	bufend = fip->buffer + size;
 
-	if (st_size < sizeof(fip_toc_header_t)) {
-		pr_err("FIP %s is truncated\n", filename);
+	if (size < sizeof(fip_toc_header_t)) {
+		pr_err("FIP is truncated\n");
 		return -ENODATA;
 	}
 
@@ -200,8 +179,8 @@ int fip_parse(struct fip_state *fip,
 	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
 
 	if (toc_header->name != TOC_HEADER_NAME) {
-		pr_err("%s is not a FIP file: unknown magic = 0x%08x\n",
-		       filename, toc_header->name);
+		pr_err("not a FIP file: unknown magic = 0x%08x\n",
+		       toc_header->name);
 		return -EINVAL;
 	}
 
@@ -230,13 +209,12 @@ int fip_parse(struct fip_state *fip,
 		image->buf_no_free = true;
 		/* Overflow checks before memory copy. */
 		if (toc_entry->size > (uint64_t)-1 - toc_entry->offset_address) {
-			pr_err("FIP %s is corrupted: entry size exceeds 64 bit address space\n",
-			       filename);
+			pr_err("FIP is corrupted: entry size exceeds 64 bit address space\n");
 			return -EINVAL;
 		}
-		if (toc_entry->size + toc_entry->offset_address > st_size) {
-			pr_err("FIP %s is corrupted: entry size (0x%llx) exceeds FIP file size (0x%zx)\n",
-				filename, toc_entry->size + toc_entry->offset_address, st_size);
+		if (toc_entry->size + toc_entry->offset_address > size) {
+			pr_err("FIP is corrupted: entry size (0x%llx) exceeds FIP file size (0x%zx)\n",
+				toc_entry->size + toc_entry->offset_address, size);
 			return -EINVAL;
 		}
 
@@ -261,14 +239,48 @@ int fip_parse(struct fip_state *fip,
 	}
 
 	if (terminated == 0) {
-		pr_err("FIP %s does not have a ToC terminator entry\n",
-		    filename);
+		pr_err("FIP does not have a ToC terminator entry\n");
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
+int fip_parse_buf(struct fip_state *fip, void *buf, size_t size,
+			    fip_toc_header_t *toc_header_out)
+{
+	if (fip->buffer)
+		return -EBUSY;
+
+	fip->buf_no_free = true;
+
+	return fip_do_parse_buf(fip, buf, size, toc_header_out);
+}
+
+int fip_parse(struct fip_state *fip,
+		     const char *filename, fip_toc_header_t *toc_header_out)
+{
+	size_t size;
+	int ret;
+	void *buf;
+
+	if (fip->buffer)
+		return -EBUSY;
+
+	ret = read_file_2(filename, &size, &buf, FILESIZE_MAX);
+	if (ret) {
+		pr_err("open %s: %m\n", filename);
+		return ret;
+	}
+
+	ret = fip_parse_buf(fip, buf, size, toc_header_out);
+
+	if (ret)
+		free(buf);
+
+	return ret;
+}
+
 static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char *filename)
 {
 	struct stat st;
-- 
2.39.5



