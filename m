Delivery-date: Wed, 15 May 2024 10:06:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79eG-00FWmV-15
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:06:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79eC-0000wN-IG
	for lore@pengutronix.de; Wed, 15 May 2024 10:06:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WS9ik676ngb3wRaFcIpjgVLZYe+xnbsvtmBpAK90q5o=; b=V90p5gu0Of5jWJWZv2D37G4tz7
	oetq5fNB08xwbYqaB3q15DapjZq3OqRYjKIXk1+9A4dkUfOpa0RexB2ENxavdn2KSXWmV+TBDMyBj
	s0+EFqvstG/Ytw9J3URswO9F7oeUtCc+rm9eBdiojnQ1gC7Th54qNdIfVORXf4FGuTpq6byf1pZrH
	Vh52qRmt1a3VjgN+mk9LCIlNiFvw+EyT+HyGXROU+mnvenoOdpjsM3OrGkrxPvTNPNZhW2UkreQuP
	KHNyu/V/I5+rZ6NC9QYPqgNSqpC145rdzyGpXOSlA1WqNvnu4FlqquixGbdzmjDsUeXqUUHHX9NNG
	Ci2ZDHRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dY-00000000suk-09sv;
	Wed, 15 May 2024 08:05:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dT-00000000ssF-0BOy
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:05:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-0000dU-UA; Wed, 15 May 2024 10:05:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-001UtF-Hl; Wed, 15 May 2024 10:05:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-00H1E8-1T;
	Wed, 15 May 2024 10:05:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 10:05:07 +0200
Message-Id: <20240515080507.4056255-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
References: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010515_234118_40BFF5D6 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] partition: reparse tables only if CONFIG_PARTITION_MANIPULATION=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reparse_partition_table() will delete a device's existing partition
cdevs and allocate new ones according to the new partition table.

Holding a reference to a cdev prevents it from bring removed to avoid
dangling pointers and use-after-frees.

Unfortunately, not all users call cdev_open on the cdev and increment
the usage count, instead using functions like cdev_by_name, which don't
call cdev_open.

The proper solution for this is probably to change all functions that
return a cdev to actually take a reference to the cdev.

This will involve quite a bit of work though, so for now, restore old
behavior by making reparsing of the partition tables dependent on
CONFIG_PARTITION_MANIPULATION=y.

The option isn't fully appropriate as partition manipulation can happen
by writing to the parent block device, but not noticing changes of
partitions is the behavior we had before.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c |  2 ++
 include/disks.h     | 11 +++++++++++
 2 files changed, 13 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index 17c2f1eb281a..0b10377e7327 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -266,6 +266,7 @@ int parse_partition_table(struct block_device *blk)
 	return rc;
 }
 
+#ifdef CONFIG_PARTITION_MANIPULATION
 int reparse_partition_table(struct block_device *blk)
 {
 	struct cdev *cdev = &blk->cdev;
@@ -285,6 +286,7 @@ int reparse_partition_table(struct block_device *blk)
 
 	return parse_partition_table(blk);
 }
+#endif
 
 int partition_parser_register(struct partition_parser *p)
 {
diff --git a/include/disks.h b/include/disks.h
index ccb50d3ce94f..a3673d1e276f 100644
--- a/include/disks.h
+++ b/include/disks.h
@@ -3,6 +3,9 @@
 #ifndef DISKS_H
 #define DISKS_H
 
+#include <linux/types.h>
+#include <linux/errno.h>
+
 struct block_device;
 
 /** Size of one sector in bytes */
@@ -24,6 +27,14 @@ struct partition_entry {
 } __attribute__ ((packed));
 
 extern int parse_partition_table(struct block_device*);
+
+#ifdef CONFIG_PARTITION_MANIPULATION
 int reparse_partition_table(struct block_device *blk);
+#else
+static inline int reparse_partition_table(struct block_device *blk)
+{
+	return -ENOSYS;
+}
+#endif
 
 #endif /* DISKS_H */
-- 
2.39.2



