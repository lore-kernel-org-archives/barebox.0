Delivery-date: Wed, 07 Jun 2023 14:09:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryN-00EJYz-NH
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:09:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryJ-00049V-OD
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:09:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/RxCP9yvBVqPyV14+wvXdL+EUxRn2NExJWjSycSq/gE=; b=QFezHZiIfgKRp6/efJxga1zl48
	xnunDU2DwoyMA3Wn44qs/MWUzxIidMXIs1+hFQ8kD4x9NXDdXAuSkr8oAdGPHHChKIjjnlt7bRY8E
	h+Dip+7LCeUH1BToziiAL4i/yl6DQe229+ghWUUCKdKKIiSY8lnlVzIYSS8GCVqW+2LNh0Olf7C4s
	j2F9PHutuZkitVHghRIaHlXqtBYB32aUL8ImAHXslxxiTaevO8eSCVXLK57GV7bTd22ejeWTLVVTw
	w1xsiRx7ZN7VNKRm3gZj0gsUIC4banbYLxRPaCNqgCW2KhtM41SUqGx+wuygF/1uGdVyPg3ItKpjf
	IT9z0DtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rx7-005l87-1s;
	Wed, 07 Jun 2023 12:07:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwu-005kti-1T
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 12:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/RxCP9yvBVqPyV14+wvXdL+EUxRn2NExJWjSycSq/gE=; b=TSgNmclJ4LucMaNd3GfTrKf1m0
	iGsdTjjcLtgaitLIrWG11UDSR4BK9SAKynb9JKkb/O6TilCMw3ZZqru6SVl6oH4/Q1smc3QopVTqm
	JHPHzD2x7yN27xEoVZ584hVFp8zhnfroZQQQDgJdIj+WCmh+7XTswN8SiF0KzvX+i6o6Jg1qg7hp+
	eDPMPNXF/71EW9uXgkPHQLgGdusQkY9uaSco9fvm+SN76GYT0svqh109LKtqb9mzYPGkaTTzJ+3y1
	iqFhcwN8GY3+L0gF0NvKfHmjWQL0ULxWY8jlx9rAxMWYE4sVBYkIkfedoFnODROnbEbKUktAjFGyn
	bJ+4k5Vg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwn-0058p1-2H
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwj-00034c-65; Wed, 07 Jun 2023 14:07:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jko-Ig; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyNa-7C; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:14 +0200
Message-Id: <20230607120714.3083182-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_130729_929227_E61C940A 
X-CRM114-Status: GOOD (  14.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/19] state: allow lookup of barebox state partition by Type GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The backend device tree property so far always pointed at a partition.
Let's allow pointing it at GPT storage devices directly and lookup
the correct barebox state partition by the well-known type GUID:

  4778ed65-bf42-45fa-9c5b-287a1dc4aab1

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo (Sascha)
  - use new cdev_find_child_by_gpt_typeuuid() to make barebox-state
    code more concise (Marco)
---
 common/state/state.c | 16 ++++++++++++++++
 include/driver.h     | 19 +++++++++++++++++++
 include/state.h      |  4 ++++
 3 files changed, 39 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 88e246198fb8..9940a91fe34c 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -21,8 +21,10 @@
 #include <fs.h>
 #include <crc.h>
 #include <init.h>
+#include <block.h>
 #include <linux/err.h>
 #include <linux/list.h>
+#include <linux/uuid.h>
 
 #include <linux/mtd/mtd-abi.h>
 #include <malloc.h>
@@ -595,6 +597,8 @@ static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
 }
 #endif
 
+static guid_t barebox_state_partition_guid = BAREBOX_STATE_PARTITION_GUID;
+
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
@@ -641,6 +645,18 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
+	/* Is the backend referencing an on-disk partitionable block device? */
+	if (cdev_is_block_disk(cdev)) {
+		cdev = cdev_find_child_by_gpt_typeuuid(cdev, &barebox_state_partition_guid);
+		if (IS_ERR(cdev)) {
+			ret = -EINVAL;
+			goto out_release_state;
+		}
+
+		pr_debug("%s: backend GPT partition looked up via PartitionTypeGUID\n",
+			 node->full_name);
+	}
+
 	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
 
 	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
diff --git a/include/driver.h b/include/driver.h
index 817e9e386bc6..d012cd006dcb 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -585,6 +585,9 @@ extern struct list_head cdev_list;
 #define for_each_cdev(cdev) \
 	list_for_each_entry((cdev), &cdev_list, list)
 
+#define for_each_cdev_partition(partcdev, cdev) \
+	list_for_each_entry((partcdev), &(cdev)->partitions, partition_entry)
+
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
@@ -604,6 +607,22 @@ static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
 	return master && (master->flags & DEVFS_IS_GPT_PARTITIONED);
 }
 
+static inline struct cdev *
+cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid)
+{
+	struct cdev *partcdev;
+
+	if (!cdev_is_gpt_partitioned(cdev))
+		return ERR_PTR(-EINVAL);
+
+	for_each_cdev_partition(partcdev, cdev) {
+		if (guid_equal(&partcdev->typeuuid, typeuuid))
+			return partcdev;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
 int devfs_del_partition(const char *name);
diff --git a/include/state.h b/include/state.h
index bffcd5a9007f..3daf82c0735f 100644
--- a/include/state.h
+++ b/include/state.h
@@ -62,4 +62,8 @@ static inline int state_read_mac(struct state *state, const char *name, u8 *buf)
 
 #endif /* #if IS_ENABLED(CONFIG_STATE) / #else */
 
+#define BAREBOX_STATE_PARTITION_GUID \
+	GUID_INIT(0x4778ed65, 0xbf42, 0x45fa, 0x9c, 0x5b, \
+		 0x28, 0x7a, 0x1d, 0xc4, 0xaa, 0xb1)
+
 #endif /* __STATE_H */
-- 
2.39.2



