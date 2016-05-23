Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000KC-IV
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5145EA00CBC
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:02 +0200
Message-Id: <1463992010-31537-15-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 14/62] UBI: Fastmap: Care about the protection queue
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Fastmap can miss a PEB if it is in the protection queue
and not jet in the used tree.
Treat every protected PEB as used.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/fastmap.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 98f69a3..bd3a307 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1180,6 +1180,19 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 		fm_pos += sizeof(*fec);
 		ubi_assert(fm_pos <= ubi->fm_size);
 	}
+
+	for (i = 0; i < UBI_PROT_QUEUE_LEN; i++) {
+		list_for_each_entry(wl_e, &ubi->pq[i], u.list) {
+			fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
+
+			fec->pnum = cpu_to_be32(wl_e->pnum);
+			fec->ec = cpu_to_be32(wl_e->ec);
+
+			used_peb_count++;
+			fm_pos += sizeof(*fec);
+			ubi_assert(fm_pos <= ubi->fm_size);
+		}
+	}
 	fmh->used_peb_count = cpu_to_be32(used_peb_count);
 
 	for (node = rb_first(&ubi->scrub); node; node = rb_next(node)) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
