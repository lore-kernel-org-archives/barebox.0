Delivery-date: Tue, 09 Dec 2025 13:52:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCK-009Yso-0R
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCJ-0001Gx-Ht
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zfn7EBRskEbphvVFKpZa4MdE6Db0ch41ehS+Q1uLpOE=; b=Jy0Bdb3IIQJ6atjQXoQ4YzSCUN
	a80bjXoiwbu7XoYURuVTO0eGv5IPbZcBWMZvVfipoLKYtqOeNfD3CiVaCI5pPPunLVPWYXvhPBXhj
	di4SiE7keMS+qQ3YBwK5fjA2y/bSmrzKDbQKMUI8KnBO1H8+yzXF7hWNWpmo/mJjrYlMJAb+VRIz7
	OFeJVDQhT9lWCxIMjVCMJrqqRLrDKVGwCwAc9vtsm4KJvPjDLouxWtEUEqFmi2L6sdBTbxu55ZBwF
	qkKDxBTH02HW/wy+LdcBZHQeQffqoymlG2k49DnvNle/JTPC5C/mp34W5S4z3uTBC3IPw1UkgkOiF
	2Rb2Y2gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBo-0000000EHPA-09Z5;
	Tue, 09 Dec 2025 12:51:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBk-0000000EHL5-3uDU
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000oy-Fx; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mui-0R;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-04Fo;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-9-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1118;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ldQ9am79MpYumgWMKcqJvL9gzVsLfKqCSBFyITM86Cg=;
 b=cQ2hiHKoj4Z0Hn23+ExJvVCQSkd+SGwIFTJ2tsvoUuhMRrGsES0oUMrn+q8OIasjzhaoevDgf
 wOy4PTDVQAMBnBwvrx/gGZCix1KtnJmCFk9wb+TsVdqN5TJZ/0Cf/9o
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045132_979418_ECCE34C1 
X-CRM114-Status: GOOD (  10.43  )
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
Subject: [PATCH v2 09/13] fs: include cdevname in struct stat
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
index 9e2c95c6352cc63400f997bb8de53af44f4741cf..9022287dff2f4959f64eac76c544634b3978d238 100644
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



