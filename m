Delivery-date: Mon, 17 Feb 2025 13:30:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0H4-003Trp-35
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0H3-0000uV-OX
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Jitb0TtovON3ZPkw3bzbeOGjzRJdIY+Q04fHwdckuac=; b=C6WrlvTEJCNHxnhtfUARYlg6qe
	xIdUTswD3tfEwIVUujn7UOIokIHuilnSyj0LIAX9v7qD9NpoulnpfaX29UgNtHXbbDzhIxFFWF21t
	7PWPV0LKn6UfrHadZLAFdjxnGdmYsVM/Iz2rMq2bfq2F9HyJ5+hDb/UTziOJtgI3CrQAQ+CIJOHeN
	lclafA6K/I6spufAapE8Rzjyrb/klRQs6WBLIU6M25c2PsGncfjNXswPHubtmjVm7mnnTSQJKqgbE
	tK5zUzwtCK5ml83kUcaaHydF4GU3xCqG96u8va/YAl8Sc/4QpKhIZmGtQa4cRZU7Paxc9rRh+RTbP
	Bb5kUC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Gf-00000004TXn-11IK;
	Mon, 17 Feb 2025 12:30:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Bx-00000004RcK-2oUB
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 12:25:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-00083G-C9; Mon, 17 Feb 2025 13:25:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-001PH7-0Z;
	Mon, 17 Feb 2025 13:25:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tk0Bw-00DV0N-07;
	Mon, 17 Feb 2025 13:25:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Feb 2025 13:25:37 +0100
Message-Id: <20250217122538.3216703-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_042541_707213_B87F2E89 
X-CRM114-Status: GOOD (  14.93  )
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
Subject: [PATCH 1/2] fip: Store image data in single buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Right now in fip_parse() we read the whole FIP image into an allocated
buffer, then allocate buffers for the different blobs contained in the
FIP image and memcpy the blobs there from the full buffer. Let's
optimize this a bit by keeping the full buffer. Instead of allocating
separate buffers for the blobs, just put pointers to the full buffers
into struct fip_image and set the buf_no_free flag indicating that they
should not be freed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fip.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/lib/fip.c b/lib/fip.c
index 39b0fd20aa..806f172318 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -160,12 +160,15 @@ int fip_parse(struct fip_state *fip,
 {
 	struct stat st;
 	int fd;
-	char *buf, *bufend;
+	char *bufend;
 	fip_toc_header_t *toc_header;
 	fip_toc_entry_t *toc_entry;
 	int terminated = 0;
 	size_t st_size;
 
+	if (fip->buffer)
+		return -EBUSY;
+
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
 		pr_err("open %s: %m\n", filename);
@@ -179,13 +182,13 @@ int fip_parse(struct fip_state *fip,
 
 	st_size = st.st_size;
 
-	buf = xmalloc(st_size);
-	if (read_full(fd, buf, st_size) != st_size) {
+	fip->buffer = xmalloc(st_size);
+	if (read_full(fd, fip->buffer, st_size) != st_size) {
 		pr_err("Failed to read %s: %m\n", filename);
 		return -errno;
 	}
 
-	bufend = buf + st_size;
+	bufend = fip->buffer + st_size;
 	close(fd);
 
 	if (st_size < sizeof(fip_toc_header_t)) {
@@ -193,7 +196,7 @@ int fip_parse(struct fip_state *fip,
 		return -ENODATA;
 	}
 
-	toc_header = (fip_toc_header_t *)buf;
+	toc_header = (fip_toc_header_t *)fip->buffer;
 	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
 
 	if (toc_header->name != TOC_HEADER_NAME) {
@@ -223,7 +226,8 @@ int fip_parse(struct fip_state *fip,
 		 */
 		image = xzalloc(sizeof(*image));
 		image->toc_e = *toc_entry;
-		image->buffer = xmalloc(toc_entry->size);
+		image->buffer = fip->buffer + toc_entry->offset_address;
+		image->buf_no_free = true;
 		/* Overflow checks before memory copy. */
 		if (toc_entry->size > (uint64_t)-1 - toc_entry->offset_address) {
 			pr_err("FIP %s is corrupted: entry size exceeds 64 bit address space\n",
@@ -236,9 +240,6 @@ int fip_parse(struct fip_state *fip,
 			return -EINVAL;
 		}
 
-		memcpy(image->buffer, buf + toc_entry->offset_address,
-		    toc_entry->size);
-
 		/* If this is an unknown image, create a descriptor for it. */
 		desc = fip_lookup_image_desc_from_uuid(fip, &toc_entry->uuid);
 		if (desc == NULL) {
@@ -264,7 +265,7 @@ int fip_parse(struct fip_state *fip,
 		    filename);
 		return -EINVAL;
 	}
-	free(buf);
+
 	return 0;
 }
 
-- 
2.39.5



