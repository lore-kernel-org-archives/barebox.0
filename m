Delivery-date: Thu, 13 Mar 2025 08:52:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMq-00DTkg-0K
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMo-0001BQ-Uc
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8SoSWMmLM3CIXExol1Y58U0HGUOZGbn8omMeKicNRPI=; b=1ygB3MnlSLDT860rvbLuCL4njX
	LQaDAVsFXppd8GdGc3dRgimSGplriSk2mDzxvEBmUBEl66VJZpeEyfPzyEV6lRIZzH5LNNKlWWTg0
	Q3Zqut1Trf9ZYD5A8MmTAk/HHFP6pHvh7jrdDvyESsrc2EvZWF8HNpIlJ6oNibHV4njg/kYRQlO29
	vgj4cV/7zUxz4TCsjB5lG4qj/YKU1vmDxymKeiVfi1FYk++v8Bf598xKLAqm19FmSPdRSgqPr9T7e
	YixG2AK5LI4UcfqnQP5o2n3u3aFZflPGyOcsXrOkXv0g5KUK855nMFpBdl9ipTcQtkwd2kdBhvuXH
	jiV0mNWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMM-0000000ARkN-1kaM;
	Thu, 13 Mar 2025 07:52:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6h-0000000AOm8-2lTs
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6g-00061p-EI; Thu, 13 Mar 2025 08:35:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6g-005Uws-0j;
	Thu, 13 Mar 2025 08:35:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-1y;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:38 +0100
Message-Id: <20250313073445.764875-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003555_720608_2B5C1198 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/22] mtd: have mtd_read populate retlen always
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently populate retlen only on successful reads of more than zero
bytes, while Linux function with the same name populates it
unconditionally.

Mimic the Linux API for compatibility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/core.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 562443275fe6..c75c52dcb3a5 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -375,16 +375,15 @@ int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 		.len = len,
 		.datbuf = buf,
 	};
-	int ret;
+	int ret = 0;
 
 	if (from < 0 || from >= mtd->size || len > mtd->size - from)
 		return -EINVAL;
-	if (!len)
-		return 0;
 
-	ret = mtd_read_oob(mtd, from, &ops);
+	if (len)
+		ret = mtd_read_oob(mtd, from, &ops);
+
 	*retlen = ops.retlen;
-
 	return ret;
 }
 
-- 
2.39.5



