Delivery-date: Wed, 22 Nov 2023 18:04:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qea-004bVB-0n
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:04:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qea-00020Y-87
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:04:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vmHUHfDKEXf7+0ohvAgP1iCqTmxNG7bKfF5Wm8BW0dc=; b=Xxw62cJUJtjzRu5FsN7P33x65Z
	XJ/ulCbiqtPYmRFMj7eszwJ+oxMHhX+PfRk0s7E16ptJk1K2qurc4tbfOR1deH6CW93+eK2+kVWL7
	JVKkmYaOhpFn2SU9/sA999YeCHJPIdL4RpNhZIngDoHD0Xs9BvLIXRzaDQ84c5ZSIBktbSFThEWk+
	im6OyL1/f8nQ8eTBJcXrJfdTYeP4U+FgSc6dFDUNWGgZP6dEzI1hAu/cO4ueBCUKe3cpMmJ1YiI4F
	AG4TTz+aKaM/FY8qZOuwCBsZ4z4Y3sakSZOn6ZrgME9iX/zyPJ1buCXJdU2RdCA7bvIolbjqLnm42
	9UuhDAeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qdR-002bUp-0X;
	Wed, 22 Nov 2023 17:03:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qdO-002bUQ-18
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:03:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qdN-0001gN-45; Wed, 22 Nov 2023 18:03:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qdM-00ArNy-L1; Wed, 22 Nov 2023 18:03:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qdM-000Jn9-1i;
	Wed, 22 Nov 2023 18:03:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:03:22 +0100
Message-Id: <20231122170323.15175-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122170323.15175-1-a.fatoum@pengutronix.de>
References: <20231122170323.15175-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_090330_385669_9628BD02 
X-CRM114-Status: GOOD (  17.96  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] libfile: implement read_fd counterpart to read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Files opened with O_TMPFILE have no name, so read_file can't be used
with them. Therefore add a read_fd function, which slurps all a file's
contents into a buffer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Justify why the buffer is three bytes longer than the file's content
    (Yann)
  - Check for malloc failure (Yann)
  - Don't close file descriptor on failure as it's opened outside
    the function
  - set errno to indicate why the function failed
  - use fstat and pread_full (Sascha)
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 50 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index a353ccfa9ea9..423e7ffec5b7 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -12,6 +12,8 @@ char *read_file_line(const char *fmt, ...);
 
 void *read_file(const char *filename, size_t *size);
 
+void *read_fd(int fd, size_t *size);
+
 int read_file_2(const char *filename, size_t *size, void **outbuf,
 		loff_t max_size);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index e53ba08415a2..72a2fc79c721 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -306,6 +306,56 @@ void *read_file(const char *filename, size_t *size)
 }
 EXPORT_SYMBOL(read_file);
 
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
+	if (st.st_size == FILE_SIZE_STREAM) {
+		errno = EINVAL;
+		return NULL;
+	}
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
+EXPORT_SYMBOL(read_fd);
+
 /**
  * write_file - write a buffer to a file
  * @filename:    The filename to write
-- 
2.39.2



