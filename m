Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEN-0000Ju-NY
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 168F9A00CDA
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:25 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:27 +0200
Message-Id: <1463992010-31537-40-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 39/62] UBI: Fastmap: Wire up WL accessor functions
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Use the new WL accessor functions in fastmap.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/fastmap.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 7808744..e60bc7f 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1024,11 +1024,11 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	struct ubi_fm_ec *fec;
 	struct ubi_fm_volhdr *fvh;
 	struct ubi_fm_eba *feba;
-	struct rb_node *node;
 	struct ubi_wl_entry *wl_e;
 	struct ubi_volume *vol;
 	struct ubi_vid_hdr *avhdr, *dvhdr;
 	struct ubi_work *ubi_wrk;
+	struct rb_node *tmp_rb;
 	int ret, i, j, free_peb_count, used_peb_count, vol_count;
 	int scrub_peb_count, erase_peb_count;
 
@@ -1086,8 +1086,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	for (i = 0; i < ubi->fm_wl_pool.size; i++)
 		fmpl2->pebs[i] = cpu_to_be32(ubi->fm_wl_pool.pebs[i]);
 
-	for (node = rb_first(&ubi->free); node; node = rb_next(node)) {
-		wl_e = rb_entry(node, struct ubi_wl_entry, u.rb);
+	ubi_for_each_free_peb(ubi, wl_e, tmp_rb) {
 		fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
 
 		fec->pnum = cpu_to_be32(wl_e->pnum);
@@ -1099,8 +1098,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	}
 	fmh->free_peb_count = cpu_to_be32(free_peb_count);
 
-	for (node = rb_first(&ubi->used); node; node = rb_next(node)) {
-		wl_e = rb_entry(node, struct ubi_wl_entry, u.rb);
+	ubi_for_each_used_peb(ubi, wl_e, tmp_rb) {
 		fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
 
 		fec->pnum = cpu_to_be32(wl_e->pnum);
@@ -1111,22 +1109,19 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 		ubi_assert(fm_pos <= ubi->fm_size);
 	}
 
-	for (i = 0; i < UBI_PROT_QUEUE_LEN; i++) {
-		list_for_each_entry(wl_e, &ubi->pq[i], u.list) {
-			fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
+	ubi_for_each_protected_peb(ubi, i, wl_e) {
+		fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
 
-			fec->pnum = cpu_to_be32(wl_e->pnum);
-			fec->ec = cpu_to_be32(wl_e->ec);
+		fec->pnum = cpu_to_be32(wl_e->pnum);
+		fec->ec = cpu_to_be32(wl_e->ec);
 
-			used_peb_count++;
-			fm_pos += sizeof(*fec);
-			ubi_assert(fm_pos <= ubi->fm_size);
-		}
+		used_peb_count++;
+		fm_pos += sizeof(*fec);
+		ubi_assert(fm_pos <= ubi->fm_size);
 	}
 	fmh->used_peb_count = cpu_to_be32(used_peb_count);
 
-	for (node = rb_first(&ubi->scrub); node; node = rb_next(node)) {
-		wl_e = rb_entry(node, struct ubi_wl_entry, u.rb);
+	ubi_for_each_scrub_peb(ubi, wl_e, tmp_rb) {
 		fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
 
 		fec->pnum = cpu_to_be32(wl_e->pnum);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
