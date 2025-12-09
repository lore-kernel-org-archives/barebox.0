Delivery-date: Tue, 09 Dec 2025 13:52:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCI-009Ys0-2P
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-0001Ep-G7
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qo/ZxepbKiPk1gufmA4/jD/8sDUbCNhwGOw6uXBn+Fg=; b=vhg7EDWsGrm5d8r7sN3vmcgOq1
	iUV2CzPA3KTu1NocZu7ruR70R9jJyPLdx01zOGQCiIJqFTbF+uccAvgPcJySz7hsunl+IHAfwch8q
	fVprsMtH/CiOtJ0jPxnYTSAegzksFH9kNVM4XCtV1jXbf4e58Ky2c7ZNdM0iyDaeSzDdW33/xNqSf
	NIhXnglBAUCyK8SVuLMcziTIrkZmRbjIvAB0bgyrpwlVvdtuH1Fn99gJnX/HjbyG7qRz3Syhi0HAs
	w8plNEeum92PRws4aZ4qsJ2fong/wxBoOt/yI1Yds2tvtZp48nssVon26Kw5vV3mBj8l2gISXcdbd
	ORRJMGog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBj-0000000EHKw-2oYb;
	Tue, 09 Dec 2025 12:51:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHS-26hz
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000ox-IR; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mub-0Q;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBa-0000000HSGm-47f8;
	Tue, 09 Dec 2025 13:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-1-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1851;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JdCF19h7u3NjGVv9tk/wylK8ks/fgpblMyXcJrJpso4=;
 b=DcMfO2rqUbK+ESSBzAVe30NCtyyy9zOV+pQrr7DfVqsZykJEEZYWdRiFCSXKOiMaHInIGYIXH
 Pq56XYop0UOBfEca2LHsUTCo59SWS50foJpJIM+uImXKzlfqo+23k7E
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_575359_16FAC895 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH v2 01/13] fs: devfs-core: add devfs_create_link_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow to create a devfs link that not only has its own name, but also
its own device_node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 8 +++++++-
 include/driver.h | 2 ++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 92e7c5823ed0d3a4c54cc7b2b1c9bf32ac535907..91082265d1aaa965160de5e414364e3fb14824d1 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -476,7 +476,7 @@ int devfs_create(struct cdev *new)
 	return 0;
 }
 
-int devfs_create_link(struct cdev *cdev, const char *name)
+int devfs_create_link_node(struct cdev *cdev, const char *name, struct device_node *node)
 {
 	struct cdev *new;
 	int ret;
@@ -489,6 +489,7 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 
 	new = cdev_alloc(name);
 	new->link = cdev;
+	new->device_node = node;
 
 	ret = devfs_create(new);
 	if (ret) {
@@ -512,6 +513,11 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 	return 0;
 }
 
+int devfs_create_link(struct cdev *cdev, const char *name)
+{
+	return devfs_create_link_node(cdev, name, NULL);
+}
+
 int devfs_remove(struct cdev *cdev)
 {
 	struct cdev *c, *tmp;
diff --git a/include/driver.h b/include/driver.h
index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..e0fddecd085c991db4f1fe34c56405d28b6f53ad 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -461,6 +461,8 @@ static inline const char *cdev_name(struct cdev *cdev)
 
 int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
+int devfs_create_link_node(struct cdev *cdev, const char *name,
+			   struct device_node *node);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);

-- 
2.47.3



