Delivery-date: Mon, 13 Nov 2023 20:02:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2cCc-00ALsQ-2K
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 20:02:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2cCc-0003o7-Kq
	for lore@pengutronix.de; Mon, 13 Nov 2023 20:02:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y63RVZlxhvowYmFuEck2V71n2bhXgXBT3X3vePgGT+4=; b=W4DHVk0emx2sDvTR9PAhcD61i5
	g6GEMC1qkPItBPvQ/Axm4/Zqe34cxfrB9MNtVCit0/v+VmuU9jbFtVhFs6AKyb9IHhmQnZ0AN0sfz
	w93sykkRDgHCiazj1H9PiZlwZyZLvXQOXVCSSKW/s6ZQmcJy3h/B4MjqXBilwqFMUSJn5/urIDp5S
	kXgzYzTBK8szTxl7P2uTTLGQGAFlEff2/oEkCz7xOXTATS8RNBf6tatl/H1Y05Fa5cBoD3FsdkTsy
	d2rVVTxrVykrftTsLKpLSJDABCiifjCLf/z5rgrH6EnxT4R6P9b1p3AfGIQ7ld5N21v36jCxhcdAN
	H8NyHzEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2cB6-00EX98-1c;
	Mon, 13 Nov 2023 19:00:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2cB0-00EX5p-1r
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 19:00:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2cAw-00039T-Bj; Mon, 13 Nov 2023 20:00:46 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2cAv-008ovf-Sr; Mon, 13 Nov 2023 20:00:45 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2cAv-0010zO-Ja; Mon, 13 Nov 2023 20:00:45 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Nov 2023 20:00:35 +0100
Message-ID: <20231113190034.270327-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4714; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=vLmHr29fLbiHovwKmbPjff3ZDsbkCUf5+W8CyIh5EQU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlUnJSP7kQSyFCa4njO06Gxas9vd3jYt8nuv43p EqJFZIwdF+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZVJyUgAKCRCPgPtYfRL+ TmbjCACllORl5I6lfAJw5ZKme7naTmbjs0u9y71Kny5h2W2pfRmNdH28J7vlJOXOGQFwbyk0FGv LU8nzDoeFCaCOXKO+fG1B8Esvordbp5A+HqKcqC5k7jcM8PHQrtyCt8TVVOgUPdYOjP3aeu9veM /Ogr3S8HwWg1GEJp6qB6i/eho4PII+X0jLjTYIIUONGlPvkAYA1Py4sZbCnaVrpbb2ntwngJgvq UySbEaI2pGtESl+lsO7l71SvUFd9yyRkug07FNR7DZYD0c+FWJJQUuBtYlcvrvoYkrAtrVPNwSa 7d/rk+a6GpnwvB3q2MF4xgs1GeWZ0YTBR53bq/YIoIzuVXYg
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_110050_627802_80FE235F 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] uncompress: simplify prototype of uncompress()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All callers apart from lib/uncompress.c itself only use memory-to-memory
decompression. Simplify the calls accordingly.

Note that two of three callers passed error_fn=NULL. As the uncompress
function calls error_fn() unconditionally on error, this might yield
undefined behaviour and so the new uncompress function uses
uncompress_err_stdout() as error function which isn't worse for sure.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/cpu/start.c    |  2 +-
 arch/riscv/boot/start.c |  2 +-
 defaultenv/defaultenv.c |  4 +---
 include/uncompress.h    |  7 +------
 lib/uncompress.c        | 24 +++++++++++++++---------
 5 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 15f5b2937227..65e1a0cce53b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -84,7 +84,7 @@ void *barebox_arm_boot_dtb(void)
 		       compressed_dtb->datalen_uncompressed);
 	else
 		ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
-				 NULL, NULL, dtb, NULL, NULL);
+				 dtb);
 
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 92991d0f6a84..526012b9a43b 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -59,7 +59,7 @@ void *barebox_riscv_boot_dtb(void)
 		return NULL;
 
 	ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
-			 NULL, NULL, dtb, NULL, NULL);
+			 dtb);
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
 		free(dtb);
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 055475eb4756..b1b042d724d7 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -111,9 +111,7 @@ static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 		if (!freep)
 			return -ENOMEM;
 
-		ret = uncompress(df->buf, df->size,
-				NULL, NULL,
-				freep, NULL, uncompress_err_stdout);
+		ret = uncompress(df->buf, df->size, freep)
 		if (ret) {
 			free(freep);
 			pr_err("Failed to uncompress: %s\n", strerror(-ret));
diff --git a/include/uncompress.h b/include/uncompress.h
index 72ba1dfda607..c6ab2abde983 100644
--- a/include/uncompress.h
+++ b/include/uncompress.h
@@ -2,12 +2,7 @@
 #ifndef __UNCOMPRESS_H
 #define __UNCOMPRESS_H
 
-int uncompress(unsigned char *inbuf, int len,
-	   int(*fill)(void*, unsigned int),
-	   int(*flush)(void*, unsigned int),
-	   unsigned char *output,
-	   int *pos,
-	   void(*error_fn)(char *x));
+int uncompress(unsigned char *inbuf, int len, unsigned char *output);
 
 int uncompress_fd_to_fd(int infd, int outfd,
 	   void(*error_fn)(char *x));
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 71ac882b87fe..8f7284ba68c0 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -60,12 +60,12 @@ static int uncompress_fill(void *buf, unsigned int len)
 	return total;
 }
 
-int uncompress(unsigned char *inbuf, int len,
-	   int(*fill)(void*, unsigned int),
-	   int(*flush)(void*, unsigned int),
-	   unsigned char *output,
-	   int *pos,
-	   void(*error_fn)(char *x))
+static int __uncompress(unsigned char *inbuf, int len,
+			int(*fill)(void*, unsigned int),
+			int(*flush)(void*, unsigned int),
+			unsigned char *output,
+			int *pos,
+			void(*error_fn)(char *x))
 {
 	enum filetype ft;
 	int (*compfn)(unsigned char *inbuf, int len,
@@ -139,6 +139,12 @@ int uncompress(unsigned char *inbuf, int len,
 	return ret;
 }
 
+int uncompress(unsigned char *inbuf, int len,
+	       unsigned char *output)
+{
+	return __uncompress(inbuf, len, NULL, NULL, output, NULL, uncompress_err_stdout);
+}
+
 static int uncompress_infd, uncompress_outfd;
 
 static int fill_fd(void *buf, unsigned int len)
@@ -157,7 +163,7 @@ int uncompress_fd_to_fd(int infd, int outfd,
 	uncompress_infd = infd;
 	uncompress_outfd = outfd;
 
-	return uncompress(NULL, 0,
+	return __uncompress(NULL, 0,
 	   fill_fd,
 	   flush_fd,
 	   NULL,
@@ -170,7 +176,7 @@ int uncompress_fd_to_buf(int infd, void *output,
 {
 	uncompress_infd = infd;
 
-	return uncompress(NULL, 0, fill_fd, NULL, output, NULL, error_fn);
+	return __uncompress(NULL, 0, fill_fd, NULL, output, NULL, error_fn);
 }
 
 int uncompress_buf_to_fd(const void *input, size_t input_len,
@@ -178,7 +184,7 @@ int uncompress_buf_to_fd(const void *input, size_t input_len,
 {
 	uncompress_outfd = outfd;
 
-	return uncompress((void *)input, input_len, NULL, flush_fd,
+	return __uncompress((void *)input, input_len, NULL, flush_fd,
 			  NULL, NULL, error_fn);
 }
 

base-commit: a9120f147631785fec30eb1e18615d8eabd3d087
-- 
2.42.0



