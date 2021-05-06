Delivery-date: Thu, 06 May 2021 18:27:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legqg-0002iv-9I
	for lore@lore.pengutronix.de; Thu, 06 May 2021 18:27:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legqf-00054r-DJ
	for lore@pengutronix.de; Thu, 06 May 2021 18:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xsjAVnRYCSKIPQ+dePemHBvXfDHdo8+veLAozb82ZTM=; b=G6vX5xOzvvJNCR
	H2efKGBuxRLvYhAibvLdJiDe7MWHsiWc44TyNuvgPPenDDVl47vOwFUf3wkyPG/Y6Vf7iMteZc8Fp
	cWkxsYHFdjksqsU2ZNgb1xOMccmpOLOW9a66TeOcae/6vDPmVLsaqNjOHJ5h8KPX0Gdc5HsZEaOiS
	4W+xoj24JWZmDB2M76sfPKaLe8rUfsAUE4bClm/4wXLh2RxQHu6tRVGlpfA7ZeIgWamCFDiuC/P++
	HwS5WoWOIkVuvqQ6qyW8vrUGoxjD7vmVVVp2EGzB648USfN5JL/v3EW0WE80NXJKgpCikUw2QI2Wn
	/02taRdBa0HaUXNAsGrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1legpc-004nZx-Kc; Thu, 06 May 2021 16:26:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpU-004nYc-KZ
 for barebox@desiato.infradead.org; Thu, 06 May 2021 16:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=gC3rP5SF6Z6DTEvV653BSsogkmNINqw0nuyD6WnROwY=; b=UKd3kUSGkhzTmG/HVkNGR/YLxl
 p4yCgvivSN0DDaDmlYG3pTOg26AkcgeJ8Cn/K/kNtcITa4630Z9FMYaMrREfeoj8aqSIcIn35+Hqb
 +sfXafBWtFuSUFhkEDL0Hygt/q5Vnt/ouiZhEG3TeUfVl/EZyR0yBrYoASbLZ7LsEN1WecqBGjK4o
 6LEcfhRZAvG0eJb0nQbXaoyT1WRqDfnEDfVTdsEpZSf8oBuuCVaU2FnA/YnHsQCk3ZLsiMt+orApo
 /c/Zwf4KLjGKvlyG3t0CaZKXa3ozdRM9VQAi4vXj7LBxTTT1GHHaH3AwlCha+aX1zgFVA4S0Fnz4l
 ++Riy+hg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpQ-006DJm-BP
 for barebox@lists.infradead.org; Thu, 06 May 2021 16:26:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0004of-Rk
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0003I1-JA
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 18:26:14 +0200
Message-Id: <20210506162616.11593-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_092620_432050_037D45F9 
X-CRM114-Status: UNSURE (   9.68  )
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
Subject: [PATCH v2 1/3] driver: add flag to check if cdev is an mci device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need this during mount() to check if the cdev is an mmc/mci main|user
hardware partition device. Later on we add the feature to pass
"root=/dev/mmcblkXpN" as kernel command line.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- dropped the !!
- renamed the flag due to v1 comments
- renamed the function to

@Ahmad
I didn't added your Reviewed-by since the flag name changed.

 include/driver.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 0d43b36148..d84fe35d50 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -496,6 +496,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
+#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 5)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
@@ -509,6 +510,11 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
 }
 #endif
 
+static inline bool cdev_is_mci_main_part_dev(struct cdev *cdev)
+{
+	return cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV;
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

