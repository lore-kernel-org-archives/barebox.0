Delivery-date: Mon, 20 Nov 2023 09:39:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zob-001DM8-0S
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 09:39:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zob-0008CP-5e
	for lore@pengutronix.de; Mon, 20 Nov 2023 09:39:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VD8kE7bUk+ROpUeH3z9HF0vZQ1Hnp9jqEGKkzibkOPc=; b=u4tKfTHZnzyW2RtmMyyt/ewWuV
	YdATbxtOf24DdjFaH8FPMKC9mxyQ9FcrTCaKnmbgXPuWLwAFaJVLbf11/m8UdomVoF1/tIInqDAT9
	BrHDoBuqqLhMlZhVEDI6JvpGwF2/VBqQC0NNElj//xCl2PPrKwGbcefDzrSUr2FLJw9VSc5lwUl7g
	WcEbta3oiBxT93Yez6X5a1YB5R7FkBheppW/t7C8MSUCbz/H5sEJb42m/H/2fgOYaSSeyWx//zK1o
	L2oqSInTN+wx1G1CMyuLSkxqNxvkqF6iN2MxWKWm2V5NS2e+D0ah72HGAiECf6nS4OLt66a4g5J+5
	OYIZmGzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zn9-00BWFC-0p;
	Mon, 20 Nov 2023 08:38:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zn3-00BWDO-2E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 08:37:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zn0-0007r9-6c; Mon, 20 Nov 2023 09:37:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00AJDn-Q8; Mon, 20 Nov 2023 09:37:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00GeDh-2K;
	Mon, 20 Nov 2023 09:37:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 09:37:49 +0100
Message-Id: <20231120083750.3967831-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_003757_743121_C905A140 
X-CRM114-Status: GOOD (  12.59  )
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
Subject: [PATCH RFC 2/3] libfile: implement read_fd counterpart to read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Files opened with O_TMPFILE have no name, so read_file can't be used
with them. Therefore add a read_fd function, which slurps all a file's
contents into a buffer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 44 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+)

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
index e53ba08415a2..c257baaa2733 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -306,6 +306,50 @@ void *read_file(const char *filename, size_t *size)
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
+ * Return: The buffer containing the file or NULL on failure
+ */
+void *read_fd(int fd, size_t *out_size)
+{
+	off_t off;
+	ssize_t ret;
+	size_t size;
+	void *buf;
+
+	off = lseek(fd, SEEK_CUR, 0);
+	if (off >= 0) {
+		size = off;
+		off = lseek(fd, SEEK_SET, 0);
+	}
+	if (off < 0) {
+		ret = off;
+		goto close_fd;
+	}
+
+	buf = malloc(size + 3);
+	ret = read_full(fd, buf, size);
+	if (ret < 0) {
+		free(buf);
+		goto close_fd;
+	}
+
+	memset(&buf[size], '\0', 3);
+	*out_size = size;
+
+close_fd:
+	close(fd);
+
+	return ret < 0 ? NULL : buf;
+}
+EXPORT_SYMBOL(read_fd);
+
 /**
  * write_file - write a buffer to a file
  * @filename:    The filename to write
-- 
2.39.2



