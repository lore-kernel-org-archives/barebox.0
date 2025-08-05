Delivery-date: Tue, 05 Aug 2025 09:26:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujC44-007DQF-0c
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:26:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujC43-0004YD-AV
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:26:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PgpGO6l0ZLye5LhJXOZlEtOd81eanWEzoNDq7n5UQP0=; b=AaD0yg2T8BLgjP
	o3h0Pk9cRkr7BXnRp5G8ExCx5dtKdIkFKuidb9k8b6lp3yim+6CSc+/GR1z0augoCmiBy1Gp+FrW4
	xC7b9N+sk6rK9Y+EBDr7WApuJOflNLmw0/afoDhApiP5GIwYMgdtI/rD9XKYAMRGOEgW5uzfm67/8
	9XvpBlBn4g7LNkqQ5ztTqXJAhGfheBll86UDafqRLTCQe0pAZq7VsrtGQtwbwTOlGxLTf/FBxeFNP
	S8LO8ddofUtHR4KFCjVEXQcVmFufzfO6m+A3LK5I3QK6Sl/WZPSN3RLAtr0nwyfl7MC+pvH7z1XpQ
	QnAqKddFikfr+xhOkOHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujC3M-0000000C14G-15C0;
	Tue, 05 Aug 2025 07:25:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujC3I-0000000C13i-21KL
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:25:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujC3H-0004TA-4P; Tue, 05 Aug 2025 09:25:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujC3G-00C0DJ-32;
	Tue, 05 Aug 2025 09:25:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujC3G-00EcPI-2f;
	Tue, 05 Aug 2025 09:25:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  5 Aug 2025 09:25:37 +0200
Message-Id: <20250805072537.3484221-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_002540_538266_6DFC5C4C 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Stefano Manni <stefano.manni@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] cdev: fix mtd partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devfs-core.c implements the partition handling only for devices that are
not MTD devices. MTD devices have their own partition handling in
drivers/mtd/partition.c, see the special case in __devfs_add_partition()
for MTD devices. This means for MTD devices we have to pass the original
cdev to the ops, not the master cdev.

Fixes: 6d2b6f399c07 ("cdev: pass master cdev to cdev ops")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 52490576b7..9c2dae5545 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -226,6 +226,10 @@ int cdev_find_free_index(const char *basename)
 
 static struct cdev *cdev_get_master(struct cdev *cdev)
 {
+	/* mtd devices handle partitions themselves */
+	if (cdev->mtd)
+		return cdev;
+
 	while (cdev && cdev_is_partition(cdev))
 		cdev = cdev->master;
 
-- 
2.39.5



