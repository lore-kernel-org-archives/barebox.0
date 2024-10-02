Delivery-date: Wed, 02 Oct 2024 18:37:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sw2LY-005RK3-0i
	for lore@lore.pengutronix.de;
	Wed, 02 Oct 2024 18:37:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sw2LY-0006cp-Mq
	for lore@pengutronix.de; Wed, 02 Oct 2024 18:37:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HFA2suBdnA3a9QRLyMq0bQOItS71BLdmLi4TalVzVSo=; b=fqmOAUhqKlVjtwPxcWjiZ4J/c8
	CZHny71y4eVgZm6lXx60uVrUt3xQvz6hykT8EbJbxzOeiLKqAM46NEykE69JhW+3lXKv2M/UpnRg0
	adBybgMioRmyx9/DFdlDkixOmNGAbVgqGHcyd964qJYLLaGfQNxTQtCecGTA9N3qpKF4dcW2kg8b5
	947pWOa4UwBkic5AF98zApppfwqIwxFKKFpzeduBuDIoZ3HMuJ1x/dAYCJjTSFRKJZh3LeSsmcQnc
	C8/C6H3lgTnECtJ5YKccz70AMs+RHYjgAomeHbeDhs4nUa5ekGM9wFwRXSAu1YgVT3ghlLejNQVIa
	dDGFe94Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw2L0-00000006wb3-3rcA;
	Wed, 02 Oct 2024 16:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw2Ku-00000006wYw-2esC
	for barebox@lists.infradead.org;
	Wed, 02 Oct 2024 16:36:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sw2Ks-0006XY-St; Wed, 02 Oct 2024 18:36:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sw2Ks-0039RB-Ci; Wed, 02 Oct 2024 18:36:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sw2Ks-00AJc2-0z;
	Wed, 02 Oct 2024 18:36:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Oct 2024 18:36:21 +0200
Message-Id: <20241002163621.2458659-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_093624_695463_1068318F 
X-CRM114-Status: GOOD (  12.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] uimage: use read_full where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apart from the CRC code, where it's no problem to just compute the CRC
of the last read and read again, all other instances of read() in the
uimage code are written with the assumption that the read will not be
short.

Use read_full to satisfy this assumption.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/uimage.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index c578edae2606..06a2c05ead67 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -110,7 +110,7 @@ struct uimage_handle *uimage_open(const char *filename)
 
 	handle->copy = copy;
 
-	if (read(fd, header, sizeof(*header)) < 0) {
+	if (read_full(fd, header, sizeof(*header)) != sizeof(*header)) {
 		printf("could not read: %m\n");
 		goto err_out;
 	}
@@ -150,8 +150,8 @@ struct uimage_handle *uimage_open(const char *filename)
 		for (i = 0; i < MAX_MULTI_IMAGE_COUNT; i++) {
 			u32 size;
 
-			ret = read(fd, &size, sizeof(size));
-			if (ret < 0)
+			ret = read_full(fd, &size, sizeof(size));
+			if (ret != sizeof(size))
 				goto err_out;
 
 			if (!size)
@@ -437,8 +437,8 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 		goto out;
 	}
 
-	ret = read(handle->fd, ftbuf, 128);
-	if (ret < 0)
+	ret = read_full(handle->fd, ftbuf, 128);
+	if (ret != 128)
 		return NULL;
 
 	ft = file_detect_type(ftbuf, 128);
@@ -452,8 +452,8 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 	if (lseek(handle->fd, off, SEEK_SET) != off)
 		return NULL;
 
-	ret = read(handle->fd, &size, 4);
-	if (ret < 0)
+	ret = read_full(handle->fd, &size, 4);
+	if (ret != 4)
 		return NULL;
 
 	size = le32_to_cpu(size);
-- 
2.39.5



