Delivery-date: Tue, 09 Dec 2025 14:06:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPu-009Z2i-1J
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 14:06:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPt-0003i2-Pj
	for lore@pengutronix.de; Tue, 09 Dec 2025 14:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aTxZSdr8Or148foumfLSpCcx6h3o4K/fBNpQuCqSG7g=; b=u2YkrVOrOKNO+4S2eguuV6QkvK
	suCYhfMlYC0ozgyg301k563m9DytAJg50IA5UH18dsOpdlzwu2fSKRsYq6Hnm0PK1/tBSGfoNIC97
	uEEaTykWXr9jwLwielsv1iSXMtWT2DsWNFvbuPkMYnd0XtVqLfbPBRTTA/X6bozVPIv/6dRkREjnX
	F9Zf8pOgBBQEYBuCvrMpnlWpAvNz6ehwi/sj9/UCoPz7MYaCWlsWuRcoYtbHud8o92DT5OYyL9T5R
	mzFh5PidD83iGTrTP1GI/m1uCVn8EhAZ4is84YyU1eV9D1gB21HpD5xgttEmvfPOw+5qD1mqPCaK8
	Rn/xKv/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPR-0000000EIcG-0r97;
	Tue, 09 Dec 2025 13:05:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPP-0000000EIb7-1jcr
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 13:05:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPO-0003Wp-0I; Tue, 09 Dec 2025 14:05:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPN-004n1N-2c;
	Tue, 09 Dec 2025 14:05:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-04uh;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-10-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1864;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YOllOQdg5nlNBVrZmt8vU9kmxg2AnSKCNoHLSlGxgUQ=;
 b=fdpFGMmbeDYsNR9k/GgBSuBcbGkNe7EcRqspi901B0h8BNaIvHmASZgqgRC2zY14YaxK/WUvH
 l3fYeihnOv4BllmIMk9ai8/7g8s3TFulyGfSjB3AeCpHXIvihaNL4Qm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_050539_479198_FC18E664 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/13] fs: stat_print: get cdevname from stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In stat_print() we have to take the filename component of the input path
and retrieve the cdev from that name. Now that we have the cdevname in
struct stat we can simplify this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 25 ++++---------------------
 1 file changed, 4 insertions(+), 21 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 9022287dff2f4959f64eac76c544634b3978d238..30fe5db4d2800ebfdc0c44603caea15bdff807aa 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -137,7 +137,6 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
 	struct fs_device *fdev;
 	struct cdev *cdev = NULL;
 	const char *type = NULL, *typeprefix = "";
-	bool is_cdev_link = false;
 	char modestr[11];
 
 	mkmodestr(st->st_mode, modestr);
@@ -152,23 +151,10 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
 		case S_IFREG:    type = "regular file"; break;
 	}
 
-	if (st->st_mode & S_IFCHR) {
-		char *path;
-
-		path = canonicalize_path(dirfd, filename);
-		if (path) {
-			const char *devicefile = devpath_to_name(path);
-			struct cdev *lcdev;
-
-			lcdev = lcdev_by_name(devicefile);
-			cdev = cdev_readlink(lcdev);
-			if (cdev != lcdev)
-				is_cdev_link = true;
-			if (cdev)
-				bdev = cdev_get_block_device(cdev);
-
-			free(path);
-		}
+	if ((st->st_mode & S_IFCHR) && st->st_cdevname) {
+		cdev = cdev_by_name(st->st_cdevname);
+		if (cdev)
+			bdev = cdev_get_block_device(cdev);
 	}
 
 	printf("  File: %s", filename);
@@ -182,9 +168,6 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
 			printf(" -> <readlink error %pe>", ERR_PTR(ret));
 		else
 			printf(" -> %s", realname);
-	} else if (is_cdev_link) {
-		printf(" ~> %s", cdev->name);
-		typeprefix = "cdev link to ";
 	}
 
 	printf("\nSize: ");

-- 
2.47.3



