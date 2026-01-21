Delivery-date: Wed, 21 Jan 2026 12:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXL-003kKv-2E
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXK-000450-LO
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TtoIpqDCQa4BDE1lInNAuF3DQH6Ow/2osz5yY5X6boY=; b=tJ4Tt3dKxifhTqTlso11JYAEED
	Q6LYja9JvUFzjfzNNw3bv8P0g913OhsFq8PYAk9uxPdbHDCzFHzImYiVHi6vTcsD3QDo6QQBu6lLq
	oDwks80USvu9AKpLEx4dBi7LR3gV3QCSJkpbJ1ggELjIfH+0S31aYRhSswyh9pHHUtHRqGGdlURoT
	zR+vDdTN+YlPmtvKl+BixNcZHSWrwNHW2gsxsqbkaMhZ1Ct3qYQcVbTb5mN+BawRlY9MhB/7lrhYJ
	Zf1qofVv5JNFIwaNVJo1SBZB2RnXH5/QkNzoVETjen9IQ9kvEZ0M/DTd3wFbEhrabkxo7Y04SVAed
	aS37XonA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWx-00000005MSq-07MG;
	Wed, 21 Jan 2026 11:37:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWs-00000005MQg-32v1
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:37:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-0003rM-75; Wed, 21 Jan 2026 12:37:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-001k2I-2B;
	Wed, 21 Jan 2026 12:37:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-00000006G8i-2UDi;
	Wed, 21 Jan 2026 12:37:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 12:36:49 +0100
Message-ID: <20260121113738.1485637-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
References: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033742_789947_EED2630C 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] video: stmfb: add screen base only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The stmfb driver is the only user of fb_of_reserve_add_fixup()
and apparently supports reserving its frame buffer when booting a kernel.
I am not sure this hand off actually works, but the very least we can
do is to avoid adding a duplicate entry repeatedly on every of_diff call.

Thus remove the old one if it exists and add a new one if the frame
buffer was enabled at fixup time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/fb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index bfc075039e9e..10d34a39e2b2 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -208,11 +208,12 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
 {
 	struct fb_info *info = context;
 
-	if (!info->enabled)
-		return 0;
+	of_del_reserve_entry((unsigned long)info->screen_base,
+			     (unsigned long)info->screen_base + info->screen_size);
 
-	of_add_reserve_entry((unsigned long)info->screen_base,
-			(unsigned long)info->screen_base + info->screen_size);
+	if (info->enabled)
+		of_add_reserve_entry((unsigned long)info->screen_base,
+				     (unsigned long)info->screen_base + info->screen_size);
 
 	return 0;
 }
-- 
2.47.3



