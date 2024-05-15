Delivery-date: Wed, 15 May 2024 10:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79eA-00FWlM-2O
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79e6-0000uu-VD
	for lore@pengutronix.de; Wed, 15 May 2024 10:05:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ei0obQxnZQNc3iKhHpXfKdDFOM/tmRInZVWR8K4dT5g=; b=kNo9+rSs/yZiNW9fVjmG5pPoyz
	JQl53bKBMNR84GBeK2CuQytDNbSqj0MT/EY1QAD2I86iD5O10x7LR8w+bv/+6hjXYTZTi6nYZfzW5
	HpMaw2+j3CRfaKlaizpktkOQviZ7GHyTpkIV58b7JQx+58I+JgBV3woy1J8ScheIBG9Bvvyv6pkxo
	p35HIoCoUq4eU+8GWFYXDlYsL13TYA3Qm8qKZ5j5D3ymDQrdBRw7cUbIWfswyrdRDcadwtWUu6kgq
	paQDPXXTJ/VL5vnSTM5JSiulqmVsypvTI7k+d44iguT6savHiLF4h6AIWBzBJ8w+7aTJd4rzgKGGz
	Ne5+9OPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dW-00000000suB-0dA7;
	Wed, 15 May 2024 08:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dT-00000000ssH-0B55
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-0000dS-Rb; Wed, 15 May 2024 10:05:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-001UtB-Ek; Wed, 15 May 2024 10:05:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-00H1E8-19;
	Wed, 15 May 2024 10:05:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 10:05:05 +0200
Message-Id: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010515_113281_73326A0E 
X-CRM114-Status: GOOD (  11.40  )
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
Subject: [PATCH master 1/3] cdev: return error code from cdev_close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_operations::close can fail and thus cdev_close should pass along
the error code to the users instead of discarding it.

Do that, so users like devfs close() can start propagating this error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c  | 11 ++++++++---
 include/driver.h |  2 +-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 376c62be9eab..21e5c2dc969a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -224,12 +224,17 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
 	return cdev;
 }
 
-void cdev_close(struct cdev *cdev)
+int cdev_close(struct cdev *cdev)
 {
-	if (cdev->ops->close)
-		cdev->ops->close(cdev);
+	if (cdev->ops->close) {
+		int ret = cdev->ops->close(cdev);
+		if (ret)
+			return ret;
+	}
 
 	cdev->open--;
+
+	return 0;
 }
 
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
diff --git a/include/driver.h b/include/driver.h
index 5a3e46e99e14..3401ab4f07f4 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -529,7 +529,7 @@ struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
 int cdev_open(struct cdev *, unsigned long flags);
 int cdev_fdopen(struct cdev *cdev, unsigned long flags);
-void cdev_close(struct cdev *cdev);
+int cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-- 
2.39.2



