Delivery-date: Tue, 05 Aug 2025 20:37:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXc-007Niz-33
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-0001D6-Lx
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3juZBHsdq1uvtUXdsWUhkM8cJdWq8TI6AH4CWFcUF9c=; b=r/lhb7v3GIlCTWzlPrLBtek8Ji
	GN7DyNty5jwWYtzuHoEuX8WW74qix16u7gHCnACU2vrZ7zBc+BOgTRs58aHj9/g8zsnJJeMTszMMl
	ahmvzg5HVhQCvQ26iZMub7HJ7cJcgQC62URnFYrXEsiok/6pXUg8tPQ34FmCMManSi/MbBQ9K1P/W
	xxKPkYKR04Yb6z5C1Hghsln/T0L24A8JdS1TCV8KYcZEgWiP/zWxHBjPq7w06zRGEQUeHcn4WmgPN
	fU9sekqRMIl8xJRJLBYz5KSbklDSen2QoM4s3lkkjlPOYTaahjTgaokpWVOAtqMP6ExY4Za0aPH4S
	Nc3cVT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX1-0000000DYUt-0keg;
	Tue, 05 Aug 2025 18:37:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSgQ-201a
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjN-0003rm-MR; Tue, 05 Aug 2025 19:45:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:35 +0200
Message-Id: <20250805174541.2606267-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_534574_73C79F5E 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH master 2/8] partition: define new region_overlap_end_exclusive helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most ranges in barebox identified by start and end offsets are exclusive
at the end, for example, the linker symbols for the sections.

To make handling them a bit easier while avoiding off-by-one, let's add
a region_overlap_end_exclusive helper as well.

Unlike inclusive ranges, exclusive ranges can be empty, so add a check
for invalid ranges.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/range.h | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/include/range.h b/include/range.h
index 96e0f124d5d4..e7819017e473 100644
--- a/include/range.h
+++ b/include/range.h
@@ -22,6 +22,26 @@ static inline bool region_overlap_end_inclusive(u64 starta, u64 enda,
 	return true;
 }
 
+/**
+ * region_overlap_end_exclusive - check whether a pair of [start, end) ranges overlap
+ *
+ * @starta: start of the first range
+ * @enda:   end of the first range (exclusive)
+ * @startb: start of the second range
+ * @endb:   end of the second range (exclusive)
+ */
+static inline bool region_overlap_end_exclusive(u64 starta, u64 enda,
+						u64 startb, u64 endb)
+{
+	/* Empty ranges don't overlap */
+	if (starta >= enda || startb >= endb)
+		return false;
+
+	return region_overlap_end_inclusive(starta, enda - 1,
+					    startb, startb - 1);
+}
+
+
 /**
  * region_overlap_end - check whether a pair of [start, end] ranges overlap
  *
@@ -36,8 +56,8 @@ static inline bool region_overlap_size(u64 starta, u64 lena,
 	if (!lena || !lenb)
 		return false;
 
-	return region_overlap_end_inclusive(starta, starta + lena - 1,
-					    startb, startb + lenb - 1);
+	return region_overlap_end_exclusive(starta, starta + lena,
+					    startb, startb + lenb);
 }
 
 /**
-- 
2.39.5



