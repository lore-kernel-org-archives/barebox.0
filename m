Delivery-date: Tue, 20 Jan 2026 15:56:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9Z-003QF7-21
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 15:56:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9Y-0008WT-JA
	for lore@pengutronix.de; Tue, 20 Jan 2026 15:56:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GLyB8dXweuZr4If6uyLkTPFTomWquyVbzaTJg+gma1g=; b=JtmSR196TXg/dy7NblcxJNc/UT
	SL5E7DtYgZlh3p8aIxrJ4Kx6FIvUesS0xT0k22DnRymBb1sNUHSn6H3+YJNPUS1yJOlhFwXa0t2qm
	wAmcge/+eLADtiwEd8vCK5VCJGDr8FMNzNFhsHKiYbcyccGuuuHo5lrlZj5QyyTbs87dfiK1EOg80
	m7l5waiajbYj3SSoIowz+8QW3bpoAMlth8uaTeii4e+t6OTSD9OQ9+Vn0y5n+8E5crLKJ0rJVIW92
	JlEQm6PeTX/fcqo/IaJSTxlIAsydiZXdpuyEF9aURmFcK3hK9tQy7M+lus0IiWdgij+uwfH6JjDGn
	bZ7/YUug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD8u-000000041vY-0imp;
	Tue, 20 Jan 2026 14:55:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD8s-000000041vS-3xsf
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 14:55:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=GLyB8dXweuZr4If6uyLkTPFTomWquyVbzaTJg+gma1g=; b=mzsAJT3i5X428CHf+hkhDIhMvC
	aLqTzahIk4zLCpwkhAmtz29NVZx6QP37CNPBYiIFSzXv7htXQu8RJHCsl7IV7AgULOCrVJQ/tvT75
	2CaLJsUb3dgLsR4nScoSVXLiI/2bCBfBW4C9Dc5g6RJrOKevD9rAoD5CSjPCSg8PkdejWF02oE4yA
	a6nwi293lVZEIXbY+6dbLXqylXP2VEj236n47+oAc54zsu/u5y1vB11tdYcOPLirD5X9pWyM2kS/9
	OvudHk5fJPxfrDXFc+97gsGsCYScojzX6aVxRYIXM6v80dhCzenCgfQ9m17L+NXU3jeJLo543oRK0
	YVSvICNg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD8q-0000000EGE9-0xy3
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 14:55:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-0008Hs-Vc; Tue, 20 Jan 2026 15:55:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8p-001bKW-1P;
	Tue, 20 Jan 2026 15:55:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-00000000RaZ-2oWT;
	Tue, 20 Jan 2026 15:55:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Jan 2026 15:55:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-android-image-v1-1-820595a1b8a4@pengutronix.de>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
In-Reply-To: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768920934; l=2713;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2298EDxQRiArSSgLsPy/AyTJ3GzLChK73Jq1Qz6flIw=;
 b=oVALxHUV2/NmK7knCad0hnlCwMbPJBfBxKod2RTjXk2PFyhs169I3Ns/UII2WJ/rtbi+rQTSY
 AjqDO10qtWABJa27CPxMCxeCK39+I5trZoGip3lo69V10GtcR9eLCMK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_145536_336278_D97CD166 
X-CRM114-Status: GOOD (  16.87  )
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
Subject: [PATCH 1/2] libfile: copy_fd: add size argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a size argument to copy_fd() to allow copying a specified number of
bytes. While at it add some function documentation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c |  2 +-
 include/libfile.h |  2 +-
 lib/libfile.c     | 37 +++++++++++++++++++++++++++++++++----
 3 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 264fc9d66d..cdc55467cd 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -292,7 +292,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 		ret = uncompress_fd_to_fd(firmwarefd, devicefd,
 					  uncompress_err_stdout);
 	else
-		ret = copy_fd(firmwarefd, devicefd);
+		ret = copy_fd(firmwarefd, devicefd, 0);
 
 out:
 	free(dst);
diff --git a/include/libfile.h b/include/libfile.h
index dc292e422e..370f8b9725 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -11,7 +11,7 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
-int copy_fd(int in, int out);
+int copy_fd(int in, int out, size_t size);
 
 ssize_t read_file_into_buf(const char *filename, void *buf, size_t size);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 01189773b7..32b0c27eba 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -124,25 +124,54 @@ int read_full(int fd, void *buf, size_t size)
 }
 EXPORT_SYMBOL(read_full);
 
-int copy_fd(int in, int out)
+/*
+ * copy_fd - copy one file descriptor to another
+ * @in: input file descriptor
+ * @out: output file descriptor
+ * @size: size to copy
+ *
+ * This copies at @size bytes from @in file descriptor to @out
+ * file descriptor. If @size is zero then all data is copied until
+ * EOF is reached.
+ *
+ * @return: 0 for success and negatibe error code otherwise. If @size
+ * is non zero and not all data could be read from @in then -ENODATA
+ * is returned.
+ */
+int copy_fd(int in, int out, size_t size)
 {
-	int bs = 4096, ret;
+	size_t copied = 0, bs = 4096;
 	void *buf = malloc(bs);
+	int ret;
 
 	if (!buf)
 		return -ENOMEM;
 
 	while (1) {
-		ret = read(in, buf, bs);
+		size_t now = min(bs, size - copied);
+
+		if (!now) {
+			ret = 0;
+			break;
+		}
+
+		ret = read(in, buf, now);
 		if (ret <= 0)
 			break;
 
+		now = ret;
+
 		ret = write_full(out, buf, ret);
 		if (ret < 0)
 			break;
+
+		copied += now;
 	}
 
-        free(buf);
+	free(buf);
+
+	if (size && copied < size)
+		ret = -ENODATA;
 
 	return ret;
 }

-- 
2.47.3



