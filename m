Delivery-date: Thu, 27 Nov 2025 12:34:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH2-005PaG-17
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:34:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH1-0002B2-R2
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:34:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ejNzDnR7zQOEVgCQFzCwKv/lFnMU8wmzeH/eN8XTMGY=; b=d0BqQ7ICxux2lSe51ChpoTB0X6
	qXRIVsmFbIxYcT8ZBZwx9dDhuT6C3DUcvV1dockMrFK2TwrSWVjiDzjTSTc7u1vV0KQzFajOesQQ4
	F3Cb2nHGnXLIK6M+/gKOUf3CmPXTd8rgTpaLZpO8gb755vMQ1WzzXQkETAfYkf4+FvGpLvv6H6To6
	gjG46rl0XqWvOfsLn32jnapN1vefSDQQsRJafLxAKikGJVRnt+6Rf2NBuSk922/LqDKRjaOUEvndM
	sq0o6OPyWGivPphB0M49gMgrJ5EyKRXp9GzWyErW6PVnnee40DrTmeDeYtV6DXjKykUbQov7MICRp
	xcLYU06g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGW-0000000GSd1-3E1E;
	Thu, 27 Nov 2025 11:34:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGU-0000000GSc8-2yHl
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:34:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGT-00022C-5d; Thu, 27 Nov 2025 12:34:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGS-002mQG-2d;
	Thu, 27 Nov 2025 12:34:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGT-0000000BV0F-0dlx;
	Thu, 27 Nov 2025 12:34:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 12:34:14 +0100
Message-ID: <20251127113416.2740774-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_033422_774726_8641438D 
X-CRM114-Status: GOOD (  10.11  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] driver: call devinfo_del() during free_device_res()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devinfo_del() can safely be called mutiple times. Call it from
free_device_res() so that remaining resources are freed before the
device goes out of scope.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index eca23d7c30..eefed4b1a5 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -348,6 +348,7 @@ EXPORT_SYMBOL(unregister_device);
  */
 void free_device_res(struct device *dev)
 {
+	devinfo_del(dev, NULL);
 	free(dev->unique_name);
 	dev->unique_name = NULL;
 	free(dev->deferred_probe_reason);
@@ -825,10 +826,11 @@ void devinfo_del(struct device *dev, void (*info)(struct device *))
 	devinfo_init(dev);
 
 	list_for_each_entry_safe(cb, tmp, &dev->info_list, list) {
-		if (cb->info == info) {
-			list_del(&cb->list);
-			free(cb);
-		}
+		if (info && cb->info != info)
+			continue;
+
+		list_del(&cb->list);
+		free(cb);
 	}
 }
 
-- 
2.47.3



