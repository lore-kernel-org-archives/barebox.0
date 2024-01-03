Delivery-date: Wed, 03 Jan 2024 11:17:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJg-001mZ6-1x
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJf-0003Dx-Hy
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3o8UdXSkbxjBW2Sv0hvSAAuyoyf6cgxJXID+EhujmOE=; b=2p10LtkQAc+BNHlwilVuq2qrqh
	YqyO8w91mbG2N579beO8YWKWu1fvSOc3uFwEr1quMiFq0UwUvFJhI2FPjr8k26+YAxrbbUp+r329e
	/NAbKNDTK9AMchwc9rt9YkE+3PcG1jDg3nbnstlpkKfP0pcEyF2UsW+uaoWexSN+Wo3C/AqXpRg1a
	oILznTTKXZcbJ298i5dfpRjfhtYXDrWCcgOctGa8Ky/EUSXzRqXNWWit7bHs+vaW6WtGfFnZSoUI2
	raXddsKEw5RxJ2CErvY60T/ku3NZmYGlP2KpKiT5vYwUVB81LpWZRezWTdMCxHxoZlKahU8Xb2dRw
	t78kZeEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIe-00AMQc-2N;
	Wed, 03 Jan 2024 10:16:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOS-1R
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002hn-7Z; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-0005w5-RB; Wed, 03 Jan 2024 11:16:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-2R;
	Wed, 03 Jan 2024 11:16:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:16:24 +0100
Message-Id: <20240103101629.2629497-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_478562_69A1509F 
X-CRM114-Status: GOOD (  14.12  )
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
Subject: [PATCH 1/6] cdev: make __devfs_add_partition's last argument optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Follow-up commit will expose __devfs_add_partition after rename to more
users. Most of these don't care about the last parameter, so accept
NULL to indicate that it won't be read back.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 4e16d55e367e..6abf5eacc8dd 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -478,6 +478,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		const struct devfs_partition *partinfo, loff_t *end)
 {
 	loff_t offset, size;
+	loff_t _end = end ? *end : 0;
 	static struct cdev *new;
 	struct cdev *overlap;
 
@@ -488,7 +489,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		offset = partinfo->offset;
 	else if (partinfo->offset == 0)
 		/* append to previous partition */
-		offset = *end;
+		offset = _end;
 	else
 		/* relative to end of cdev */
 		offset = cdev->size + partinfo->offset;
@@ -498,13 +499,15 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	else
 		size = cdev->size + partinfo->size - offset;
 
-	if (offset >= 0 && offset < *end)
+	if (offset >= 0 && offset < _end)
 		pr_debug("partition %s not after previous partition\n",
 				partinfo->name);
 
-	*end = offset + size;
+	_end = offset + size;
+	if (end)
+		*end = _end;
 
-	if (offset < 0 || *end > cdev->size) {
+	if (offset < 0 || _end > cdev->size) {
 		pr_warn("partition %s not completely inside device %s\n",
 				partinfo->name, cdev->name);
 		return ERR_PTR(-EINVAL);
@@ -558,7 +561,6 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name)
 {
 	struct cdev *cdev;
-	loff_t end = 0;
 	const struct devfs_partition partinfo = {
 		.offset = offset,
 		.size = size,
@@ -570,7 +572,7 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 	if (!cdev)
 		return ERR_PTR(-ENOENT);
 
-	return __devfs_add_partition(cdev, &partinfo, &end);
+	return __devfs_add_partition(cdev, &partinfo, NULL);
 }
 
 int devfs_del_partition(const char *name)
-- 
2.39.2



