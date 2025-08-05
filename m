Delivery-date: Tue, 05 Aug 2025 20:37:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXc-007Nix-2x
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-0001D7-M1
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EQ5SzjHenysbJslFtR5ZqFZaJbu0n/Z44k7XKeiPtbk=; b=BpGTkyZUkn6O0CA5ukSB8Ybn4w
	KH65b7vV6kpeFmfQv7hhEo0Hekzlpb/Ua13pn7GHmZlTmLKGqL6svFGoVvk+N9Jlg1OJY6t9XlIVR
	pkkmWfQVyp76NVucOEFqX54Z1FlxnIUTODoFqfOrC3sMt5UDS/eJu+iR0LFJn7hLHwh8qIdNR0bpm
	X+uibk/2LpPwQT9wJ8Z4AqYacM7S8MPeW8ZoQ4+8tXP5pEE0B7++YYGqqKA7CEBpOxOb/kL3gcauL
	/htvAscfFldvBJ525h0CMj43C6DbRgddkls0kyBgIMIpZn4b36QnyQdd1KkmLgje5e5/oz+Qn/8nL
	lSvbX62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX0-0000000DYTP-046h;
	Tue, 05 Aug 2025 18:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSgS-29ij
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjN-0003rm-Eh; Tue, 05 Aug 2025 19:45:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:34 +0200
Message-Id: <20250805174541.2606267-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_594359_D61849AC 
X-CRM114-Status: GOOD (  12.69  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/8] partition: rename region_overlap_end to region_overlap_end_inclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While quite verbose, off-by-one are very annoying, so it makes sense to
be very explicit about the expected input. Rename the function in
preparation for adding region_overlap_end_exclusive.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/iomemport.c |  2 +-
 common/partitions.c  |  6 +++---
 include/range.h      | 10 +++++-----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index bb546e4a3ad9..d7c960d15b41 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -21,7 +21,7 @@ static void __print_resources(struct resource *res, int indent,
 	resource_size_t size = resource_size(res);
 	int i;
 
-	if (addr && !region_overlap_end(*addr, *addr, res->start, res->end))
+	if (addr && !region_overlap_end_inclusive(*addr, *addr, res->start, res->end))
 		return;
 
 	if ((flags & FLAG_VERBOSE) && !(flags & FLAG_IOPORT))
diff --git a/common/partitions.c b/common/partitions.c
index fdead333a40a..7563cb0e6767 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -251,9 +251,9 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 	}
 
 	list_for_each_entry(part, &pdesc->partitions, list) {
-		if (region_overlap_end(part->first_sec,
-				       part->first_sec + part->size - 1,
-				       lba_start, lba_end)) {
+		if (region_overlap_end_inclusive(part->first_sec,
+						 part->first_sec + part->size - 1,
+						 lba_start, lba_end)) {
 			pr_err("new partition %llu-%llu overlaps with partition %s (%llu-%llu)\n",
 			       lba_start, lba_end, part->name, part->first_sec,
 				part->first_sec + part->size - 1);
diff --git a/include/range.h b/include/range.h
index 82c152f3f7c8..96e0f124d5d4 100644
--- a/include/range.h
+++ b/include/range.h
@@ -5,15 +5,15 @@
 #include <linux/types.h>
 
 /**
- * region_overlap_end - check whether a pair of [start, end] ranges overlap
+ * region_overlap_end_inclusive - check whether a pair of [start, end] ranges overlap
  *
  * @starta: start of the first range
  * @enda:   end of the first range (inclusive)
  * @startb: start of the second range
  * @endb:   end of the second range (inclusive)
  */
-static inline bool region_overlap_end(u64 starta, u64 enda,
-				      u64 startb, u64 endb)
+static inline bool region_overlap_end_inclusive(u64 starta, u64 enda,
+						u64 startb, u64 endb)
 {
 	if (enda < startb)
 		return false;
@@ -36,8 +36,8 @@ static inline bool region_overlap_size(u64 starta, u64 lena,
 	if (!lena || !lenb)
 		return false;
 
-	return region_overlap_end(starta, starta + lena - 1,
-				  startb, startb + lenb - 1);
+	return region_overlap_end_inclusive(starta, starta + lena - 1,
+					    startb, startb + lenb - 1);
 }
 
 /**
-- 
2.39.5



