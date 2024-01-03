Delivery-date: Wed, 03 Jan 2024 20:47:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cf-002V3k-1E
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:47:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ce-00048M-9B
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:47:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=slWJBZDAC4MHB8HArioho+izp9zVch1SQTv2yHQWwsk=; b=R0h2E4o1lcQg2QHyrl+fTY/5wI
	n/ux4EIS5jrkPtBEwKypj/VI8CdAwLTtI6evBt0jh2hJmiGkCMwUWA54dVPE+/1JoGDovwr+kU1S4
	OOX8XrH3MVw+t0x/52rk4sE6rikdoZrRL1YEybUylqG1Y+ZsGGD+ehAqlSi8AM1OqpI4p7lfJKUCo
	YS3/HL/Msi/0xIJJPWHgBmLI+CK47AQbJhVemc79lRXTGjtoMlSDw2d/y/1+4JXWDhSi+vfwKAz11
	X+fiU1AUsij4METnvEbLuWfJ3NocIcE5dk4yQvP9RMvJsISPXyVp0Au9Y8HhokSFzBW+y0nayVj8K
	7Mbnm78A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BZ-00Bw9C-1w;
	Wed, 03 Jan 2024 19:45:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-00Bh1N-0i
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001Pr-1T; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000Aso-L8; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-1b;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:32 +0100
Message-Id: <20240103181312.409668-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103054_263231_53B92641 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 012/112] libfile: factor out read_file_into_buf helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do open -> read_full -> close at a number of places. Add a function
that does this all at once and start using it to implement read_file.

More users can follow later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  4 ++++
 lib/libfile.c     | 44 ++++++++++++++++++++++++++++++--------------
 2 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index 423e7ffec5b7..1240276e1d74 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -2,12 +2,16 @@
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
+#include <linux/types.h>
+
 int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 int copy_fd(int in, int out);
 
+ssize_t read_file_into_buf(const char *filename, void *buf, size_t size);
+
 char *read_file_line(const char *fmt, ...);
 
 void *read_file(const char *filename, size_t *size);
diff --git a/lib/libfile.c b/lib/libfile.c
index 185c7af721b5..67fc9cc7f3a2 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -186,6 +186,33 @@ char *read_file_line(const char *fmt, ...)
 }
 EXPORT_SYMBOL_GPL(read_file_line);
 
+/**
+ * read_file_into_buf - read a file to an external buffer
+ * @filename:  The filename to read
+ * @buf:       The buffer to read into
+ * @size:      The buffer size
+ *
+ * This function reads a file to an external buffer. At maximum @size
+ * bytes are read.
+ *
+ * Return: number of bytes read, or negative error code.
+ */
+ssize_t read_file_into_buf(const char *filename, void *buf, size_t size)
+{
+	int fd;
+	ssize_t ret;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	ret = read_full(fd, buf, size);
+
+	close(fd);
+
+	return ret;
+}
+
 /**
  * read_file_2 - read a file to an allocated buffer
  * @filename:  The filename to read
@@ -208,11 +235,10 @@ EXPORT_SYMBOL_GPL(read_file_line);
 int read_file_2(const char *filename, size_t *size, void **outbuf,
 		loff_t max_size)
 {
-	int fd;
 	struct stat s;
 	void *buf = NULL;
 	const char *tmpfile = "/.read_file_tmp";
-	int ret;
+	ssize_t ret;
 	loff_t read_size;
 
 again:
@@ -240,17 +266,9 @@ int read_file_2(const char *filename, size_t *size, void **outbuf,
 		goto err_out;
 	}
 
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		ret = fd;
-		goto err_out;
-	}
-
-	ret = read_full(fd, buf, read_size);
+	ret = read_file_into_buf(filename, buf, read_size);
 	if (ret < 0)
-		goto err_out1;
-
-	close(fd);
+		goto err_out;
 
 	if (size)
 		*size = ret;
@@ -265,8 +283,6 @@ int read_file_2(const char *filename, size_t *size, void **outbuf,
 
 	return 0;
 
-err_out1:
-	close(fd);
 err_out:
 	free(buf);
 
-- 
2.39.2



