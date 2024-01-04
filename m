Delivery-date: Thu, 04 Jan 2024 09:52:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJT8-003JUR-26
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 09:52:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJT7-0005J0-Kj
	for lore@pengutronix.de; Thu, 04 Jan 2024 09:52:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wT1VRNQIC7WG3UuBM6dB7rzvc/f17yXGAlkD6DHY8h8=; b=1eeCrUVQ4eNwqm
	M+9oUp4dr8AC9ui1hr5Hzvt2DVfFeKKiF+dXRNQlRlXVxjAHT39UCqE+dvZE5fcZE0nrTQlPqDiPy
	LIBBIc0IEIcmSc6FOsxwSs1ympTodoERyOk4i5izM4wNdIw1KQn132WG62SOwPDXHPVbQGVwU28ju
	yfa1dzuS1KMON5iuGqWxKO9Qby1Km1gXl+Pyzs5XcKkZ3HZb0Ts2u/sk4XXfZVKokMC37AtbgkxOZ
	C1Ao61ZhNezlYc09tf8Q7sEHt0grOYGpIFcE6xvs34V9H3Kv4+CWlkje3B2wp/l881lFKIOgE6K4v
	VZQAyTVkXgWGd79KPcrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJS1-00DGtT-1v;
	Thu, 04 Jan 2024 08:51:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJRy-00DGs7-37
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 08:51:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJRx-00053l-J4; Thu, 04 Jan 2024 09:51:37 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJRx-000IwS-6R; Thu, 04 Jan 2024 09:51:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJRx-002BDw-0J;
	Thu, 04 Jan 2024 09:51:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  4 Jan 2024 09:51:35 +0100
Message-Id: <20240104085135.519786-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-4-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_005139_002144_C7B38549 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! cdev: export cdevfs_add_partition for general use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we export the function, some documentation can be useful.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 912bfeede8dc..060a24795c47 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -474,6 +474,17 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
 	return ret ? ERR_PTR(ret) : cpart;
 }
 
+/**
+ * cdevfs_add_partition() - add partition to already registered cdev
+ * @cdev: parent cdev
+ * @partinfo: new partition information
+ * @end: If not NULL, will hold the the (non-inclusive) end offset of the newly
+ *       created partition.
+ *
+ * Return: the newly registered cdev or an error pointer if the new partition
+ *         would clash with exisiting partitions or overflow the cdev.
+ *         A valid cdev can be freed with cdevfs_del_partition()
+ */
 struct cdev *cdevfs_add_partition(struct cdev *cdev,
 		const struct devfs_partition *partinfo, loff_t *end)
 {
-- 
2.39.2



