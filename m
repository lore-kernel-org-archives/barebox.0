Delivery-date: Fri, 18 Mar 2022 15:51:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVDwc-00FnSZ-Uj
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 15:51:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVDwd-0007E8-FX
	for lore@pengutronix.de; Fri, 18 Mar 2022 15:51:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+22h3mqpnDGqSgwNv9gudB4xcEslNZKCA4fVBgrSZ40=; b=Me7cdOnTOGbboq
	CYrx8sTYrPSlnPUqgR3OMgNLngB9tX00VjJz2nuztUULatiDYPPfE3WoBKihg1xPQxC6YHvttUjSp
	MKeS3+keC/lFPOqOCSPag4U+1sDBIHD8KIdIP0akb5mScgRQ+OulcF1sm4q2jjVbhZ2ae8/YYawW3
	e4bj2/ZbVPaKUNqyzYnoDmCo/l28+Zjr9Avpu9YceSUGGnjNMsckLUQpmvQ6VKfhRmBk8qaCecYL/
	M7jJerCuGq+PqQrQIOB126vYgVOGx50UyWjKFY2dQfoYvJSu5Q12Mu4nVkcRoupJJzgLCV1xpekrK
	WXNqrBIjxFPFB00k+OOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVDvM-0024sO-IK; Fri, 18 Mar 2022 14:49:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVDvF-0024pt-2N
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 14:49:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVDvD-0006vR-SP; Fri, 18 Mar 2022 15:49:43 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVDvD-0025bD-Dg; Fri, 18 Mar 2022 15:49:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 18 Mar 2022 15:49:42 +0100
Message-Id: <20220318144942.498124-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_074945_139510_9098D352 
X-CRM114-Status: GOOD (  12.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] libfile: implement new pread_full
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have pwrite_full, add pread_full for symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  1 +
 lib/libfile.c     | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index 3c2fe1714dcb..a353ccfa9ea9 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -2,6 +2,7 @@
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
+int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
diff --git a/lib/libfile.c b/lib/libfile.c
index 6b373f05ca72..1f533133c593 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -75,6 +75,31 @@ int write_full(int fd, const void *buf, size_t size)
 }
 EXPORT_SYMBOL(write_full);
 
+/*
+ * pread_full - read to filedescriptor at offset
+ *
+ * Like pread, but this function only returns less bytes than
+ * requested when the end of file is reached.
+ */
+int pread_full(int fd, void *buf, size_t size, loff_t offset)
+{
+	size_t insize = size;
+	int now;
+
+	while (size) {
+		now = pread(fd, buf, size, offset);
+		if (now == 0)
+			break;
+		if (now < 0)
+			return now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize - size;
+}
+EXPORT_SYMBOL(pread_full);
+
 /*
  * read_full - read from filedescriptor
  *
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

