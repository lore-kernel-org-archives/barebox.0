Delivery-date: Mon, 03 Nov 2025 08:45:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpG3-00EmQY-1T
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 08:45:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpG2-0002dc-Ry
	for lore@pengutronix.de; Mon, 03 Nov 2025 08:45:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qCp4fwdjv4w70K11Dz9i8sr7j+ddYbx1SS7Sq6x0ZFA=; b=s63iY6VHxe45xnRM1TXmZBqMB+
	nI6uIB4D+nh+VixNCS9Yq27+tX9dt8QW4DM6a2kAotAlY+ZyrhatejwGXWXEeBdGph4I0Y1KnWldH
	iKSkASEJVSdE4KkoG8Yc9t5drRlJ1oBEvHvydPh7Hp+V7ipjfsDizRYvwLQJQ85giqrwIlgtMaZlo
	wxRICmCnsRVvW9PNfFmBWVyFrezOwFEWlQUdQ/QMnK3on+go0zha3OTFP3QGvdf/6a/gOqX/FsptY
	FgoofFy+k85kOTeggI1M+LDhZ+GU7pJ0svqCcJE5P13fmQgmhUUf/rH3lYY6tvyq0FqlCrmpwnC/c
	mZ1u54vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpFb-00000009Nf4-0euL;
	Mon, 03 Nov 2025 07:45:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpFY-00000009NeB-2Dde
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 07:45:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vFpFW-0002Wn-Kx; Mon, 03 Nov 2025 08:45:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  3 Nov 2025 08:45:08 +0100
Message-ID: <20251103074509.302260-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_234512_573349_83009DB1 
X-CRM114-Status: GOOD (  14.44  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: elf: rename elf_section misnomer to elf_segment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An elf section is needed for linking, the segment is needed for loading.

We only handle statically linked ELF files currently in barebox, so we
do not look at the sections at all.

Replace the misleading struct elf_section with the correct naming:
elf_segment.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/elf.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 8578892366c3..c68ea0be3fa6 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -14,7 +14,7 @@
 #include <linux/fs.h>
 #include <linux/list_sort.h>
 
-struct elf_section {
+struct elf_segment {
 	struct list_head list;
 	struct resource *r;
 	void *phdr;
@@ -26,16 +26,16 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 {
 	struct list_head *list = &elf->list;
 	struct resource *r_new;
-	struct elf_section *r;
+	struct elf_segment *r;
 
 	r = calloc(1, sizeof(*r));
 	if (!r)
 		return -ENOMEM;
 
-	r_new = request_sdram_region("elf_section", start, size,
+	r_new = request_sdram_region("elf_segment", start, size,
 				     MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!r_new) {
-		r_new = request_iomem_region("elf_section", start, size);
+		r_new = request_iomem_region("elf_segment", start, size);
 		if (!r_new) {
 			pr_err("Failed to request region: %pa %pa\n", &start, &size);
 			return -EINVAL;
@@ -53,7 +53,7 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 static void elf_release_regions(struct elf_image *elf)
 {
 	struct list_head *list = &elf->list;
-	struct elf_section *r, *r_tmp;
+	struct elf_segment *r, *r_tmp;
 
 	list_for_each_entry_safe(r, r_tmp, list, list) {
 		if (r->is_iomem_region)
@@ -92,16 +92,16 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
 	return 0;
 }
 
-static int elf_section_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int elf_segment_cmp(void *priv, struct list_head *a, struct list_head *b)
 {
 	struct elf_image *elf = priv;
-	struct elf_section *elf_a, *elf_b;
+	struct elf_segment *elf_a, *elf_b;
 
 	if (a == b)
 		return 0;
 
-	elf_a = list_entry(a, struct elf_section, list);
-	elf_b = list_entry(b, struct elf_section, list);
+	elf_a = list_entry(a, struct elf_segment, list);
+	elf_b = list_entry(b, struct elf_segment, list);
 
 	return elf_phdr_p_offset(elf, elf_a->phdr) >
 	       elf_phdr_p_offset(elf, elf_b->phdr);
@@ -112,7 +112,7 @@ static int load_elf_to_memory(struct elf_image *elf)
 	void *dst;
 	int ret = 0, fd = -1;
 	u64 p_filesz, p_memsz, p_offset;
-	struct elf_section *r;
+	struct elf_segment *r;
 	struct list_head *list = &elf->list;
 
 	if (elf->filename) {
@@ -185,7 +185,7 @@ static int load_elf_image_segments(struct elf_image *elf)
 	 * Sort the list to avoid doing backward lseek while loading the elf
 	 * segments from file to memory(some filesystems don't support it)
 	 */
-	list_sort(elf, &elf->list, elf_section_cmp);
+	list_sort(elf, &elf->list, elf_segment_cmp);
 
 	ret = load_elf_to_memory(elf);
 	if (ret)
-- 
2.47.3



