Delivery-date: Wed, 28 Aug 2024 16:15:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sjJSO-00EGey-2J
	for lore@lore.pengutronix.de;
	Wed, 28 Aug 2024 16:15:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sjJSN-0000mp-TR
	for lore@pengutronix.de; Wed, 28 Aug 2024 16:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NlatsS4V8cWHGLUHnmnvlc57WCM2bEYyFmYUMBVafSY=; b=lCnrBxa63ad3BAJLTTA5boKMuM
	eSBGFAW6Om8ZTLJ8NIRLv3tDnbbZ+Zvq/ik83lPb+1mfs2ZnWH63QOuIPTTDR6sghUUCLK8ZhrJQz
	kqQmpaW8KaPMzTdswclWiBA9fUKNHRriHypMozGbNfyeUdeiIW7igF5m8pTDVJdwgmvNOsW37wUZA
	jHuV8scJHiapaAifijWMB/geggJKjkyb2a0XljX4BlCrGBdPspHREf5lUIgw1HYAuftok3AEpec4q
	Q/tEMGNIegNCGGD3rezQZo8fiMeyuK6ZfABc+vmSHt3liHwN3HGZCzgqz0ariYj2OjWY8AapMynyH
	HUbPKFVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJRi-0000000FhXm-1w0u;
	Wed, 28 Aug 2024 14:14:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJNN-0000000FgLx-0x6b
	for barebox@lists.infradead.org;
	Wed, 28 Aug 2024 14:10:22 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1sjJNJ-00041u-6s; Wed, 28 Aug 2024 16:10:17 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Wed, 28 Aug 2024 16:10:15 +0200
Message-Id: <20240828141015.3137381-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_071021_286022_9DE27331 
X-CRM114-Status: UNSURE (   8.45  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: dos: prefix hex sector numbers with 0x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sector numbers are logged in hexadecimal format. This might not be
immediately clear, so prefix the numbers with 0x.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/partitions/dos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 8e4edd885bf..1e3317a6697 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -134,7 +134,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 	while (1) {
 		int rc, i;
 
-		dev_dbg(blk->dev, "expect EBR in sector %x\n", ebr_sector);
+		dev_dbg(blk->dev, "expect EBR in sector 0x%x\n", ebr_sector);
 
 		rc = block_read(blk, buf, ebr_sector, 1);
 		if (rc != 0) {
@@ -144,7 +144,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 
 		/* sanity checks */
 		if (buf[0x1fe] != 0x55 || buf[0x1ff] != 0xaa) {
-			dev_err(blk->dev, "sector %x doesn't contain an EBR signature\n", ebr_sector);
+			dev_err(blk->dev, "sector 0x%x doesn't contain an EBR signature\n", ebr_sector);
 			goto out;
 		}
 
-- 
2.39.2



