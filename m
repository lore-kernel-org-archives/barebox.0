Delivery-date: Fri, 19 Dec 2025 11:38:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsY-00DAfu-2c
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsG-0006Kh-TX
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qdV2XLYSlYb1OdvLizhyLd6fabZzN9884DIFbS7uGNQ=; b=NJrRTBRwO40/4LXZoCIVY0g0QF
	7BtiLq4aAeu49IW6vFVE2T548TNBGxhl4wVmdlHRgBIiu5g6Jr/rkS3SGtfyIBx9i//zoh/cdz9bT
	9XEortJm0UrokOA3z76S9COjCiAUJ/stJ28uGUXSwyzixGjkdC4BHrEZJxq2bHesJ+ZwmYhhN+HkQ
	hmW6j9ZopSFTbxHNZh8bTCBmUghFuGCy7RjO9XGn/TO+k4mxueFRH/L5QvqguR767CV59ubP9bO6R
	Ujdg67udT5Cn04Hac92rOXhBCem4iOxKfYfx3hmWM9998hGEd7MugWPPe9TtW6Q0U0gMMMhWegzKc
	jxLfi0wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr7-0000000A6IY-3caJ;
	Fri, 19 Dec 2025 10:37:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqx-0000000A62z-3hHi
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qdV2XLYSlYb1OdvLizhyLd6fabZzN9884DIFbS7uGNQ=; b=hpGxcumlsevmooGCuEKRwMkAYP
	c9vAVPFlcvhrR9Rpy9Xm6KIve6qAJh99jZeoFUcHe8Xy6MnUGXnloQwCWn+Y5lp/x8GPD20l3gVWM
	Qz7rykQdPylCQ/9aumP5ia61htiAtN9Z6hJTsKeMfKTnUHqKywPsK2BlEX+iQwXVs3lrtrgfcU0k1
	KljjR6ThjPA1YQOOdw38pMN2tQ5E1QuEdciRmo+wMgQfVZZW2qXrc1eDs1QsnvTlKBIT3kZv7RLzx
	3A22lgru1GAEPos2WHWPGgIw+f0knBRnVgbmQIACvKAcCBx7nlYCh2iMNMU9wkL0YtYiUyx96Oggo
	UzdZtW/A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-00000007RTE-0VCy
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004gl-HP; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RVw-0q;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-022W;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:47 +0100
Message-ID: <20251219101453.2806980-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103652_253577_FC83DC55 
X-CRM114-Status: GOOD (  11.38  )
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
Subject: [PATCH v2025.09.y 11/49] range: fix corner cases when exclusive end is zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Unlike inclusive ranges, exclusive ranges can be empty and
region_overlap_end_exclusive() goes beyond that and checks that ranges
are neither empty nor does the end precede the start.

This is problematic for a range that stretches to the maximum value of a
type. Exclusive end in that case would be 0 and 0 comes before all
non-zero numbers, so the region_overlap_end_exclusive() would always
return false.

Fix this by normalizing end to be inclusive first thing in the function.
And for extra safety, enforce that the function may only be called with
arguments that are all of the same unsigned type.

This resolves a MMU hang on an STM32MP1 board with 1G RAM that had
memory stretching from 0xc00000000 to 0xffffffff inclusive as
remap_range_end_sans_text() would not detect the text area overlap and
then all of RAM, including where barebox is running from would be mapped
non-executable.

Fixes: 768fdb36f30e ("partition: define new region_overlap_end_exclusive helper")
Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251101105542.3830943-1-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 3e2d06afabe166e575c66e3d9faa2070933ebb1c)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/range.h | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/include/range.h b/include/range.h
index bb41dc78ac43..b5dc5cdb4d39 100644
--- a/include/range.h
+++ b/include/range.h
@@ -3,6 +3,8 @@
 #define _RANGE_H__
 
 #include <linux/types.h>
+#include <linux/compiler.h>
+#include <linux/build_bug.h>
 
 /**
  * region_overlap_end_inclusive - check whether a pair of [start, end] ranges overlap
@@ -29,17 +31,26 @@ static inline bool region_overlap_end_inclusive(u64 starta, u64 enda,
  * @enda:   end of the first range (exclusive)
  * @startb: start of the second range
  * @endb:   end of the second range (exclusive)
+ *
+ * NOTE: end of zero is always interpreted to mean including the maximum
+ * value of the type.
  */
-static inline bool region_overlap_end_exclusive(u64 starta, u64 enda,
-						u64 startb, u64 endb)
-{
-	/* Empty ranges don't overlap */
-	if (starta >= enda || startb >= endb)
-		return false;
-
-	return region_overlap_end_inclusive(starta, enda - 1,
-					    startb, endb - 1);
-}
+#define region_overlap_end_exclusive(starta, enda, startb, endb)	\
+({									\
+	u64 __starta = (starta), __enda = (enda) - 1;			\
+	u64 __startb = (startb), __endb = (endb) - 1;			\
+									\
+	static_assert(__same_type((starta), (enda)));			\
+	static_assert(__same_type((enda), (startb)));			\
+	static_assert(__same_type((startb), (endb)));			\
+	static_assert(((typeof(endb))-1) > 0);				\
+									\
+	/* Empty ranges don't overlap */				\
+	(__starta <= __enda && __startb <= __endb)			\
+		 ? region_overlap_end_inclusive(__starta, __enda,	\
+						__startb, __endb)	\
+		 : false;						\
+})
 
 
 /**
-- 
2.47.3



