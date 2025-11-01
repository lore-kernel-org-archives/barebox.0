Delivery-date: Sat, 01 Nov 2025 11:56:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9Hq-00E6z9-10
	for lore@lore.pengutronix.de;
	Sat, 01 Nov 2025 11:56:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9Hp-0008OO-KY
	for lore@pengutronix.de; Sat, 01 Nov 2025 11:56:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gOsbVVL+nkf+uYdUseQjOKVN9mZUbxdeX0dk8zFh3wk=; b=wCbkRJ/QJf5YiJrYg4+eBO0vIE
	PEqwYiyplFBxhXNvSsR+cubvAPlSMvk1VdujJ6aLIYIasQYbxwL0RyGV3YTioVYjE+1wifm9etF3C
	g6oxGRS9dm3OH4iSI7wPVEcztCtH/9+thsjKuA8uj2hlUELgJ5tiomDayzGVRmBPmruyhm6Jl/2l6
	VzUTcgOtMOUw+WJXykkgeTmjlDk1fYMS6I8wxeHlXZcC/f8XV2tzIaPX45tPM8y9AW+hVwcmafGXB
	AwD2eza5g0LJcImsL5ewfpha4ekLjhA23zXF0zJSH2rE5IY46RcU5rYFaXy0DUpfYKNcqoo5YdWrB
	jCst3r9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9H3-00000007HIi-38ph;
	Sat, 01 Nov 2025 10:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9Gv-00000007HHU-1CoC
	for barebox@lists.infradead.org;
	Sat, 01 Nov 2025 10:55:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vF9Gq-0008GX-1P; Sat, 01 Nov 2025 11:55:44 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  1 Nov 2025 11:55:38 +0100
Message-ID: <20251101105542.3830943-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_035549_330350_D34551CA 
X-CRM114-Status: GOOD (  11.64  )
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
Subject: [PATCH master 1/2] range: fix corner cases when exclusive end is zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

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
---
 include/range.h | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/include/range.h b/include/range.h
index bb41dc78ac43..eb75486d9add 100644
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
+	static_assert(__same_type(starta, enda));			\
+	static_assert(__same_type(enda, startb));			\
+	static_assert(__same_type(startb, endb));			\
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



