Delivery-date: Wed, 23 Nov 2022 12:45:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oxoBZ-00GRkb-NN
	for lore@lore.pengutronix.de; Wed, 23 Nov 2022 12:45:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oxoBY-0006S6-JT
	for lore@pengutronix.de; Wed, 23 Nov 2022 12:45:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8WHl61elFOKgzA6Gym5x6UAmh70WcVp1dldawadQVw=; b=LRrHmWOwkvpo0M
	32j+42fB2NxVWNzAACySpTw4QxPzUF03//xCzhYQPR67f/22XjRt1n8hMNwpbzOcLwjYdBRkcodlm
	PIffbbv397rmRcNWX2yAIC4Xvymh3zkPxvVMJbONtnvNC2+Wsd73aMUpmN1pQXWHC1HJEkXarZyDv
	Jn+conH8XSPzBPiFDjZryYHhomK4BJ/X8fWPe5FzM8CMrBc+0rqZAjhufdep+S8fML8HjzjdRhxKi
	tVuL5KVqimeJCyR5Ca4dfwP30FdxVjHOI9kO5PrMIvV+pZcJM6S/G12ib0/6ADbBQ4HlwxWSLmqcL
	v4VEsETjHbY/rxQ1mHgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxo9i-00GkOu-EW; Wed, 23 Nov 2022 11:43:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxo9a-00GkJs-8M
	for barebox@lists.infradead.org; Wed, 23 Nov 2022 11:43:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9W-0006Fx-Av; Wed, 23 Nov 2022 12:42:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9U-0062UO-PH; Wed, 23 Nov 2022 12:42:53 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oxo9U-00DfcO-QF; Wed, 23 Nov 2022 12:42:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Nov 2022 12:42:44 +0100
Message-Id: <20221123114245.3258194-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_034258_312086_A2AF8DE0 
X-CRM114-Status: GOOD (  13.11  )
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
Subject: [PATCH 1/2] mtd: peb: return success for reading/writing 0 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Return successfully when mtd_peb_read() or mtd_peb_write() is passed a
zero length so that the callers do not have to handle this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 8443ed86bc..a17d42885e 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -205,10 +205,12 @@ int mtd_peb_read(struct mtd_info *mtd, void *buf, int pnum, int offset,
 		return -EINVAL;
 	if (offset < 0 || offset + len > mtd->erasesize)
 		return -EINVAL;
-	if (len <= 0)
+	if (len < 0)
 		return -EINVAL;
 	if (mtd_peb_is_bad(mtd, pnum))
 		return -EINVAL;
+	if (!len)
+		return 0;
 
 	/* Deliberately corrupt the buffer */
 	*((uint8_t *)buf) ^= 0xFF;
@@ -388,12 +390,14 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 		return -EINVAL;
 	if (offset < 0 || offset + len > mtd->erasesize)
 		return -EINVAL;
-	if (len <= 0)
+	if (len < 0)
 		return -EINVAL;
 	if (len % (mtd->writesize >> mtd->subpage_sft))
 		return -EINVAL;
 	if (mtd_peb_is_bad(mtd, pnum))
 		return -EINVAL;
+	if (!len)
+		return 0;
 
 	if (mtd_peb_emulate_write_failure()) {
 		dev_err(&mtd->dev, "Cannot write %d bytes to PEB %d:%d (emulated)\n",
-- 
2.30.2



