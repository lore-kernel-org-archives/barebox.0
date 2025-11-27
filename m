Delivery-date: Thu, 27 Nov 2025 12:34:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH1-005PZu-1n
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:34:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH1-0002Ap-1H
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+8aYE+Vac1H7Xc57Po5PWeYTU1k/jRnIAeUocknS/n0=; b=SiqwBpmbnIUSqRpNWpt8VaeVd9
	9rvyvUYfHBAwlzmWohds7Wt+galidOdd+0czJAgGhCZ5ABoRZoSs8OlTNe+cRIU0mT/Im5wCOe+QR
	igNWmZFr6mcdaMkbPrpAowOXU8n6pp7r3f96OS28m0717qJtwjblkL/XVGAtsPVc9D1yrwSYpDLYa
	g6v9ZT46+k6lLv8dc8PeHP0vlUL5k4634c3BVFJqfkJHzZkucLvF+0SwkYwaW9UxtCMZG3NYJoVPo
	L6j4bNbSmfmgaJOS/odKwgaHWOYR0dF0sqXwXjMqBQWgiHJ/Su0SZ+S/R6kZnA9dM5TMi1Rq/k5pZ
	wSdSrWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGZ-0000000GSdI-0D7J;
	Thu, 27 Nov 2025 11:34:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGV-0000000GSc9-0YoY
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:34:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGT-00022Q-Nm; Thu, 27 Nov 2025 12:34:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGT-002mQg-1m;
	Thu, 27 Nov 2025 12:34:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGT-0000000BV0F-3jTC;
	Thu, 27 Nov 2025 12:34:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 12:34:15 +0100
Message-ID: <20251127113416.2740774-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127113416.2740774-1-s.hauer@pengutronix.de>
References: <20251127113416.2740774-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_033423_205004_C774E25B 
X-CRM114-Status: GOOD (  11.83  )
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
Subject: [PATCH 2/3] driver: call free_device_res() from unregister_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

free_device_res() frees dynamically allocated resources allocated during
device lifetime. These are no longer needed when the device is
unregistered, so we can free them in unregister_device(). With this
free_device_res() might be called multiple times, so set
dev->deferred_probe_reason to NULL after freeing it to avoid double
frees.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index eefed4b1a5..753e06963b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -335,6 +335,8 @@ int unregister_device(struct device *old_dev)
 	if (np && np->dev == old_dev)
 		np->dev = NULL;
 
+	free_device_res(old_dev);
+
 	return 0;
 }
 EXPORT_SYMBOL(unregister_device);
@@ -352,6 +354,7 @@ void free_device_res(struct device *dev)
 	free(dev->unique_name);
 	dev->unique_name = NULL;
 	free(dev->deferred_probe_reason);
+	dev->deferred_probe_reason = NULL;
 }
 EXPORT_SYMBOL(free_device_res);
 
-- 
2.47.3



