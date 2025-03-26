Delivery-date: Wed, 26 Mar 2025 18:26:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWJ-004Wsa-00
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 18:26:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWI-0007oJ-BS
	for lore@pengutronix.de; Wed, 26 Mar 2025 18:26:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lhHF+XCfwcPkWc374RifmoCjF3hthmA2QFhaeCwIiXE=; b=v+mFG3N2R+plikUq3u0Jv3JMZF
	+kfEtDrvbZP36v/+XBJieW6U3N0lezB5QnTtq1qEew2XiDRIBctMzELvUHPvycCSkrVrZ8fgVgwdz
	ugSOmm6Payl3mrLKrY0F6VXm32THUTHRiLuwQYy3bKt85M/UTi2Z9mdFuqqZ1V2tPRwwBDlfqs71a
	ZVUwW3nRc/Dd2LQlVA9lLgGzyt8bvAI0pvpHtNVXAO9K21TjKt4MZEtyb8JpTiNZ1aZwjjHZ/mBSo
	zPdkh/S5uqyARw44OSxHG+Q6mJwQyIm6IqkZrbIUps4jYop9JrRcZBnApl+v05SArx+ic+r6TGzGB
	DcLS4qsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txUVe-00000009ATN-2mlZ;
	Wed, 26 Mar 2025 17:25:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txU6u-0000000963O-42En
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 17:00:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-0003Tg-M0; Wed, 26 Mar 2025 18:00:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-001mmQ-1Z;
	Wed, 26 Mar 2025 18:00:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-002oSB-1H;
	Wed, 26 Mar 2025 18:00:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 18:00:10 +0100
Message-Id: <20250326170010.670379-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326170010.670379-1-a.fatoum@pengutronix.de>
References: <20250326170010.670379-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_100013_003279_EB4E3C48 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] driver: drop unused dev_open/close_default stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These function have been unused since 2009, so drop them already.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 59ce1d5cc9b7..76b167166954 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -21,7 +21,6 @@
 
 #include <param.h>
 
-struct file;
 struct bus_type;
 struct generic_pm_domain;
 
@@ -353,16 +352,6 @@ ssize_t mem_copy(struct device *dev, void *dst, const void *src,
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-static inline int dev_open_default(struct device *dev, struct file *f)
-{
-	return 0;
-}
-
-static inline int dev_close_default(struct device *dev, struct file *f)
-{
-	return 0;
-}
-
 struct bus_type {
 	char *name;
 	int (*match)(struct device *dev, struct driver *drv);
-- 
2.39.5



