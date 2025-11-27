Delivery-date: Thu, 27 Nov 2025 13:42:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vObKE-005Qb9-22
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 13:42:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vObKE-0000pq-2q
	for lore@pengutronix.de; Thu, 27 Nov 2025 13:42:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t51JkzX/scE9vlVi04rODvqqpJ5TtBB3m4j7q5TRWyU=; b=ECUopBjr1PQnidb+VGiu/DXRfH
	K6R+NGv4XvoVQNkf0/S7pNMa7GPCTncUPEvk7yYnhl452n8P1c5D2y/Yoi8JkHOG5otspTofYObQc
	5k8G7bhhEl2Ftdn5k9LDyEJunQgx8ltIRj0i2K6foqcYxHJ5Fxt2IXpJgu/cLwRf4obteJSdrKH4a
	bvhd0ZVAXNPmgkunHMsZYWOVfwWnmNujjI0aZamSGUxa0Lr9D8PVFFZJgmDf099n7T2w5ZaufbRUj
	QfjEBnsZw4AoKH/JJkYAVK2Ev/qcp46EKqKPTRKvjT925PZ6dQnUZV8kSoZlRRrLTuzNJ/qcGW8/+
	KiXdalRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vObJg-0000000GZzQ-3gf1;
	Thu, 27 Nov 2025 12:41:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vObJe-0000000GZz1-2G8u
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 12:41:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vObJd-0000lv-40; Thu, 27 Nov 2025 13:41:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vObJc-002nAD-2z;
	Thu, 27 Nov 2025 13:41:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vObJc-00000009M5r-3Let;
	Thu, 27 Nov 2025 13:41:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Thu, 27 Nov 2025 13:41:34 +0100
Message-ID: <20251127124140.2229718-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_044142_624520_200FC821 
X-CRM114-Status: GOOD (  12.46  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] environment: prefer non-removable over removable devices for autoprobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

On systems with only 1-2 MiB of boot flash, it can be sensible to locate
the barebox environment outside of the boot medium.

In that case, it's sensible to give preference to non-removable devices,
so e.g. an eMMC is used instead of the SD-Card when booting from
neither, so adapt the scoring accordingly.

This could be further refined to make use of the eMMC non_removable
attribute, but this is already arguably an improvement.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/environment.c |  8 ++++++--
 include/block.h      | 11 +++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 62b8120cbd7d..d7f5f51cfc6d 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -104,10 +104,14 @@ static struct cdev *default_environment_path_search(void)
 		if (IS_ERR(part))
 			continue;
 
-		score++;
+		/* Prefer eMMC over SD if neither is the boot medium */
+		if (blockdevice_is_removable(blk))
+			score += 1;
+		else
+			score += 2;
 
 		if (boot_node && boot_node == blk->cdev.device_node)
-			score++;
+			score += 4;
 
 		if (score > max_score) {
 			max_score = score;
diff --git a/include/block.h b/include/block.h
index fc7a0a32fb2d..84c247cee3a3 100644
--- a/include/block.h
+++ b/include/block.h
@@ -82,6 +82,17 @@ static inline int block_flush(struct block_device *blk)
 	return cdev_flush(&blk->cdev);
 }
 
+static inline bool blockdevice_is_removable(struct block_device *blk)
+{
+	switch (blk->type) {
+	case BLK_TYPE_USB:
+	case BLK_TYPE_SD:
+		return true;
+	default:
+		return false;
+	}
+}
+
 #ifdef CONFIG_BLOCK
 unsigned file_list_add_blockdevs(struct file_list *files);
 char *cdev_get_linux_rootarg(const struct cdev *partcdev);
-- 
2.47.3



