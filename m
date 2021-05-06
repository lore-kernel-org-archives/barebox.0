Delivery-date: Thu, 06 May 2021 13:25:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec80-0001yy-KW
	for lore@lore.pengutronix.de; Thu, 06 May 2021 13:25:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec7z-00070E-T6
	for lore@pengutronix.de; Thu, 06 May 2021 13:25:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZiJwZTCo0Zg1IL9D9DeVBsOhpB4Py+kBaLCmPKt8G24=; b=OkbEt/nbxPVzHO
	i6HXXcoqVIJa/ISFDIz9Wz5LLfsCudxN1wzk6ubT0v5tOUkNi+thPyCZo2v0nuk+xvCd/aOVFzFfl
	yLmfRIwT8PrxNffEoOSVhGcHWRDiP0HniAJ+jdNwvrC7EQGORpteongjF0VoensVLk1BWIj/mmf5j
	G9L9XBLQ2WJEQfzEOi5F+e1RJmaL5BpI8ayipj71l7wHg5X7SLXSu9jml5Q6Tzd8n8SwmvJie1Klz
	mdZrBpo5Ie96FcbbIqOk1BnE6zYa7bg27b+3k41vnsu1F6wNvt7XOqP0pM/9WLmx5qcSA1vucUYLx
	Zebj6ZJ9s1MhtmkCecoA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec75-0047Ll-25; Thu, 06 May 2021 11:24:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5R-0047Cz-4L
 for barebox@desiato.infradead.org; Thu, 06 May 2021 11:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=PvPmm1O2NQ9npS/iYZDxUtYBDH5gIg+hUlT2+YDIHQU=; b=nePaZxxuuI8UUXHNxCPpmhjxbn
 ye4lWxcI02DIpEvJYZVLCDl40ZRP75jSEgHSrHnWN2SPj8etNnuftuXBTu59z1QlVyhcyzM+o3wty
 aHNJdrTeocfBiGPc0orR7Ue01uplXUFKZxLhI3ydBKgQCO2mcNFsN6dmX5g0n/kdMLdwKS8jYTx3i
 yecTkgFIecGtQPnWD/hosXmEaGV5v6Lv3zI4xi71NfxakaOwDULMRqnCy7WP6Ni7vn993gOr7oq6J
 VTwtH8AXYjkZd+oHVys9ypBB+jXHe3MXi8sHRYc1apPwIgujrB/YqgRDOu0XZaFkD9l0/WR7bv3b3
 lNnluhEQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5N-005z4u-Kd
 for barebox@lists.infradead.org; Thu, 06 May 2021 11:22:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5J-0006oZ-Qq
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:25 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5I-0000Mc-FO
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 13:22:17 +0200
Message-Id: <20210506112219.27114-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_042229_700280_F09D8909 
X-CRM114-Status: UNSURE (   8.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] driver: add flag to check if cdev is an mci device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need this during mount() to check if the cdev is an mmc/mci device.
Later on we add the feature to pass "root=/dev/mmcblk*" as kernel
command line.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/driver.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 0d43b36148..d381aaf78d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -496,6 +496,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
+#define DEVFS_IS_MCI_DEV		(1U << 5)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
@@ -509,6 +510,11 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
 }
 #endif
 
+static inline bool cdev_is_mci_dev(struct cdev *cdev)
+{
+	return !!(cdev->flags & DEVFS_IS_MCI_DEV);
+}
+
 #define DEVFS_PARTITION_APPEND		0
 
 /**
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

