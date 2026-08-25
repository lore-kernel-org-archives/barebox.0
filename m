Delivery-date: Tue, 25 Aug 2026 12:12:32 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyo8t-0072Cg-0m
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 12:12:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3A85201AD4
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 12:12:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BLGHZzMq;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Eu03yoi6tZXUdf+vhlniuosaVvGfMHO82B86YAoPM0o=; b=BLGHZzMqt8hq90pO9K5DDHWNGX
	MpopkliYu7EEsshG5mwMF3AN63TYTp3nEV02WXB0CNyuz1PimToJQYHA3btjBBQYx5jUcYL3NHFmw
	VpJ93RnASB+0mfbSYDxPx18jvEt/nVF/rbatJzryUV4gMe9bsXxB4tK90+giT/I55+6NTji1WFifN
	ZsaioLDEnqk2oP2U57A3seLuM1IbblF6Yq5FUpvBdTgjTMC/wzu2hhQIb6ZhKghboQpfzhI0K2Se4
	4GRthPY7h+yybrsr2vyZIs8CU+dsNcQZuK/wtLiEgOHzGQTa7BIpfvYbdSa50wQfe5ctZqYN+Ok8h
	dIhl+r9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7f-00000000Ym9-1PH5;
	Tue, 25 Aug 2026 10:11:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7Z-00000000Ygs-1o53
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 10:11:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CDD98202078;
	Tue, 25 Aug 2026 12:11:07 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-003FvJ-2R;
	Tue, 25 Aug 2026 12:11:07 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-00000008vZQ-2iV2;
	Tue, 25 Aug 2026 12:11:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 4/4] fs: fat: flush metadata updates to the block device
Date: Tue, 25 Aug 2026 12:10:56 +0200
Message-ID: <20260825101106.2127202-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260825101106.2127202-1-a.fatoum@pengutronix.de>
References: <20260825101106.2127202-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_031109_633841_ACFB5223 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The disk_ioctl glue that barebox provides can take a CTRL_SYNC
    command, but barebox implemented it as a no-op. Instead, various file system
    callbacks did flushing manually instead of having fat.c do it via disk_ioctl.
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 6d8ptwrn7teyz1kjw1s4ied6pc5e8oqf
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D3A85201AD4

The disk_ioctl glue that barebox provides can take a CTRL_SYNC command,
but barebox implemented it as a no-op.

Instead, various file system callbacks did flushing manually instead
of having fat.c do it via disk_ioctl.

Implement disk_ioctl(..., CTRL_SYNC) and drop the now superfluous
flushes.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/diskio.h     |  1 +
 fs/fat/fat-diskio.c |  4 ++++
 fs/fat/fat.c        | 46 ++++++++++++++-------------------------------
 3 files changed, 19 insertions(+), 32 deletions(-)

diff --git a/fs/fat/diskio.h b/fs/fat/diskio.h
index 04a587e3bc47..86fa0f21e365 100644
--- a/fs/fat/diskio.h
+++ b/fs/fat/diskio.h
@@ -40,6 +40,7 @@ DSTATUS disk_status (FATFS *fatfs);
 DRESULT disk_read (FATFS *fatfs, BYTE*, DWORD, BYTE);
 #if	_READONLY == 0
 DRESULT disk_write (FATFS *fatfs, const BYTE*, DWORD, BYTE);
+DRESULT disk_flush (FATFS *fatfs);
 #endif
 DRESULT disk_ioctl (FATFS *fatfs, BYTE, void*);
 
diff --git a/fs/fat/fat-diskio.c b/fs/fat/fat-diskio.c
index 6ba18993b870..8e26b6b1e9bb 100644
--- a/fs/fat/fat-diskio.c
+++ b/fs/fat/fat-diskio.c
@@ -28,7 +28,11 @@ DRESULT disk_ioctl (FATFS *fat, BYTE command, void *buf)
 		*(WORD *)buf = disk_sector_size(fat);
 		return RES_OK;
 	case CTRL_SYNC:
+#if	_READONLY == 0
+		return disk_flush(fat);
+#else
 		return RES_OK;
+#endif
 	default:
 		return RES_PARERR;
 	}
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index b50867524a74..c2e6969f8109 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -78,6 +78,13 @@ DRESULT disk_write(FATFS *fat, const BYTE *buf, DWORD sector, BYTE count)
 	return RES_OK;
 }
 
+DRESULT disk_flush(FATFS *fat)
+{
+	struct fat_priv *priv = fat->userdata;
+
+	return cdev_flush(priv->cdev) ? RES_ERROR : RES_OK;
+}
+
 /* ---------------------------------------------------------------*/
 
 #ifdef CONFIG_FS_FAT_WRITE
@@ -91,51 +98,28 @@ static int fat_create(struct device *dev, const char *pathname, mode_t mode)
 	if (ret)
 		return ret;
 
-	f_close(&f_file);
-
-	return 0;
+	return f_close(&f_file);
 }
 
 static int fat_unlink(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
-	int ret;
 
-	ret = f_unlink(&priv->fat, pathname);
-	if (ret)
-		return ret;
-
-	cdev_flush(priv->cdev);
-
-	return 0;
+	return f_unlink(&priv->fat, pathname);
 }
 
 static int fat_mkdir(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
-	int ret;
 
-	ret = f_mkdir(&priv->fat, pathname);
-	if (ret)
-		return ret;
-
-	cdev_flush(priv->cdev);
-
-	return 0;
+	return f_mkdir(&priv->fat, pathname);
 }
 
 static int fat_rmdir(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
-	int ret;
 
-	ret = f_unlink(&priv->fat, pathname);
-	if (ret)
-		return ret;
-
-	cdev_flush(priv->cdev);
-
-	return 0;
+	return f_unlink(&priv->fat, pathname);
 }
 
 static int fat_write(struct file *f, const void *buf, size_t insize)
@@ -224,16 +208,14 @@ static int fat_open(struct device *dev, struct file *file, const char *filename)
 
 static int fat_close(struct device *dev, struct file *f)
 {
-	struct fat_priv *priv = dev->priv;
 	FIL *f_file = f->private_data;
+	int ret;
 
-	f_close(f_file);
+	ret = f_close(f_file);
 
 	free(f_file);
 
-	cdev_flush(priv->cdev);
-
-	return 0;
+	return ret;
 }
 
 static int fat_read(struct file *f, void *buf, size_t insize)
-- 
2.47.3



