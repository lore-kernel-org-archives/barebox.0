Delivery-date: Wed, 03 Jan 2024 11:17:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJi-001ma4-2q
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJh-0003FQ-Rb
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yYvvGDU/nqISKgQEYIjqv/aI2TdYT/VMaj1h+NcoUTw=; b=lJT6EREqkvNI7EH08AIqY+uB1U
	EP97Ggf7HRFyi38xZNnnMr9/4XVqqvaY9EFQN2u9eXo1bR11feeSupwfmy/5ZgBaFv3XNSDcEQyCR
	Y1psSdcwO+/Pb0dUu8eEIfVDtfaSppBRZ7oSqpXbs6ioYVV0Ln0BrMTma0j2WtpMbDFv50sQ8bAUh
	XG7A8u4CbsVFfe8HsAZdbssTmkJs/z/SW5iQAoVZIQhFI5qxi6UzQDNppG1XbqWMGkTT2wgTq3OQG
	PvchVkQ4RgMPxaS1pDJ1EErl598vH/ZYKxMsoos9zDzQqTWw56T2c+0xRdoSPDzp+aPRVWx7syaBJ
	zJDocfMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIh-00AMS1-2o;
	Wed, 03 Jan 2024 10:16:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOX-22
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002i0-Fp; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0005wK-2Y; Wed, 03 Jan 2024 11:16:31 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-3B;
	Wed, 03 Jan 2024 11:16:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:16:29 +0100
Message-Id: <20240103101629.2629497-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_695192_DCBFC13D 
X-CRM114-Status: UNSURE (   9.33  )
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
Subject: [PATCH 6/6] cdev: delete partitions when deleting master cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

blockdevice_unregister only calls devfs_remove on the root cdev and
leaves the partition cdevs dangling. This doesn't break until the
block device parent struct device is freed at which time, it will
iterate over its cdevs to free them. If there's partitions there,
list_del on the partitions triggers a use after free.

Fix this by removing partitions whenever the master cdev is deleted.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index fef66e08e293..244f76f62c52 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -375,6 +375,7 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 	}
 
 	INIT_LIST_HEAD(&new->links);
+	INIT_LIST_HEAD(&new->partitions);
 	list_add_tail(&new->list, &cdev_list);
 	list_add_tail(&new->link_entry, &cdev->links);
 
@@ -396,6 +397,9 @@ int devfs_remove(struct cdev *cdev)
 	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
 		devfs_remove(c);
 
+	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry)
+		cdevfs_del_partition(c);
+
 	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
-- 
2.39.2



