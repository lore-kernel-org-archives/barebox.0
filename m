Delivery-date: Mon, 20 Apr 2026 09:57:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjVu-00EGj4-2S
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 09:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjVu-00016p-7X
	for lore@pengutronix.de; Mon, 20 Apr 2026 09:57:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PQLuFDP7xEbbmoyhQQf2an7JyPAkFMUZvdinD3AJdFI=; b=dT6uZnIvhEy6oZ
	TB56PBgDBLDFIkzD58jmbecnbkMCNpVGG6nbwkwxvumst0RsfyurNmW8ODo46YpfzvXtUv2GpdS64
	wuNtyIskqVPqwzjIlpybLthH4z1tf3V1pasiS/Noa43ZEct7lsOA4VMquwYeJx7eoR9uUV/leu7KS
	bygoUU0Bir1auyEIbhqHEHFMlbzBCLr1hvjcom9uADBmHgA1T0Nqarcu90020EyeudxKhHiQes1XM
	Y5pJJnETVQOJoCO9ZWur32UwaRLEbjmvSry7q1rfpxeIGCulqiw2CHOf4P2XwifvtUNGf2j9W5Nvb
	BTOEbV+zUQ3wSqMoZlCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjVN-00000006ZKT-20FD;
	Mon, 20 Apr 2026 07:57:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjVK-00000006ZJf-2NaR
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 07:57:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEjVH-00011P-Ia; Mon, 20 Apr 2026 09:57:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEjVH-006IPL-1D;
	Mon, 20 Apr 2026 09:57:11 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEjVH-0000000HAMG-11yM;
	Mon, 20 Apr 2026 09:57:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Apr 2026 09:57:08 +0200
Message-ID: <20260420075708.4090183-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_005714_736695_623EA435 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fs: set linux.bootargs.rootopts only when existing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Not all filesystems specify rootopts. Only create
linux.bootargs.rootopts when it's non NULL. Otherwise dev_get_param() on
this returns the literal string "<NULL>" which then shows up in the
Linux bootargs.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a562fe0fc6..5ca98ec127 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1244,8 +1244,9 @@ void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, con
 
 	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.root",
 			    "%s", fsdev->linux_root);
-	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts",
-			    "%s", fsdev->linux_rootopts);
+	if (rootopts)
+		dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts",
+				"%s", fsdev->linux_rootopts);
 }
 
 void fsdev_get_linux_root_options(struct fs_device *fsdev,
-- 
2.47.3



