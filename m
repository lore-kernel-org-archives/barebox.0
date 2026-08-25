Delivery-date: Tue, 25 Aug 2026 12:12:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyo8o-0072Bw-2U
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 12:12:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 56A882009FB
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 12:12:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W3mL5Sj1;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nqArZdyRhPCLZJ5ScTdlUqZHyQ5mZcvUODqhIY73ZPQ=; b=W3mL5Sj1Eiulzt80FTdev5igjX
	fGuR6ovj1LiwzH7ulsQ4IGcfsCPKapnaQSUm2iog9cPmIb4YXIF0dcGCv9J2ktlJV87W7G/+070ax
	frsvqfhZrhfQfxC8O/73w12TrJFkS7yhMx95B/lzDg3IlXK07VydQ/jyHyPT0TV64y9IRgCERPvOv
	xDOnXCJREbEsiDHEDxOze3pR2utKK6fWgOA4A6lkicuYyM4NzqdgD91sfxw7IUnVQOmjfbwbb2bSL
	nt8hGwPU2eNFHWk/anqsxf2mCM2XGKtceFcdJVd/urqsHFJJW/RL7Iu6/bjixk+3KshaaRH5MFMJo
	e+Nec/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7f-00000000Ymm-2T1i;
	Tue, 25 Aug 2026 10:11:15 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7Z-00000000Ygo-1iUx
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 10:11:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C7146201BC9;
	Tue, 25 Aug 2026 12:11:07 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-003FvH-2H;
	Tue, 25 Aug 2026 12:11:07 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-00000008vZQ-2X0k;
	Tue, 25 Aug 2026 12:11:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 3/4] fs: fat: use fixed-width 32-bit FatFs types
Date: Tue, 25 Aug 2026 12:10:55 +0200
Message-ID: <20260825101106.2127202-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260825101106.2127202-1-a.fatoum@pengutronix.de>
References: <20260825101106.2127202-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_031109_601337_8A1029FA 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The comment already says LONG/ULONG/DWORD types should be
   32-bit, but barebox's long is always pointer-sized, so 64-bit on 64-bit platforms.
    Use explicit 32-bit types for the FatFs fields that are written to disk or
    used in sector calculations. 
 
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
X-Stat-Signature: f7jk538t6cydb9f5mj9yjtow3d7yozc6
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
X-Rspamd-Queue-Id: 56A882009FB

The comment already says LONG/ULONG/DWORD types should be 32-bit, but
barebox's long is always pointer-sized, so 64-bit on 64-bit platforms.

Use explicit 32-bit types for the FatFs fields that are written to disk
or used in sector calculations.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/fat.c     | 4 ++--
 fs/fat/ff.c      | 9 ++++++++-
 fs/fat/integer.h | 8 +++++---
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index b17157d1ea34..b50867524a74 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -52,7 +52,7 @@ DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
 	size_t len = count * sector_size;
 	int ret;
 
-	debug("%s: sector: %ld count: %d\n", __func__, sector, count);
+	debug("%s: sector: %u count: %d\n", __func__, sector, count);
 
 	ret = cdev_read(priv->cdev, buf, len, (loff_t)sector * sector_size, 0);
 	if (ret != len)
@@ -68,7 +68,7 @@ DRESULT disk_write(FATFS *fat, const BYTE *buf, DWORD sector, BYTE count)
 	size_t len = count * sector_size;
 	int ret;
 
-	debug("%s: buf: %p sector: %ld count: %d\n",
+	debug("%s: buf: %p sector: %u count: %d\n",
 			__func__, buf, sector, count);
 
 	ret = cdev_write(priv->cdev, buf, len, (loff_t)sector * sector_size, 0);
diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index e4d83a35605f..2f4e3b14f0a5 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -1539,14 +1539,21 @@ static enum filetype check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:No
 	DWORD *bootsec
 )
 {
+	unsigned long bootsec_ul = 0;
 	DRESULT ret;
+	enum filetype type;
 
 	/* Load boot record */
 	ret = disk_read(fs, fs->win, sect, 1);
 	if (ret)
 		return filetype_unknown;
 
-	return is_fat_or_mbr(fs->win, bootsec);
+	type = is_fat_or_mbr(fs->win, &bootsec_ul);
+
+	if (bootsec)
+		*bootsec = bootsec_ul;
+
+	return type;
 }
 
 /*
diff --git a/fs/fat/integer.h b/fs/fat/integer.h
index fe94e374f356..d8b13402afe3 100644
--- a/fs/fat/integer.h
+++ b/fs/fat/integer.h
@@ -7,6 +7,8 @@
 #ifndef _INTEGER
 #define _INTEGER
 
+#include <linux/types.h>
+
 /* These types must be 16-bit, 32-bit or larger integer */
 typedef int		INT;
 typedef unsigned int	UINT;
@@ -23,8 +25,8 @@ typedef unsigned short	WORD;
 typedef unsigned short	WCHAR;
 
 /* These types must be 32-bit integer */
-typedef long		LONG;
-typedef unsigned long	ULONG;
-typedef unsigned long	DWORD;
+typedef s32		LONG;
+typedef u32		ULONG;
+typedef u32		DWORD;
 
 #endif
-- 
2.47.3



