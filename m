Delivery-date: Mon, 13 Sep 2021 10:32:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNj-0006M8-6A
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 10:32:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNi-00010s-3g
	for lore@pengutronix.de; Mon, 13 Sep 2021 10:32:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jkOkPsfhRsdoWWFElpRYiLFrff3b1LYxBaf/hjlcCIk=; b=ym9Q/7ribOZZ5f
	bwyfklYXRofobOJoJJlgY6r0hLLfIyfkBK8g1uVKxlmmNp2nyNgXow+15c4hVqSjIObQm8o0y9JUX
	ZKgYWJQBIvKyHBKbXfql+s5muISXiTjTwf6IUnf4vIRnT1c5p+HLd80QnkDp9rwt53X/XJOTvnWns
	tY7mKePlc4cBw/l5NCWWO/F8xWKwMhbYX5tM99aPJbajiEgCePUMMl59XAZDmH0NlvFS0sGLGKFHK
	06UJ+kfhIwjfNz4a1pZkLP7qnbPG7HdeNVh561AAJ8kNy7/ELzoxwbMqI2d5XNwCXiH3O10aXxIPb
	0bdvTtmvfkk9ocWrCdmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhMI-000lYF-UJ; Mon, 13 Sep 2021 08:30:35 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhMA-000lVb-Ih
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 08:30:28 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B0E34100006;
 Mon, 13 Sep 2021 08:30:23 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 13 Sep 2021 10:30:19 +0200
Message-Id: <20210913083019.364599-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_013026_801139_15EAEF4F 
X-CRM114-Status: UNSURE (   7.43  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: remove unused struct fs_device_d::parent_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The parent_device member is unused anywhere, so drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c      | 1 -
 include/fs.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b6431227d60c..e6fd57b8ac97 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -813,7 +813,6 @@ int fsdev_open_cdev(struct fs_device_d *fsdev)
 	}
 
 	fsdev->dev.parent = fsdev->cdev->dev;
-	fsdev->parent_device = fsdev->cdev->dev;
 
 	return 0;
 }
diff --git a/include/fs.h b/include/fs.h
index 5811199c0161..cd5eb571e08e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -101,7 +101,6 @@ struct fs_device_d {
 	struct cdev *cdev;
 	bool loop;
 	char *path;
-	struct device_d *parent_device;
 	struct list_head list;
 	char *options;
 	char *linux_rootarg;
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

