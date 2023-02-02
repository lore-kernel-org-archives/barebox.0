Delivery-date: Thu, 02 Feb 2023 15:26:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaXz-00BTeG-H3
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 15:26:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaXx-0002Kh-0d
	for lore@pengutronix.de; Thu, 02 Feb 2023 15:26:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EDSIFxysKZfEYTURo7kEPtNUOaSO0K3moKFuuh5Qo+U=; b=QkBYUGaD2ULvx/bFrlKUM1ovYa
	jpg5AHSAET7xBLcT1RBBOml/jKEOWCgAvsHJGSS++kip2eESFeVLpLToz6wHAlN++dRw688V6rl6L
	2/JUBlf9MQpGOoF2fnzU65yGRNpPjlnQqYYsQdTwmCndaSsdPVwddWxF1YVL/RsoWUHE4Z+1xOiJs
	Dzk0PRBXm4Tvvy5E6oll6/CXiDix+KLaNDNbvhWkQs0o075gKMMzfu8/rub/4gCn0tHuEseuSTY8P
	I91XWTANGJ1WLMWvTNjasu85mPNaKJvXK5+dGqBUyfUrdHb3P1PwtU/I5JKHLTpjxz6A77lVqxykX
	yc0fQf6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaWn-00G9Hr-Ar; Thu, 02 Feb 2023 14:25:29 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaWi-00G9GK-10
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:25:25 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 57BEFFF80B;
	Thu,  2 Feb 2023 14:25:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu,  2 Feb 2023 15:25:12 +0100
Message-Id: <20230202142512.3551195-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_062524_398206_607C21CF 
X-CRM114-Status: UNSURE (   8.19  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: remove unused members of struct stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some members in struct stat are never written, so drop them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c              | 4 ++--
 include/linux/stat.h | 3 ---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index c463466e1be0..4837c4b701bc 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -160,9 +160,9 @@ void stat_print(const char *filename, const struct stat *st)
 
 	fdev = get_fsdevice_by_path(filename);
 
-	printf("\nDevice: %s\tInode: %lu\tLinks: %u\n",
+	printf("\nDevice: %s\tInode: %lu\n",
 	       fdev ? dev_name(&fdev->dev) : "<unknown>",
-	       st->st_ino, st->st_nlink);
+	       st->st_ino);
 	printf("Access: (%04o/%s)\tUid: (%u)\tGid: (%u)\n",
 	       st->st_mode & 07777, modestr, st->st_uid, st->st_gid);
 
diff --git a/include/linux/stat.h b/include/linux/stat.h
index 2bdf3ec9c96c..fc3dd222a673 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -49,11 +49,8 @@ extern "C" {
 struct stat {
 	unsigned long st_ino;
 	unsigned short st_mode;
-	unsigned short st_nlink;
 	unsigned short st_uid;
 	unsigned short st_gid;
-	unsigned short st_rdev;
-	unsigned short __pad2;
 	loff_t  st_size;
 };
 
-- 
2.38.1



