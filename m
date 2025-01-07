Delivery-date: Tue, 07 Jan 2025 09:04:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Za-000EsI-2H
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZB-0001xN-Gm
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERFT5dZ4aaSdcNr4mu9Bmtihxv2hoz2GxHMY61+En38=; b=cN1bnmUIT5IWawottPGvxYj3xK
	UVWl4QOGSdFwxUkwOBLGRy22S0cw4niuJHGPJpaP/70sYPlNwMRn4U7Ci+8n11zDLECWEXzDAt5Ll
	h7vqKST+mWxFDTF2l5pxQJywPUh0z0nzNF39VmFuG38PMYgblRg8M0ilCBu094IJ2tmzx/1kPNroA
	4KHM+HFiOPf8Fw0VRrxV0cFnmz1ak9HU8Yl7A0adJmqWrDf03B1aqvrtQl9AsDQa26SqZPLGMFBma
	4sLujae+/WXAObo8RNYLHON2unF6b/ncC/OzQOKeLqFyCfRSBdnLKsPw7PQw9gJb9Irc2j2nma6cm
	NTizCSIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XN-00000003q5p-3jyT;
	Tue, 07 Jan 2025 08:02:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VQ-00000003pZ3-2cY2
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 08:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rU-Ac; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqi-17;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-00Bv76-06;
	Tue, 07 Jan 2025 08:59:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:36 +0100
Message-Id: <20250107075939.2841119-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_000005_032188_69E92E3B 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] fs: fat: rename f_size to f_len
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FAT filesystem uses f_ as prefix for FAT functions and the VFS core
uses f_ as prefix for struct file members. The VFS core also defines f_
prefxed macros to shorten nested member names. Adding f_size in a
follow-up commit will thus lead to a clash, so let's work around this by
renaming the FAT f_size to f_len.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/fat-pbl.c | 2 +-
 fs/fat/ff.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fat/fat-pbl.c b/fs/fat/fat-pbl.c
index 6b8a807657d4..c50232424066 100644
--- a/fs/fat/fat-pbl.c
+++ b/fs/fat/fat-pbl.c
@@ -49,5 +49,5 @@ ssize_t pbl_fat_load(struct pbl_bio *bio, const char *filename, void *dest, size
 		return ret;
 	}
 
-	return f_size(&file) <= len ? nread : -ENOSPC;
+	return f_len(&file) <= len ? nread : -ENOSPC;
 }
diff --git a/fs/fat/ff.h b/fs/fat/ff.h
index e1a7d029efe8..4a1d670e75ed 100644
--- a/fs/fat/ff.h
+++ b/fs/fat/ff.h
@@ -190,7 +190,7 @@ TCHAR* f_gets (TCHAR*, int, FIL*);			/* Get a string from the file */
 #define f_eof(fp) (((fp)->fptr == (fp)->fsize) ? 1 : 0)
 #define f_error(fp) (((fp)->flag & FA__ERROR) ? 1 : 0)
 #define f_tell(fp) ((fp)->fptr)
-#define f_size(fp) ((fp)->fsize)
+#define f_len(fp) ((fp)->fsize)
 
 /*--------------------------------------------------------------*/
 /* Additional user defined functions                            */
-- 
2.39.5



