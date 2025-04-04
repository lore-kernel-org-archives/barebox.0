Delivery-date: Fri, 04 Apr 2025 17:55:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOd-008JDR-0v
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 17:55:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOc-0006cu-Nu
	for lore@pengutronix.de; Fri, 04 Apr 2025 17:55:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XbsApENXHI9DufZVtxWGIr8/Wf1t1CL0pnhNefWbepY=; b=FLQjRgWq4gUlpWKOqfARSmfHBq
	FOh43MT5gBDmq8N9q39o3OFNjobqrlRea0mfcjCC5zHFVmLARlUd3vp6NmNi8dh5LJti9knXTeclz
	XMFfNOgQ8zxaeMX0FSZGYH0dqA5X/wYnKmS5MTHcoARqZs3fOV7YC46d6vbtq4d5Dfhf2UKKi55cu
	gnWxDzO7sqa11r1vO+hX6tL/pTayJAvBs/3qc9PyEtvot1PhBDyO+zSCX5si64EeNFvH7UJdoFLma
	egPVkQ7FwPbcoJ1rK/uaqMaMT23QVjHxsvMap+vX6koDAULaWi0YK/KFPUnNEzKnwYLntt7FjMk2A
	e4PqpslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jOC-0000000CE1B-12Rp;
	Fri, 04 Apr 2025 15:55:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jO8-0000000CDzA-12bB
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 15:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-0006Sr-N9; Fri, 04 Apr 2025 17:55:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-003I8i-1i;
	Fri, 04 Apr 2025 17:55:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-00C0rF-1P;
	Fri, 04 Apr 2025 17:55:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 17:55:19 +0200
Message-Id: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_085524_307605_9D4EF2D2 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] fs: add only successful filesystem probes to fs_device_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fs_init_legacy can't fail currently, but if it does in future, we can
end up with a file system added to fs_device_list that wasn't
successfully probed.

Move the list_add_tail to the end to avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 48a6e960e812..4d201d1b0db8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -782,14 +782,14 @@ static int fs_probe(struct device *dev)
 
 	fsdev->driver = fsdrv;
 
-	list_add_tail(&fsdev->list, &fs_device_list);
-
 	if (IS_ENABLED(CONFIG_FS_LEGACY) && !fsdev->sb.s_root) {
 		ret = fs_init_legacy(fsdev);
 		if (ret)
 			return ret;
 	}
 
+	list_add_tail(&fsdev->list, &fs_device_list);
+
 	return 0;
 }
 
-- 
2.39.5



