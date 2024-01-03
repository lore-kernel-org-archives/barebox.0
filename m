Delivery-date: Wed, 03 Jan 2024 11:17:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJg-001mZ8-28
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJf-0003E7-Kp
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iv1kHVFMvaQiXAIY/E2nDU5CZ3s5rWGKf2EzR2v/gJ4=; b=qPMKEhMtN5SqNYBiyE8XcjsM0q
	i6GMHmWo3QWz7k23D3F435zjjQrwhqhYXBqgMCSJCVzQM97sLyr6KHxAiaRoswIjxjAziPy+UJzfg
	7s/hQzaZIuDVAUQQLtYykq051eHV7xgGM6FDBzxgt+DXllhbEfH5rFrXKKBlMW0hoUGU6Dpq3Ds40
	6A6VtsCkBX/Mh4QWre26B/LP/3DUJQ5CKllKYZC4wkVoVw+RSyIaH38l6GOFd7BeB3kBidY1VwB+I
	arzzZO6R0/xEMg2/N74VeYbAFhoX9J0GWW8i4uANj+H1SMIgI7XcsFIE10cLBO1FYZvYD8Paocifq
	TyIZM3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIh-00AMRg-0J;
	Wed, 03 Jan 2024 10:16:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOT-1f
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002ho-9Q; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-0005w8-SY; Wed, 03 Jan 2024 11:16:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-2a;
	Wed, 03 Jan 2024 11:16:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:16:25 +0100
Message-Id: <20240103101629.2629497-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_554779_A29B960E 
X-CRM114-Status: UNSURE (   9.04  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/6] driver.h: move devfs_add/del_partition later in file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This groups the function with similar functions and prepares adding
variants that take a struct devfs_partition argument, as that's only
defined later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index a0234fb6c31b..0e3d5635e4c1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -631,10 +631,6 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid)
 	return ERR_PTR(-ENOENT);
 }
 
-struct cdev *devfs_add_partition(const char *devname, loff_t offset,
-		loff_t size, unsigned int flags, const char *name);
-int devfs_del_partition(const char *name);
-
 #ifdef CONFIG_FS_AUTOMOUNT
 void cdev_create_default_automount(struct cdev *cdev);
 #else
@@ -681,6 +677,10 @@ struct devfs_partition {
 int devfs_create_partitions(const char *devname,
 		const struct devfs_partition partinfo[]);
 
+struct cdev *devfs_add_partition(const char *devname, loff_t offset,
+		loff_t size, unsigned int flags, const char *name);
+int devfs_del_partition(const char *name);
+
 #define of_match_ptr(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
 
-- 
2.39.2



