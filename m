Delivery-date: Wed, 24 Jul 2024 11:10:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWY0m-002Q6T-2W
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:10:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWY0m-0002S1-2R
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:10:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/Kx2wA3zMBpxOjgrRUxN3h1M+Dmrun92MmMlPmwJQHk=; b=qXobMJphqbwyC1cDuZfoZHI5vW
	bXdl7ASN5FyZYvcypfi0km1vueQ/gQZTx1OQRJ6wJBzu6vJJsSVd4cHG41lmzcOGUdqIsHoF4a6wH
	48EqAiEdf6bptXllgB8gpKqW6axVcsiv1xTENCJziHA5wNdBraSo8QJTseoWXQ5zi6UZPaTXUYR0g
	AxZBWrABbSEG16rUY8E+RLffYWcM1vMn9DcJdXoM+akLze1H78yib9pQaQkJWAYzsaM6D2+2/tl3t
	NfCWHy6wZaO6DurOikol8M8MJIl5Z+tb0UA0b1ajyBPPayQqQaGQysovwNHaCU+THIt2q6dw1qIBr
	yYF34pEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWY0B-0000000ErJL-2uSI;
	Wed, 24 Jul 2024 09:09:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWY08-0000000ErHp-0svi
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:09:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWY05-0002If-Qe; Wed, 24 Jul 2024 11:09:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWY05-001p4T-D6; Wed, 24 Jul 2024 11:09:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWY05-000YyB-10;
	Wed, 24 Jul 2024 11:09:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:09:32 +0200
Message-Id: <20240724090932.134375-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_020936_267427_FAA926E7 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: ramfs: simplify len calculation in ramfs_find_chunk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ramfs_find_chunk finds the correct chunk and additionally returns via
argument pointers the offset to use and the remaining length.

While correct, the way the remaining len is calculated can be simplified
by using the offset previously calculated:

  data->ofs  +        data->size - pos
  data->size -  pos + data->ofs
  data->size - (pos - data->ofs)
  data->size - (*ofs)

Do that for clarity. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 3223beba7212..a799b23efbcd 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -202,7 +202,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
 	list_for_each_entry_from(data, &node->data, list) {
 		if (data->ofs + data->size > pos) {
 			*ofs = pos - data->ofs;
-			*len = data->ofs + data->size - pos;
+			*len = data->size - *ofs;
 
 			node->current_chunk = data;
 
-- 
2.39.2



