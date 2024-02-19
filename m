Delivery-date: Mon, 19 Feb 2024 09:32:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4c-00E49r-2K
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4Z-0003UD-RG
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nZXEy9KOT3aJgRDKn7zUVrHFerML83WPffmpSG3WQso=; b=eZ047O11Nxps8umE8xm/vCUihy
	ood79Dr0umvq8619rci0RZPZUVstjPoZJXCSmjpd9jEIWxG5507rZBrauO0FCM1dJ3Wdg1SZQ/7GH
	5c+mMcYv3xx3i8+Zws6nSIQdTfSLxkgV5jf8TUP3HXXIL6FXaTKeP6W3PGccntsasU1rHkdeALxn9
	NajdoUS1QoNmEkyi7detr7bbzf4fhSsJ6v5o35YNg1m5egLZ0PmgCWuhgQADdf74vXM1oNS96yhUM
	yN2L69YWafnPNtq4Em8w6lAVyaEEjuoyNAGjVf+x40Knn4lHiGQJBFRCyKh32tA6KXLuSMxp4hlkk
	8rbM8cig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3z-00000009ack-49rM;
	Mon, 19 Feb 2024 08:31:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZG-22Xh
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-000303-93; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-001bkm-Sq; Mon, 19 Feb 2024 09:31:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-2Y;
	Mon, 19 Feb 2024 09:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:29 +0100
Message-Id: <20240219083140.2713047-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_561528_F770A138 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/12] partitions: dos: save indention level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Save an indention level by continuing early in the loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c | 52 +++++++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 7472824b00..56ec1e3f48 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -190,36 +190,38 @@ static void dos_partition(void *buf, struct block_device *blk,
 	table = (struct partition_entry *)&buffer[446];
 
 	for (i = 0; i < 4; i++) {
+		int n;
+
 		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
 		pentry.size = get_unaligned_le32(&table[i].partition_size);
 		pentry.dos_partition_type = table[i].type;
 
-		if (pentry.first_sec != 0) {
-			int n = pd->used_entries;
-			pd->parts[n].first_sec = pentry.first_sec;
-			pd->parts[n].size = pentry.size;
-			pd->parts[n].dos_partition_type = pentry.dos_partition_type;
-			if (signature)
-				sprintf(pd->parts[n].partuuid, "%08x-%02d",
-						signature, i + 1);
-			pd->used_entries++;
-
-			if (is_extended_partition(&pentry)) {
-				pd->parts[n].size = 2;
-
-				if (!extended_partition)
-					extended_partition = &pd->parts[n];
-				else
-					/*
-					 * An DOS MBR must only contain a single
-					 * extended partition. Just ignore all
-					 * but the first.
-					 */
-					dev_warn(blk->dev, "Skipping additional extended partition\n");
-			}
-
-		} else {
+		if (pentry.first_sec == 0) {
 			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
+			continue;
+		}
+
+		n = pd->used_entries;
+		pd->parts[n].first_sec = pentry.first_sec;
+		pd->parts[n].size = pentry.size;
+		pd->parts[n].dos_partition_type = pentry.dos_partition_type;
+		if (signature)
+			sprintf(pd->parts[n].partuuid, "%08x-%02d",
+					signature, i + 1);
+		pd->used_entries++;
+
+		if (is_extended_partition(&pentry)) {
+			pd->parts[n].size = 2;
+
+			if (!extended_partition)
+				extended_partition = &pd->parts[n];
+			else
+				/*
+				 * An DOS MBR must only contain a single
+				 * extended partition. Just ignore all
+				 * but the first.
+				 */
+				dev_warn(blk->dev, "Skipping additional extended partition\n");
 		}
 	}
 
-- 
2.39.2



