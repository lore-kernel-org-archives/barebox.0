Delivery-date: Tue, 12 Dec 2023 08:56:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxch-0015jK-2H
	for lore@lore.pengutronix.de;
	Tue, 12 Dec 2023 08:56:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxci-000072-15
	for lore@pengutronix.de; Tue, 12 Dec 2023 08:56:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YwykMDtqoAMbWgYafItxmdJHNmGn+idiANGfAoK6CSY=; b=s1yAD30fIA/sHaHKIYvEWBXZOZ
	sxHJdQEx6w2cgrlY5VCotawFUjWew67ARoqYKzR/24Llcmi8WK548Kquo20Omn3QbTXDMnMzWoeYi
	I2o4AfBf8iF0XnkNlPQL1S7vthbHB1N6vq0vRwGH1UToorYb49G253jdf/V9bCATvl8WsVIpETYt8
	FACcbFvxo5UYr+HLK5JEOxImxrJ44DUvEURPkqEI7ilVDtWfsFDt4pO0SdlmYdtqmnUkKEMf/aP86
	7xwV/j3TrAsdZ4Kke7oQUVVMUtA4WFKxE5+j16Qp0jwdTI4dEQmZ2nphH2IIGUYKtk9562oDr3SJU
	f+XGSe/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxb7-00Ay0L-1k;
	Tue, 12 Dec 2023 07:54:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxar-00AxlH-0r
	for barebox@lists.infradead.org;
	Tue, 12 Dec 2023 07:54:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxal-0007xA-4I; Tue, 12 Dec 2023 08:54:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxak-00FHeG-LH; Tue, 12 Dec 2023 08:54:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxak-006ILe-1v;
	Tue, 12 Dec 2023 08:54:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Dec 2023 08:54:09 +0100
Message-Id: <20231212075409.1500489-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_235417_337117_3E8EF0C3 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] crypto: crc32: create crc table only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We use crc_table[0] != 0 as indicator if we have already generated the
crc table. crc_table[0] will be generated as 0x0 though, so we end up
generating the crc table over and over again. Use crc_table[1] as
indicator instead.

Fixes: b00801710b ("crypto: crc32: allocate crc_table statically")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc32.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 287dfa3303..49d0b49c65 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -56,7 +56,7 @@ static void make_crc_table(void)
 	/* terms of polynomial defining this crc (except x^32): */
 	static const char p[] = { 0, 1, 2, 4, 5, 7, 8, 10, 11, 12, 16, 22, 23, 26 };
 
-	if (crc_table[0])
+	if (crc_table[1])
 		return;
 
 	/* make exclusive-or pattern from polynomial (0xedb88320L) */
-- 
2.39.2



