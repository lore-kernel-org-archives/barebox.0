Delivery-date: Fri, 13 Mar 2026 14:34:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ei-000DP2-2y
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:20 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eS-0000Dm-TY
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1bK4yaoXoBhJX9lSG2P5oHz8qlR9ACuHpX9C9xUYJa8=; b=m8guIwJb1mrrbvjPATRebpEKsz
	LMVvPIIpX6rEZKD14QXPDPBA3rQwZMSFDe3M7QrVt0ZTGMUeiSFJbEG0cTMOdVo7IlHnVad9ms7BG
	D7DaFQ4ibuTOPeaaB+CW2gym7cj2Ew2tOovUVIAmhXYmd80NH8OHI1NwRBEWMCfdIeqqJQJVJtYLR
	CyykE+LRRev4/hrBsvaZHg8TOZLAt6h4dQfQ0pftt1DUeLIpmOHV5mLD3IeAzKcx0/efrdA2jFD9R
	N2Fzu4DoG05I5AAm2O+CjSLTT9OdKoHyWqlX2p1XYn9Dcddt1VAVHcEgFr04Ioq76SROA8THsvy5n
	xSz1ohdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dE-00000000Fh1-1iNo;
	Fri, 13 Mar 2026 13:32:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWk-12Jo
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1bK4yaoXoBhJX9lSG2P5oHz8qlR9ACuHpX9C9xUYJa8=; b=MKCvV2cy7HeNtpk0+NcdglQJtT
	mzqeWrZgRzVYWwKD2Db7xD0FV8yPEC7fnaQAtDwV25XI6qWTryXXqibEuCCwqcmUnRG50gFR3Ykmt
	wjd826e9cxgLWoh1pe6Chd6gOqglU+I2WbLTKExDKnGf6EcRD1NjQOFBEjX0OXLC/ogS0bazukIRa
	MTMjRYb4KqwDIBdr5NAhyX07cLYgtIXRSyKkpNzDEpGBoUIcLNYiIIyAIFhe17Qbhhhct/CgYyB6a
	+YRHpnVgSyX7NEv63AGR/7HHGRKKYVr6+t6rYKJEXTZmlWrCOWW/f0djONQF9UAKNGGRCp2HMbaMZ
	dqi+A4EA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wM-1IEN
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006tn-9N; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005UO-0I;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-1v6T;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:25:11 +0100
Message-ID: <20260313132631.2257573-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_413375_3407312F 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 27/58] include: array_size.h: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The definition of __must_be_array is a bit hairy as it's defined in
<linux/compiler-gcc.h>, which is included by <linux/compiler_types.h>,
but has an implicit dependency on <linux/build_bug.h> for BUILD_BUG_ON_ZERO
in the definition of __must_be_array, but <linux/build_bug.h> itself
already includes <linux/compiler_types.h>.

Let's put a bandaid on this for users of ARRAY_SIZE, by including
<linux/build_bug.h> explicitly for <linux/array_size.h>.

(cherry picked from commit e15799eb76e10ae35d176145022c478874295a97)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260209091513.3563412-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/array_size.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/array_size.h b/include/linux/array_size.h
index 5411d730c819..d1ad53d950d4 100644
--- a/include/linux/array_size.h
+++ b/include/linux/array_size.h
@@ -2,7 +2,8 @@
 #ifndef _LINUX_ARRAY_SIZE_H
 #define _LINUX_ARRAY_SIZE_H
 
-#include <linux/compiler.h>
+#include <linux/compiler_types.h>
+#include <linux/build_bug.h>
 
 /**
  * ARRAY_SIZE - get the number of elements in array @arr
-- 
2.47.3



