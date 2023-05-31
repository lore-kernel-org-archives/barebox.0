Delivery-date: Wed, 31 May 2023 15:24:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Lop-004I5l-4O
	for lore@lore.pengutronix.de; Wed, 31 May 2023 15:24:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Lom-0002cQ-1M
	for lore@pengutronix.de; Wed, 31 May 2023 15:24:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37H/zT4QltQUWMxHdNx7QWtUlShBJWK7FhhYk/skMRI=; b=uPsKvW7el52MI8P9kzNSBvzlXf
	skkcl/bims7dUhPcmVM4Q15ZUikqoreybcJqMoXkH1cvof19Mi+MHjPrwIqxwZyPiyC+1iY2LIbY5
	61W2RiS6Ql1EPNx3drvYbQPvWWQGV9t0WGjJ91aIq3CeWklOwHjUNTVSnEYcWMHF9ZePeY+pZTFTn
	uYM1v4sJKOrZ8qm4+tg7dt8XTRgFfhXjGN3o0NOjjjsWRJQNhrzN4ChsCGrQevu5/+ST5ssIQlDeF
	48Vih1hxGQSuFkq7MLFDcvtV18MMsIogAR0V/KOI9mtCwYkK0xSpV1g8U59Ud6RICsWt2w96+fHZx
	XiB1eg9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Lni-00HX9T-2U;
	Wed, 31 May 2023 13:23:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Lne-00HX8T-2X
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 13:23:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lnb-0002TX-Um; Wed, 31 May 2023 15:23:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lnb-0047a7-9k; Wed, 31 May 2023 15:23:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lna-0091uL-Cu; Wed, 31 May 2023 15:23:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 15:23:31 +0200
Message-Id: <20230531132331.2152268-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531132331.2152268-1-a.fatoum@pengutronix.de>
References: <20230531132331.2152268-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_062338_818478_6A59BE14 
X-CRM114-Status: GOOD (  14.62  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] commands: stat: add basic handling for cdev links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cdev links are not symlinks and cdev_by_name will always resolve them.
As the barebox stat command is a convenience for VFS developers, it's
useful to have the command identify links, so let's teach it just that.

There's no behavior difference between specifying -L and not. This
should be rather achieved by removing the concept of cdev links and
using symlinks instead, but that's some refactoring for another time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c |  3 +++
 fs/fs.c         | 14 +++++++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index fbcf68e81597..68a41ed20dd1 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -49,6 +49,9 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 
 struct cdev *cdev_readlink(struct cdev *cdev)
 {
+	if (!cdev)
+		return NULL;
+
 	if (cdev->link)
 		cdev = cdev->link;
 
diff --git a/fs/fs.c b/fs/fs.c
index 311571ba3088..68e6bf5735f0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -115,7 +115,8 @@ void stat_print(const char *filename, const struct stat *st)
 	struct block_device *bdev = NULL;
 	struct fs_device *fdev;
 	struct cdev *cdev = NULL;
-	const char *type = NULL;
+	const char *type = NULL, *typeprefix = "";
+	bool is_cdev_link = false;
 	char modestr[11];
 
 	mkmodestr(st->st_mode, modestr);
@@ -136,8 +137,12 @@ void stat_print(const char *filename, const struct stat *st)
 		path = canonicalize_path(filename);
 		if (path) {
 			const char *devicefile = devpath_to_name(path);
+			struct cdev *lcdev;
 
-			cdev = cdev_by_name(devicefile);
+			lcdev = lcdev_by_name(devicefile);
+			cdev = cdev_readlink(lcdev);
+			if (cdev != lcdev)
+				is_cdev_link = true;
 			if (cdev)
 				bdev = cdev_get_block_device(cdev);
 
@@ -156,6 +161,9 @@ void stat_print(const char *filename, const struct stat *st)
 			printf(" -> <readlink error %pe>", ERR_PTR(ret));
 		else
 			printf(" -> %s", realname);
+	} else if (is_cdev_link) {
+		printf(" ~> %s", cdev->name);
+		typeprefix = "cdev link to ";
 	}
 
 	printf("\n");
@@ -166,7 +174,7 @@ void stat_print(const char *filename, const struct stat *st)
 		       (u64)bdev->num_blocks, 1 << bdev->blockbits);
 
 	if (type)
-		printf("  %s", type);
+		printf("  %s%s", typeprefix, type);
 
 	fdev = get_fsdevice_by_path(filename);
 
-- 
2.39.2



