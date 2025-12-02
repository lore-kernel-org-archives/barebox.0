Delivery-date: Tue, 02 Dec 2025 10:23:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbj-0077FW-2b
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 10:23:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbj-0004p4-8L
	for lore@pengutronix.de; Tue, 02 Dec 2025 10:23:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C7J6AQBnS16TsKOb5a7Fri6Ubj72H69H2cavp1Hlfmk=; b=vEAvssy+DyRS3clSDCQtSbAvfq
	D2xMwZ0DxEpEYCbiZc8jA8/Vkk5bdAvoMZ7vrrQbGlAGolpUVYkWn7148xbLbwc2as72rDY/mqaet
	Dxp24r8pMqId/bNJuY+li9gqWHTEClyWjRIa2NBtkyL/gVqEy04DBDhsQmyYvH7H9bCwMWBWD6M79
	rFprDohH1hmnnpNbdjocbJN4Puf1g2w09se1Y9lq4F6T5bZrakjnL00f17GPUXhD2F/8L5iKN3FKH
	wng5NglApgqPP3b2dRtPTfefJqNxydlTjfGt4H0LoeoIf+QsUf1scELWldbGdW0X7iDGC7C33koY8
	YqDOJsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMbK-000000056AB-1UP5;
	Tue, 02 Dec 2025 09:23:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMb6-0000000567f-0UyJ
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 09:23:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQMb3-0004eJ-C2; Tue, 02 Dec 2025 10:22:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQMb3-003aaj-0b;
	Tue, 02 Dec 2025 10:22:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQMb3-00000006ZX4-0Edy;
	Tue, 02 Dec 2025 10:22:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Dec 2025 10:22:56 +0100
Message-ID: <20251202092256.1565823-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_012300_175430_9DF7BB56 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fs: fix automount when last filename component is a automountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When opening a directory in openat() as indicated with the O_DIRECTORY
flag, pass the LOOKUP_DIRECTOY flag to filename_lookup() to make sure
the target is actually a directory. By doing this we can skip the check
afterwards.

filename_lookup() only triggers the automount on the last component when
the LOOKUP_DIRECTORY flag is set, so with this change when /mnt/mmc2.3/
is a automountpoint a

stat /mnt/mmc2.3/

now triggers automounting. This also fixes tab completion with
"ls /mnt/mmc2.3/<tab>" which previously didn't trigger autmounting.

Fixes: a1da0079d1 ("fs: implement opendir in terms of fdopendir")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 528299e039..d884726187 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2680,7 +2680,12 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	if (!(flags & O_CREAT) || error == -EEXIST) {
-		error = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
+		unsigned f = LOOKUP_FOLLOW;
+
+		if (flags & O_DIRECTORY)
+			f |= LOOKUP_DIRECTORY;
+
+		error = filename_lookup(dirfd, getname(pathname), f, &path);
 		dentry = path.dentry;
 	}
 
@@ -2710,9 +2715,6 @@ int openat(int dirfd, const char *pathname, int flags)
 		}
 
 		flags |= O_DIRECTORY;
-	} else if (flags & O_DIRECTORY) {
-		error = -ENOTDIR;
-		goto out1;
 	}
 
 	inode = d_inode(dentry);
-- 
2.47.3



