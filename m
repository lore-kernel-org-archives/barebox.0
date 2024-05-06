Delivery-date: Mon, 06 May 2024 18:06:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40rG-006DLz-2H
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 18:06:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40rG-0004tk-6b
	for lore@pengutronix.de; Mon, 06 May 2024 18:06:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wIdWOD/csqlI4UP9oHgKD0dqAHQTqhBFvCvNxLt+L0g=; b=fidNskUAFzxO+HXNvyxFHzxE+K
	SE1Na+wVpBfUGmsu+vgmOaSPo1fOlfjCbuPoSAZzurJb25veEl6ywAqXTU8tgyystrxw+vhpxWnD5
	hH6TQc9l1SUSQUx6ry1xv57731uq7GTkqLJ6g6t8d31fCMjHJNNFfWCb+WigbARHjjlWJ7+TieTED
	eziajb81fOITohrtS+K/2BZO9N0sUn+LIwSWZgzKVKR5Uy6PtHruE3P/F1W9cf+2RhRUse+A8ksKs
	Jaze29M08RoV1HIDeCY4Z6pwk/34HIwsc3SO8StExESOAQYEhEWZT/2B+ehOzInIAdCp7QpW3vjbV
	IDH6ZPbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40qi-00000007z0T-37pf;
	Mon, 06 May 2024 16:05:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40qf-00000007yzS-04Ma
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 16:05:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40nh-0003yu-5V; Mon, 06 May 2024 18:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-00GIQR-PM; Mon, 06 May 2024 18:02:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-009E6k-2E;
	Mon, 06 May 2024 18:02:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 May 2024 18:02:45 +0200
Message-Id: <20240506160246.2198975-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
References: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_090553_151323_D16F86CC 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] pstore: fix size of OF fixup memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct resource::end points at the last byte of a region, but we pointed
1 byte after it instead. Fix this, so we have a proper (aligned) size
for the memory region.

It's possible this had no adverse effect.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 4732bd4e3154..9ecf7ef5e901 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -478,7 +478,7 @@ static int ramoops_of_fixup(struct device_node *root, void *data)
 	int ret;
 
 	res.start = pdata->mem_address;
-	res.end = res.start + pdata->mem_size;
+	res.end = res.start + pdata->mem_size - 1;
 	res.name = "ramoops";
 
 	ret = of_fixup_reserved_memory(root, &res);
-- 
2.39.2



