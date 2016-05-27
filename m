Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTX-0004ya-Tz
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 79290A00B4F
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:39 +0200
Message-Id: <1464335095-35180-47-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 46/62] UBI: Fastmap: Rename variables to make them
 meaningful
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

s/fmpl1/fmpl
s/fmpl2/fmpl_wl

Add "WL" to the error message when wrong WL pool magic number is detected.

Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/fastmap.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 58 +++++++++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 80a6224..5483bb9 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -535,7 +535,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	struct ubi_ainf_peb *aeb, *tmp_aeb, *_tmp_aeb;
 	struct ubi_fm_sb *fmsb;
 	struct ubi_fm_hdr *fmhdr;
-	struct ubi_fm_scan_pool *fmpl1, *fmpl2;
+	struct ubi_fm_scan_pool *fmpl, *fmpl_wl;
 	struct ubi_fm_ec *fmec;
 	struct ubi_fm_volhdr *fmvhdr;
 	struct ubi_fm_eba *fm_eba;
@@ -570,30 +570,30 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 		goto fail_bad;
 	}
 
-	fmpl1 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
-	fm_pos += sizeof(*fmpl1);
+	fmpl = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
+	fm_pos += sizeof(*fmpl);
 	if (fm_pos >= fm_size)
 		goto fail_bad;
-	if (be32_to_cpu(fmpl1->magic) != UBI_FM_POOL_MAGIC) {
+	if (be32_to_cpu(fmpl->magic) != UBI_FM_POOL_MAGIC) {
 		ubi_err(ubi, "bad fastmap pool magic: 0x%x, expected: 0x%x",
-			be32_to_cpu(fmpl1->magic), UBI_FM_POOL_MAGIC);
+			be32_to_cpu(fmpl->magic), UBI_FM_POOL_MAGIC);
 		goto fail_bad;
 	}
 
-	fmpl2 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
-	fm_pos += sizeof(*fmpl2);
+	fmpl_wl = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
+	fm_pos += sizeof(*fmpl_wl);
 	if (fm_pos >= fm_size)
 		goto fail_bad;
-	if (be32_to_cpu(fmpl2->magic) != UBI_FM_POOL_MAGIC) {
-		ubi_err(ubi, "bad fastmap pool magic: 0x%x, expected: 0x%x",
-			be32_to_cpu(fmpl2->magic), UBI_FM_POOL_MAGIC);
+	if (be32_to_cpu(fmpl_wl->magic) != UBI_FM_POOL_MAGIC) {
+		ubi_err(ubi, "bad fastmap WL pool magic: 0x%x, expected: 0x%x",
+			be32_to_cpu(fmpl_wl->magic), UBI_FM_POOL_MAGIC);
 		goto fail_bad;
 	}
 
-	pool_size = be16_to_cpu(fmpl1->size);
-	wl_pool_size = be16_to_cpu(fmpl2->size);
-	fm->max_pool_size = be16_to_cpu(fmpl1->max_size);
-	fm->max_wl_pool_size = be16_to_cpu(fmpl2->max_size);
+	pool_size = be16_to_cpu(fmpl->size);
+	wl_pool_size = be16_to_cpu(fmpl_wl->size);
+	fm->max_pool_size = be16_to_cpu(fmpl->max_size);
+	fm->max_wl_pool_size = be16_to_cpu(fmpl_wl->max_size);
 
 	if (pool_size > UBI_FM_MAX_POOL_SIZE || pool_size < 0) {
 		ubi_err(ubi, "bad pool size: %i", pool_size);
@@ -735,11 +735,11 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 		}
 	}
 
-	ret = scan_pool(ubi, ai, fmpl1->pebs, pool_size, &max_sqnum, &lfree);
+	ret = scan_pool(ubi, ai, fmpl->pebs, pool_size, &max_sqnum, &lfree);
 	if (ret)
 		goto fail;
 
-	ret = scan_pool(ubi, ai, fmpl2->pebs, wl_pool_size, &max_sqnum, &lfree);
+	ret = scan_pool(ubi, ai, fmpl_wl->pebs, wl_pool_size, &max_sqnum, &lfree);
 	if (ret)
 		goto fail;
 
@@ -1020,7 +1020,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	void *fm_raw;
 	struct ubi_fm_sb *fmsb;
 	struct ubi_fm_hdr *fmh;
-	struct ubi_fm_scan_pool *fmpl1, *fmpl2;
+	struct ubi_fm_scan_pool *fmpl, *fmpl_wl;
 	struct ubi_fm_ec *fec;
 	struct ubi_fm_volhdr *fvh;
 	struct ubi_fm_eba *feba;
@@ -1068,23 +1068,23 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	erase_peb_count = 0;
 	vol_count = 0;
 
-	fmpl1 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
-	fm_pos += sizeof(*fmpl1);
-	fmpl1->magic = cpu_to_be32(UBI_FM_POOL_MAGIC);
-	fmpl1->size = cpu_to_be16(ubi->fm_pool.size);
-	fmpl1->max_size = cpu_to_be16(ubi->fm_pool.max_size);
+	fmpl = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
+	fm_pos += sizeof(*fmpl);
+	fmpl->magic = cpu_to_be32(UBI_FM_POOL_MAGIC);
+	fmpl->size = cpu_to_be16(ubi->fm_pool.size);
+	fmpl->max_size = cpu_to_be16(ubi->fm_pool.max_size);
 
 	for (i = 0; i < ubi->fm_pool.size; i++)
-		fmpl1->pebs[i] = cpu_to_be32(ubi->fm_pool.pebs[i]);
+		fmpl->pebs[i] = cpu_to_be32(ubi->fm_pool.pebs[i]);
 
-	fmpl2 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
-	fm_pos += sizeof(*fmpl2);
-	fmpl2->magic = cpu_to_be32(UBI_FM_POOL_MAGIC);
-	fmpl2->size = cpu_to_be16(ubi->fm_wl_pool.size);
-	fmpl2->max_size = cpu_to_be16(ubi->fm_wl_pool.max_size);
+	fmpl_wl = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
+	fm_pos += sizeof(*fmpl_wl);
+	fmpl_wl->magic = cpu_to_be32(UBI_FM_POOL_MAGIC);
+	fmpl_wl->size = cpu_to_be16(ubi->fm_wl_pool.size);
+	fmpl_wl->max_size = cpu_to_be16(ubi->fm_wl_pool.max_size);
 
 	for (i = 0; i < ubi->fm_wl_pool.size; i++)
-		fmpl2->pebs[i] = cpu_to_be32(ubi->fm_wl_pool.pebs[i]);
+		fmpl_wl->pebs[i] = cpu_to_be32(ubi->fm_wl_pool.pebs[i]);
 
 	ubi_for_each_free_peb(ubi, wl_e, tmp_rb) {
 		fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
