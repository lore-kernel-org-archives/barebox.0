Delivery-date: Thu, 27 Nov 2025 10:20:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAa-005NYM-0L
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAZ-0003YA-5S
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f/VvqqR3bqPUnfWYL0Xb1oz6sRVJWKMqdnFTw+Oldzk=; b=VAtJHq26caalTSiK2L0RJNhkt9
	594TSvGzeWE/KTDiGkDEvr5QAPT/mxuQeFloT/WREgarlH2Th7U692USilg4DVhivt3hGNaaqHiQH
	3x58KPS3KzaxUSsegMhvkpXsdME/xdJMT0s1VFBRbV2FmegaN7dF9IDwg+OAy3R1qZWWCXvxk+4Fh
	omP4UkdZR3baKPDNkUFdPLS40oI4HBMjQqDLF70i6Lex+g2bzG8XODrd63EdEkDluEUPN+3vItUTO
	XK2BurWVALXif4IfG2VEG1dfuZL9vGJyfiRFaacE4q6aFRu63MG/M40Fe4EGZst1uQge8dJ5D6/Cr
	KF4JRHxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9z-0000000GGiL-37AJ;
	Thu, 27 Nov 2025 09:19:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9v-0000000GGfJ-3UB3
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035K-Bq; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-002lPH-03;
	Thu, 27 Nov 2025 10:19:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1KHk;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-7-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=1118;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6ZP4/0Co3SBVCUdbkyLTJh9NkfYepWMd9FDfEHJlhC0=;
 b=8kI32oSdFjzSUccr4r+cbcNLzi3RaKyV+CqYaouClTlflznynpJz9WbbdwcRGHrWehlvx2uhW
 83FMlQ+BvZmBsjwxaNHj5KhPz1MQoWrBx+vQNTy6JC8OqAxRZs3NewB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011927_876636_722FAF52 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] fs: include cdevname in struct stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux struct stat contains the major/minor numbers of the underlying
device, consequently we put the cdev name into struct stat.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c              | 1 +
 include/linux/stat.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index b96393e2301e2d8a622e319e0033953399b4e989..41cdaf5070798388aa989d16e7bf2ace081b4a2b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1117,6 +1117,7 @@ static void stat_inode(struct inode *inode, struct stat *s)
 	s->st_mode = inode->i_mode;
 	s->st_uid = inode->i_uid;
 	s->st_gid = inode->i_gid;
+	s->st_cdevname = inode->cdevname;
 }
 
 int fstat(int fd, struct stat *s)
diff --git a/include/linux/stat.h b/include/linux/stat.h
index 6ee05b52873f47e5d17a4387829187512be29ea8..84b6484a1f2149d1f2d770f0f11bf0ae0ef63744 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -55,6 +55,7 @@ struct stat {
 	unsigned short st_mode;
 	unsigned short st_uid;
 	unsigned short st_gid;
+	const char *st_cdevname; /* barebox specific */
 	loff_t  st_size;
 };
 

-- 
2.47.3



