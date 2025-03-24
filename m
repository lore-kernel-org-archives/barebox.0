Delivery-date: Mon, 24 Mar 2025 11:25:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twezp-003Y5k-1L
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 11:25:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twezo-0001BB-9r
	for lore@pengutronix.de; Mon, 24 Mar 2025 11:25:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qdTnRXARXnsUPfW5VVUwN8IMZWCiFKWT4BQCLPS2k08=; b=xpZN59XglX9gG7bugiwfFRAWS8
	c6fYwUJaRn2SJUPYAKH4FEpgAdHJ3TXFCBPpPEnr5Tri3zX6ewYDSJIGUNPRyhZH1u4DYSt/ew38n
	F1geVZxJ6R0JSJYgMbHFmjQlMW8Y9TRu+2gdLdNdsucknRZ3eKYP+MdwTUJOPnnpy/0quIifWm8Hb
	BYulURciNqO3Dp7+/Zzjvgb44Z2JMUyZe5FSLCWu8/00AF+vUz/jFiEd8jLcWfrAedaSOzXMTfJmm
	65dV9kSZTBJivGYbVRO0OAsDzyMibjEPnfLe778u4k91N21U/lKJDJcTo02jyNFm0Ot5rop0UrCrl
	E78u8qgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twez8-00000002odp-39zC;
	Mon, 24 Mar 2025 10:24:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twez6-00000002oaB-23Nl
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 10:24:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez5-00011w-8E; Mon, 24 Mar 2025 11:24:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez4-001OQG-25;
	Mon, 24 Mar 2025 11:24:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez4-007LRX-35;
	Mon, 24 Mar 2025 11:24:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 24 Mar 2025 11:24:41 +0100
Message-Id: <20250324102442.1750715-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_032444_541009_D04BDFCD 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: [PATCH 1/2] filetype: fix MBR detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

is_fat_or_mbr() doesn't detect MBRs anymore because we return
filetype_unknown when it's not a FAT filesystem. Instead we may only
return early when it's explicitly a FAT filesystem, but continue
in the function in case it's not to properly detect a MBR.

Fixes: b25680a9c9 ("filetype: add file_detect_fs_type()")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index ce868223d5..80e6ceb845 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -243,9 +243,12 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	if (bootsec)
 		*bootsec = 0;
 
-	if (file_detect_fs_fat(sector, 512) != filetype_fat)
+	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
 		return filetype_unknown;
 
+	if (file_detect_fs_fat(sector, 512) == filetype_fat)
+		return filetype_fat;
+
 	if (bootsec)
 		/*
 		 * This must be an MBR, so return the starting sector of the
-- 
2.39.5



