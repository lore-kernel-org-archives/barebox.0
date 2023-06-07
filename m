Delivery-date: Wed, 07 Jun 2023 14:08:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryC-00EJUV-Vj
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry9-0003zm-TT
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JBPpuNChKi39tMQhPBQ+u1cnLl3c/bySC7qXR6vWMo4=; b=zM0mC78s1uErotkmS9As6WOZ4n
	9Bf1VQzd6geW+sYAI2tPnG46ooOztBzY+sB6EuMd33giFcIkHr+VyRqPM9hzoGqq2afKHRuRrtaKV
	4rI945Vwf2iRleG9K77Tti2xEvupkKAIg02BLUtgrIZLjKQxP2nAG5iMPqfRQMwRkbha/HFxyD/sA
	NP9VsQEGmTMwhHL+G3RHDaZS4dXLtbq7NftdCfoBNcnlLE7NUjTxURQp05amPz0V5WrnfNUSL+q3z
	a7T6uAGVS2ldEhdl+CpwjK6phDd9BBW7VhXSQkxNhaTA1jiwarRtKfM7qYvH69yEgK3Id+CksybZ6
	a3S+pKxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwq-005ks6-3B;
	Wed, 07 Jun 2023 12:07:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwk-005knQ-2H
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-00031C-LQ; Wed, 07 Jun 2023 14:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwg-005jjt-R5; Wed, 07 Jun 2023 14:07:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwe-00CyMR-Ur; Wed, 07 Jun 2023 14:07:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:06:58 +0200
Message-Id: <20230607120714.3083182-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050726_785957_C436D226 
X-CRM114-Status: UNSURE (   9.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/19] cdev: fix for_each_cdev macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The macro parameter 'c' was never used, instead hardcoding cdev.
It worked so far anyway, because all users of for_each_cdev used cdev
as the argument. Fix this.

While at it, surround cdev with parenthesis to avoid associativity
issues.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add parenthesis around cdev (Ulrich)
  - add Marco's Reviewed-by
---
 include/driver.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index d33e0fcbccc9..66ae52d0004c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -566,8 +566,8 @@ int cdev_truncate(struct cdev*, size_t size);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 
 extern struct list_head cdev_list;
-#define for_each_cdev(c) \
-	list_for_each_entry(cdev, &cdev_list, list)
+#define for_each_cdev(cdev) \
+	list_for_each_entry((cdev), &cdev_list, list)
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
-- 
2.39.2



