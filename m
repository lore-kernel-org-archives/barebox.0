Delivery-date: Tue, 26 Nov 2024 16:14:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxGu-000fHl-37
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:14:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxGu-0002j6-OS
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:14:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wx5urTDdqqb01kGyI4d8OP2tND0BLAL+nd3a9fl8uhE=; b=DPYD66FlECr6kpxoc+OIn1ffOs
	Nimnzr7i5Gw8xs0cbMrATYaN96h84SusQ1ahl12X0Ov2CYBKV0qJehwbvfh6VG5JqOoPDlJ3mp6l3
	F+Q59VBHmxciEnucdzzAxCsJha0AYIGh9NFRZddsA1Yp17f8NNxGclhnVu7+Bb1I/323PN1YmrANs
	xUxJv8EjKzjzPuYcIzUmobuI9t+VkDJ39M4BpCpPs1qA1eF0MIVubjUtXHcPzepy+ngC4Ta2lymdJ
	8NpCOFeKxfVzgh8P2oYf749i1xiAhVGdB1NeOguW+hvtuOtQTTSEtpP0VSR6v4/1EqqSNJOVQbwv9
	IE1gCnzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxGW-0000000Ay4B-1KFo;
	Tue, 26 Nov 2024 15:14:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxGT-0000000Ay3G-2y4b
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:14:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxGS-0002UC-AY; Tue, 26 Nov 2024 16:14:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxGR-000Gr7-1C;
	Tue, 26 Nov 2024 16:14:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxGR-00FBtX-1O;
	Tue, 26 Nov 2024 16:14:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:14:07 +0100
Message-Id: <20241126151407.3620631-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071409_765659_D44BF878 
X-CRM114-Status: GOOD (  18.58  )
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
Subject: [PATCH] scripts: implement read_fd and pread_full for tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be useful for host/target tools that use stdin as
a fall back to read from when no file name is supplied.

Code is taken from the barebox version in lib/libfile.c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/common.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/common.h |  2 ++
 2 files changed, 70 insertions(+)

diff --git a/scripts/common.c b/scripts/common.c
index 49c468a1ea35..a6eee968b79d 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -97,6 +97,50 @@ void *read_file(const char *filename, size_t *size)
 	return NULL;
 }
 
+/**
+ * read_fd - read from a file descriptor to an allocated buffer
+ * @filename:  The file descriptor to read
+ * @size:      After successful return contains the size of the file
+ *
+ * This function reads a file descriptor from offset 0 until EOF to an
+ * allocated buffer.
+ *
+ * Return: On success, returns a nul-terminated buffer with the file's
+ * contents that should be deallocated with free().
+ * On error, NULL is returned and errno is set to an error code.
+ */
+void *read_fd(int fd, size_t *out_size)
+{
+	struct stat st;
+	ssize_t ret;
+	void *buf;
+
+	ret = fstat(fd, &st);
+	if (ret < 0)
+		return NULL;
+
+	/* For user convenience, we always nul-terminate the buffer in
+	 * case it contains a string. As we don't want to assume the string
+	 * to be either an array of char or wchar_t, we just unconditionally
+	 * add 2 bytes as terminator. As the two byte terminator needs to be
+	 * aligned, we just make it three bytes
+	 */
+	buf = malloc(st.st_size + 3);
+	if (!buf)
+		return NULL;
+
+	ret = pread_full(fd, buf, st.st_size, 0);
+	if (ret < 0) {
+		free(buf);
+		return NULL;
+	}
+
+	memset(buf + st.st_size, '\0', 3);
+	*out_size = st.st_size;
+
+	return buf;
+}
+
 int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret = 0;
@@ -147,6 +191,30 @@ int read_full(int fd, void *buf, size_t size)
 	return insize;
 }
 
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
+
 int write_full(int fd, const void *buf, size_t size)
 {
 	size_t insize = size;
diff --git a/scripts/common.h b/scripts/common.h
index 399729c338f3..a0d16606b5d9 100644
--- a/scripts/common.h
+++ b/scripts/common.h
@@ -3,8 +3,10 @@
 
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size);
 void *read_file(const char *filename, size_t *size);
+void *read_fd(int fd, size_t *out_size);
 int write_file(const char *filename, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
+int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 
 #endif /* __COMMON_H */
-- 
2.39.5



