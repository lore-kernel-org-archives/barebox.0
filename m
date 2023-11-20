Delivery-date: Mon, 20 Nov 2023 09:39:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zoT-001DKM-2x
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 09:39:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zoT-0008BB-Un
	for lore@pengutronix.de; Mon, 20 Nov 2023 09:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nHm8VVjrNfGr4M1BCxBwhabrgyanu/BShpW7OOtK/EE=; b=BTEkjb2F3fwNFME6EUHpenHyFl
	ts3Ca4PKs/qHP1IqR853gULaH69e6dBFOOwibMrkXUVF7ldwcX5T46Yrs3CUQFsFQg3MQbllPhQ91
	vKjS1nYg78ttHV4SCkfLcO9wXlFlM4u7U8uC2D1d38Fxk3uYEP3lXP9n96SxvLPvPF47846vMnwyT
	5MXTgW8gQqz7/6siOltXDByg5brq3PKj6aOJJ+QtQrMBROfAgKeCXjUNpu5mAG6mnVRDAupCG2CDv
	u0cbHUgnM0ZD8EwQfGxQugyuVss8QUyE4gWhBASifCYHstBZTQwWEcFI5VKtCdopGjRC+ZMHaF0HF
	+JD26bvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zn7-00BWEz-2q;
	Mon, 20 Nov 2023 08:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zn3-00BWDP-2E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 08:37:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zn0-0007rA-89; Mon, 20 Nov 2023 09:37:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00AJDq-Rg; Mon, 20 Nov 2023 09:37:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00GeDh-2T;
	Mon, 20 Nov 2023 09:37:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 09:37:50 +0100
Message-Id: <20231120083750.3967831-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_003757_724840_DDD94555 
X-CRM114-Status: GOOD (  12.51  )
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
Subject: [PATCH RFC 3/3] uncompress: skip dentry cache in uncompress_buf_to_buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

make_temp() creates a named temporary file, which even after deletion
will keep a negative dentry cache entry that's never freed.

As we don't use the file name for anything, we can just get our
temporary file via open(O_TMPFILE), which won't involve the dentry cache
at all and thereby avoiding leaking memory when fuzzing uncompress_buf_to_buf.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/uncompress.c | 34 +++++++++++++++-------------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index 71ac882b87fe..bfe042fcf83e 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -185,30 +185,26 @@ int uncompress_buf_to_fd(const void *input, size_t input_len,
 ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
 			      void **buf, void(*error_fn)(char *x))
 {
-	char *dstpath;
 	size_t size;
-	int outfd, ret;
+	int fd, ret;
+	void *p;
 
-	dstpath = make_temp("data-uncompressed");
-	if (!dstpath)
-		return -ENOMEM;
+	fd = open("/tmp", O_TMPFILE | O_RDWR);
+	if (fd < 0)
+		return -ENODEV;
 
-	outfd = open(dstpath, O_CREAT | O_WRONLY);
-	if (outfd < 0) {
-		ret = -ENODEV;
-		goto free_temp;
-	}
-
-	ret = uncompress_buf_to_fd(input, input_len, outfd, error_fn);
+	ret = uncompress_buf_to_fd(input, input_len, fd, error_fn);
 	if (ret)
-		goto close_outfd;
+		goto close_fd;
 
-	*buf = read_file(dstpath, &size);
-close_outfd:
-	close(outfd);
-	unlink(dstpath);
-free_temp:
-	free(dstpath);
+	p = read_fd(fd, &size);
+	if (p)
+		*buf = p;
+	else
+		ret = -errno;
+
+close_fd:
+	close(fd);
 
 	return ret ?: size;
 }
-- 
2.39.2



