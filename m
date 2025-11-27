Delivery-date: Thu, 27 Nov 2025 10:20:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAY-005NX0-19
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAX-0003WU-4V
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kAPRqrTOJEgpZAIQiNW2pqB89+xLftpx4b6iv/WXOaw=; b=NQtzwjiY+kdngRioV6OVOEMoV+
	MoxhsK4VqekU0fzAysGtEjCqW+YH00O2AFbcbkrPcFIE1/21jYFl88sT/ya2ZdDVLuqN0VUv/1uFE
	CTFbqxw1yz8XeVLq6CAVfqLPOQypAHf+c4GxBXprza5TJ1FFiWv/IS3Nltx46k9bJ3V681Hb+Wvtk
	1vdWrb69heicfM10kUDkDiNPTOlaIFEEw5SnZpm85LEZvn4cc0ib/p9dw8VHh71JFpu+a5ZXchkZt
	Fd5fwWiKoTV/ePmQvM5Xi+gBgfy+EuRfjJlKGBRIP0OL4ADlqZvs5DTB3s/tdCmjxDcEm4O8FgEnx
	zKQrIR7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA6-0000000GGoD-0Bpz;
	Thu, 27 Nov 2025 09:19:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA3-0000000GGkV-2zfp
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035L-AQ; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPE-34;
	Thu, 27 Nov 2025 10:19:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1Fkr;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-5-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=1050;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MmP4YIaP+M79hYzrB41L6DcVYabolFaT44fq0yBBPbg=;
 b=vOKLOZ7R20gZ8JsaEWj7tPKa+lMjLTk557UMw+LfUt1mrZ9vqJqlcyNt+I91l6sQLFfprVkwj
 SWGPkiSIA7pCRzoYv+AxVAjkp4a5v/LL9USumga9qwZkYZeBNpGOYmx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011935_768327_4C4EC840 
X-CRM114-Status: GOOD (  12.34  )
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
Subject: [PATCH 05/10] fs: fix st_size for device files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux device special files have zero size, but in barebox the
device files traditionally have the size of the underlying device.
Initialize struct stat::s_size with the cdev size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index bfcfadff7fa76de17c68a0dca4843aa02cb62b6d..b96393e2301e2d8a622e319e0033953399b4e989 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1100,11 +1100,23 @@ EXPORT_SYMBOL(readdir);
 
 static void stat_inode(struct inode *inode, struct stat *s)
 {
+	if (inode->cdevname) {
+		struct cdev *cdev;
+
+		cdev = cdev_by_name(inode->cdevname);
+		if (cdev) {
+			s->st_size = cdev_size(cdev);
+		} else {
+			s->st_size = 0;
+		}
+	} else {
+		s->st_size = inode->i_size;
+	}
+
 	s->st_ino = inode->i_ino;
 	s->st_mode = inode->i_mode;
 	s->st_uid = inode->i_uid;
 	s->st_gid = inode->i_gid;
-	s->st_size = inode->i_size;
 }
 
 int fstat(int fd, struct stat *s)

-- 
2.47.3



