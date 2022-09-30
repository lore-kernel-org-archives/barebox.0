Delivery-date: Fri, 30 Sep 2022 17:46:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIDy-001XjT-1Z
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:46:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIDw-0001CZ-3m
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:46:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ECMtQF2YK//ZOzhjbA5yGMUWw+3HwoQbU10FVsVEUlc=; b=gZ/AOKMPOdXE+o/zHo1sa1BNFt
	U1OKYTj9gAsfaF1C/V0JAMfltdQYN5Nkx6upwci2mD2jaCSRm8t6x2KdqysWOxNCWrKr+YVYZF25I
	GQXR3ic8CoH6keEPnHoVkyV0RxmHuXz7Kel7Nj3BqjSV4aHkzwqFRIHGPAQFQdPw3T5RcI/uQP+uE
	nL8vo5FaziVO7u5sIXkBz5+inHdZM6LC15ArqHjwVxnkzgfawNy8WxR5sEztrY3210VxYlB5zU5xC
	KIlTWFQWKSKonStpD1I+9G0UnmIULs6ENexH7BfuVdVXPQ0Vj8953glqOEUp94rfOf1jMGGqSrAVr
	aPIe3LqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeICV-00AL99-2a; Fri, 30 Sep 2022 15:45:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI8G-00AIV7-Jj
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:40:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI8F-00083K-Af; Fri, 30 Sep 2022 17:40:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI8G-003pNd-3j; Fri, 30 Sep 2022 17:40:54 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI8E-0039hx-0w; Fri, 30 Sep 2022 17:40:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:40:53 +0200
Message-Id: <20220930154053.752237-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_084056_673511_5C533EBE 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: export file system detection functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This will come in handy when using barebox as EFI loader, so give it a
more generic name and export it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 4 ++--
 include/fs.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a314a49b2db7..95813b6089c7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -756,7 +756,7 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
 }
 EXPORT_SYMBOL(register_fs_driver);
 
-static const char *detect_fs(const char *filename, const char *fsoptions)
+const char *fs_detect(const char *filename, const char *fsoptions)
 {
 	enum filetype type;
 	struct driver_d *drv;
@@ -2980,7 +2980,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 			device, pathname, fsname, fsoptions);
 
 	if (!fsname)
-		fsname = detect_fs(device, fsoptions);
+		fsname = fs_detect(device, fsoptions);
 
 	if (!fsname) {
 		ret = -ENOENT;
diff --git a/include/fs.h b/include/fs.h
index 9ea522dc2cc3..b501db38addd 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -179,4 +179,6 @@ static inline const char *devpath_to_name(const char *devpath)
 	return devpath;
 }
 
+const char *fs_detect(const char *filename, const char *fsoptions);
+
 #endif /* __FS_H */
-- 
2.30.2



