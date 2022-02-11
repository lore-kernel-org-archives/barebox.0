Delivery-date: Fri, 11 Feb 2022 10:44:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTE-00CiKy-LP
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:44:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTC-0000pE-NQ
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Adi4SZNejHt7KPvLUHRX8kk+8mIq7OFXuSpbFNE3+8Y=; b=l6dB0eDijEdsRk
	GFjz3BuwrAfKVFjQ/0so53RcRXQfQSAJ4MqDjDo+dHSu+kIsPpym0lHqACD7OZ6vM4gFxnJYOdTQa
	KXJlQWh6COa0EMhAmvAWpwKf140mvBmp37TeaA2obvGlpq8ULnB/G4l0xDzSxf9WHBMxbW6BXNE1C
	/K4NuZP/wPCgaJXAEpbmPbJXH787chmk10XFvr2WyLyhE2ycp+symmNojJ+zOyYtkFMuHWFGgrgdr
	Z3KLKcKk9PNal+Xr6GuC4QnqXVieXSX2iaCCpjIPCvoR03pLTV23vhC9zgF2+x2WIEUbWituvUWXT
	MShvdkd3iTE7ujUDF2CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISS1-006Rym-0R; Fri, 11 Feb 2022 09:42:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISRm-006RuF-74
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:42:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRk-0000SO-DT; Fri, 11 Feb 2022 10:42:32 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRj-007aAD-Uv; Fri, 11 Feb 2022 10:42:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 11 Feb 2022 10:42:28 +0100
Message-Id: <20220211094230.1807262-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_014234_348838_C18D462B 
X-CRM114-Status: GOOD (  15.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] scripts/common: Do not mmap in read_file_2()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using mmap() in read_file_2() leads to problems because there are
cases where the buffer returned from read_file_2() is modified and
then written back to the same file. This doesn't work when the
original file has been mmapped instead of being read into an allocated
buffer.

Using mmap() was introduced for a usecase where the system is very tight
in memory and bareboximd ran out of memory. Support for this usecase is
removed here, we'll bring it back in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/common.c | 53 +++++++++++++++++++++++-------------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/scripts/common.c b/scripts/common.c
index 154d6dffcb..3d07be3630 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -17,7 +17,7 @@
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
 {
 	off_t fsize;
-	ssize_t rsize;
+	ssize_t read_size, now;
 	int ret, fd;
 	void *buf;
 
@@ -37,8 +37,10 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 		goto close;
 	}
 
-	if (fsize < max_size)
-		max_size = fsize;
+	if (max_size < fsize)
+		read_size = max_size;
+	else
+		read_size = fsize;
 
 	if (lseek(fd, 0, SEEK_SET) == -1) {
 		fprintf(stderr, "Cannot seek to start %s: %s\n", filename, strerror(errno));
@@ -46,35 +48,30 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 		goto close;
 	}
 
-	buf = mmap(NULL, max_size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
-	if (buf == MAP_FAILED ) {
-		buf = malloc(max_size);
-		if (!buf) {
-			fprintf(stderr, "Cannot allocate memory\n");
-			ret = -ENOMEM;
-			goto close;
-		}
-
-		*outbuf = buf;
+	buf = malloc(read_size);
+	if (!buf) {
+		fprintf(stderr, "Cannot allocate memory\n");
+		ret = -ENOMEM;
+		goto close;
+	}
 
-		while (*size < max_size) {
-			rsize = read(fd, buf, max_size - *size);
-			if (rsize == 0) {
-				ret = -EIO;
-				goto free;
-			}
+	*outbuf = buf;
 
-			if (rsize < 0) {
-				ret = -errno;
-				goto free;
-			}
+	while (read_size) {
+		now = read(fd, buf, read_size);
+		if (now == 0) {
+			ret = -EIO;
+			goto free;
+		}
 
-			buf += rsize;
-			*size += rsize;
+		if (now < 0) {
+			ret = -errno;
+			goto free;
 		}
-	} else {
-		*outbuf = buf;
-		*size = max_size;
+
+		buf += now;
+		*size += now;
+		read_size -= now;
 	}
 
 	ret = 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

