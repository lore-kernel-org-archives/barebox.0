Delivery-date: Mon, 09 Jan 2023 16:10:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtmk-006lVf-Fn
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:10:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtmi-0002kQ-G8
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:10:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MFSPpb7FIZ56nzp/qL7l6DK1vnHcHPtNT0RpVATl2zo=; b=2VlfSgdnD9sMS0tB1GT9ftVbxF
	OVYLVQXJ9SKyPTjtxBh69DMyjuWNSeqOTpff8ewsH3MpMhm4P614HdpOy7szztrUDjjC6n/vIrDxx
	Ap1RLtEgHlPa3LLACHz4JbcbeOborve+wgPBEwNHCIx9zrZfLN+JsOuJJuTCRcbXr9JT1Ztkri2/f
	MnMvkclHcWaczkhawklstmStdJAAAhRKOsZfqXW6r3DG71MKcw2GbgXpAOdJcMgH7bKIXOgHhqF0d
	AY1CHuSLkl4WxKVpbLsPWWz6YEFKHDTOsJxQzZy3PLELeF74/nSOkUDg3mxe2x/Gft/p9XUs+owEQ
	q9FH9uSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtlA-0027HN-PX; Mon, 09 Jan 2023 15:08:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtl5-0027GH-7Q
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:08:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtl1-0002aP-PS; Mon, 09 Jan 2023 16:08:15 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtl1-004san-5P; Mon, 09 Jan 2023 16:08:15 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtl0-008bmV-EC; Mon, 09 Jan 2023 16:08:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:08:13 +0100
Message-Id: <20230109150813.2051799-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_070819_287584_9CB44C92 
X-CRM114-Status: GOOD (  11.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: consult CONFIG_OFDEVICE in mtd_get_of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Get barebox on non-DT platforms with NAND a tiny bit smaller by using
dev_of_node: The helper will return NULL unconditionally when
CONFIG_OFDEVICE is not enabled, thereby allowing more code to be
discarded at compile-time in absence of link-time optimization.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/mtd/mtd.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 6b539a9eceb5..2824853e2954 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -293,11 +293,7 @@ static inline void mtd_set_of_node(struct mtd_info *mtd,
 
 static inline struct device_node *mtd_get_of_node(struct mtd_info *mtd)
 {
-	if (mtd->dev.of_node)
-		return mtd->dev.of_node;
-	if (mtd->dev.parent)
-		return mtd->dev.parent->of_node;
-	return NULL;
+	return dev_of_node(&mtd->dev) ?: dev_of_node(mtd->dev.parent);
 }
 
 static inline u32 mtd_oobavail(struct mtd_info *mtd, struct mtd_oob_ops *ops)
-- 
2.30.2



