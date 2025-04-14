Delivery-date: Mon, 14 Apr 2025 08:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQr-000X4m-0I
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQq-0002tG-CT
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eIUBjqZe+ePw6f6W9S35o3ZuzYxS4tRAJ7wiP/r05Sk=; b=r4EyZW2ZECP/GOCgxhmMODkyof
	I+unKAKuu5Hs14i9DsMi+KC0n8TwEvE/kngLnfpG6mma2E5KCJ7Jo6EU7CBxCB1U6aozXScKvpEE9
	Rz0rLUeSfA9egaCmho/jGcS25KZYJBkIIK6aDeGU8bSgoPAP36lDdguW0AAosAWTRdDIvg89ok0BL
	tngONTOTV/E7FlncALMC85UNmKp330wV4RVVWgR1YB9KILGt7+RjLVNozXMl2bBQxMDbJq1rjzg15
	l5pY/YUXLnGfFH5zEnzBvFYE/DMoVOQrs/i2LZEuZHg1VbKEjZIDYkV+VhOUU34AW60FSyytqx3qN
	eOKTaZvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQT-00000000p2M-1xmL;
	Mon, 14 Apr 2025 06:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000oso-3H7A
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002NF-Ix; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-000CnC-1I;
	Mon, 14 Apr 2025 08:36:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMI-00BUi8-0O;
	Mon, 14 Apr 2025 08:31:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:52 +0200
Message-Id: <20250414063152.2736649-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_817214_70461B81 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH 18/18] cdev: follow links in cdev_find_child_by_gpt_typeuuid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we can have a link pointing from the parent, follow it to make
cdev_find_child_by_gpt_typeuuid resolves to the correct partition.

This doesn't affect state-by-alias, because __of_cdev_find already calls
cdev_readlink, but that's an implementation detail that we shouldn't
depend on in cdev_find_child_by_gpt_typeuuid.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 3 +++
 include/block.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index d1e4e1f0f6b5..8f504abdfd8d 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -133,6 +133,9 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 {
 	struct cdev *partcdev;
 
+        /* Follow links to support storage-by-alias */
+        cdev = cdev_readlink(cdev);
+
 	if (!cdev_is_gpt_partitioned(cdev))
 		return ERR_PTR(-EINVAL);
 
diff --git a/include/block.h b/include/block.h
index 0ca6c6aff6e9..5ce3eb7d7838 100644
--- a/include/block.h
+++ b/include/block.h
@@ -112,6 +112,7 @@ static inline bool cdev_is_block_partition(const struct cdev *cdev)
 
 static inline bool cdev_is_block_disk(const struct cdev *cdev)
 {
+	cdev = cdev_readlink(cdev);
 	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
 }
 
-- 
2.39.5



