Delivery-date: Mon, 14 Apr 2025 08:32:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNB-000Wy3-1p
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNA-0001NR-O2
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjECXes/XKUwS+zrEU/U01Hu4DdceiJWoC1hQzgNCkQ=; b=BNjeF0Y/QSuKV821GPeWMHnacC
	nfwEbxyPJ2aL2KMtHlh24jbUPjMtwMI6Rf99/GFKiZZ0LuLKiiIy9tushFqNhYmrPWHUWFpXMVoGP
	oVcy6Cbpznj/NGuqUmf+XVArDD72qM+lQB+JQ8QrAfQDwg69xOxdAeEPmAWSDtAulK9yy55738zeg
	BzfQyKt3DZRJG616Sf0xpfTRlYUMWKJW3kYvozDZsXTVyztwMmIdzCdyVVCyHUjoIz5iStD2bTUMh
	q8373My/jbBDctp/oROs6VtBfWtXtJPOGEJQkcxPJZvl8RzMqXwbypI8DWG6eJKc9mvEx1qCi14HP
	SR99jMjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMg-00000000nuM-4636;
	Mon, 14 Apr 2025 06:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMI-00000000nph-4641
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000l0-M2; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000ChW-1V;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-1D;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:36 +0200
Message-Id: <20250414063152.2736649-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233155_015275_617B06B9 
X-CRM114-Status: GOOD (  10.08  )
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
Subject: [PATCH 02/18] cdev: constify cdev_find_child_by_gpt_typeuuid's guid_t pointer argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The UUID is only used for comparison and never written.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c  | 2 +-
 include/driver.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index f67c86b2267e..f84b34ea53ab 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -127,7 +127,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
 }
 
 struct cdev *
-cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid)
+cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 {
 	struct cdev *partcdev;
 
diff --git a/include/driver.h b/include/driver.h
index d01d026b687b..3f2c681c0e80 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -609,7 +609,7 @@ static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
 }
 
 struct cdev *
-cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid);
+cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid);
 
 #ifdef CONFIG_FS_AUTOMOUNT
 void cdev_create_default_automount(struct cdev *cdev);
-- 
2.39.5



