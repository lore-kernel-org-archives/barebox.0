Delivery-date: Wed, 23 Nov 2022 12:44:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oxoBX-00GRkA-EX
	for lore@lore.pengutronix.de; Wed, 23 Nov 2022 12:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oxoBW-0006Ra-6W
	for lore@pengutronix.de; Wed, 23 Nov 2022 12:44:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhLdKYF+20uFXlswKmDA7A59XTSt2tDIGhMK14uI6hg=; b=phnY9dyluWYpA2
	qouP/EMQX5pHdCDohB/3RggNT9scE0tMwxu+WY+A/nhX6IFiGxSf3IfTQsnQLhpKMK/yEaJpzrBXZ
	TBNeIRtrazIf9i6ZvaLflo67KWqraYnJoq/nVj1H+LGzcdQzlWtHOik8jDxhnO+YJL3C3fvjkH/YE
	CC9sMQzFU1aarUKWwvnz77fXhWqMgVZxzfARFYKjMaBo8GSqiBqZpmlLU8GocYmo5wrXrU3Vw+9on
	VOchkN6osp2Il8iWTTsgpEKnmVZw8TguueOcWXCzAFASGMHjxl3MWN/4pT6H40yLpnJUSQ2VsTEL+
	s0DFAfXQ9Lv1wJe05pkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxo9g-00GkNu-Ao; Wed, 23 Nov 2022 11:43:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxo9a-00GkJZ-8L
	for barebox@lists.infradead.org; Wed, 23 Nov 2022 11:43:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9W-0006Fw-1n; Wed, 23 Nov 2022 12:42:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9U-0062UL-G8; Wed, 23 Nov 2022 12:42:53 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9U-00DfcQ-R0; Wed, 23 Nov 2022 12:42:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Nov 2022 12:42:45 +0100
Message-Id: <20221123114245.3258194-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221123114245.3258194-1-s.hauer@pengutronix.de>
References: <20221123114245.3258194-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_034258_312083_36484B9D 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: Johannes Zink <jzi@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fastboot: ubiformat: Fix writing sparse images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

in ubiformat_write() we may not write trailing empty areas in erase
blocks as UBI assumes them to be empty and writable.

This code path is used when fastboot handles sparse images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index 1edfc5b2a3..d8399ad9d6 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -745,6 +745,7 @@ int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
 
 	while (count) {
 		size_t now = mtd->erasesize - offset_in_peb;
+		int new_len;
 
 		if (now > count)
 			now = count;
@@ -780,7 +781,8 @@ int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
 			}
 		}
 
-		ret = mtd_peb_write(mtd, buf, peb, offset_in_peb, now);
+		new_len = drop_ffs(mtd, buf, now);
+		ret = mtd_peb_write(mtd, buf, peb, offset_in_peb, new_len);
 		if (ret < 0)
 			return ret;
 
-- 
2.30.2



