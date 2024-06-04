Delivery-date: Tue, 04 Jun 2024 12:40:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sERaX-001GE9-0c
	for lore@lore.pengutronix.de;
	Tue, 04 Jun 2024 12:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sERaW-0000wI-JT
	for lore@pengutronix.de; Tue, 04 Jun 2024 12:40:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ElsYeK+/Ad+bVfvgXmr0h5jRJW4cK3YpIWkcNTNk6/0=; b=RzDMu/RqL5bVXLBSofQe7WGjaR
	wP0nS6Lm2YE97iMkf0mvbh0Z5EhLkw3F9QQrNWKk4iMRqtm7dp1Ph/AP2KXpR/tTKcgq1P23avkux
	SHQApa+HGs2IejS+opfxFwPM2LqVpyCzwOYAm5JXmjoVBHQ1rsv/E9rHVQl/5PqDXVYki/dFPiW9F
	J+lACdXK12UcSiPfWdIVJtAx7/Wpkx7Fipo/AG/9MGojXgUiixSHHIuxKb8bpkg2N/kfwiwjSjWmy
	X66HI22BSnV91ei8+im6/SpyXhYfpCdGGDFa7t1V3rnO6oMQPKsKm413YIaDjGyNG+haEwUTyLLH5
	lk9VZpSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sERZq-000000020Td-30cU;
	Tue, 04 Jun 2024 10:39:38 +0000
Received: from mail.ela-soft.com ([213.23.49.162])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sERZn-000000020T1-1y1V
	for barebox@lists.infradead.org;
	Tue, 04 Jun 2024 10:39:36 +0000
Received: from tupai.ela-bln.local (tupai.ela-bln.local [10.0.1.140])
	by mail.ela-soft.com (mailsystem) with ESMTP id C9C8C22CAE;
	Tue,  4 Jun 2024 12:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ela-soft.com;
	s=2021; t=1717497572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ElsYeK+/Ad+bVfvgXmr0h5jRJW4cK3YpIWkcNTNk6/0=;
	b=m8NIo+4WgMuseKAsna4TT7lGJmG0UmD+qGmd9BC1XSiGzbvb5uMeUehhzE5UhEbGuNa8Fi
	FZId3Jsu8eR1St7gSuNZxsByy73GHkGnBkto14aHK+BnLsItlxjjE7RI3YlzCJIei8JQ1A
	ayezwAtHblUkcQHfA24H09yq8DFoiRxkzBNapwVOLQiDQoS07vYrQoKWpTM+nzpnd1Q/aI
	+BqcSJMfcOV6JTf2jCNks9UsUncrUyElV552OgMfi7j4Mp9i21z6O6Wjj8+HaB2nDH3Hfy
	K64i84aVG0EHtVqlq8OwcP4xwPUpptIp+NS9fRU3qXSTLUxO3PTlkN6Fq/Oblg==
Received: by tupai.ela-bln.local (Postfix, from userid 1000)
	id BFF0734032E; Tue,  4 Jun 2024 12:39:32 +0200 (CEST)
From: Andreas Helmcke <ahelmcke@ela-soft.com>
To: barebox@lists.infradead.org
Cc: Andreas Helmcke <ahelmcke@ela-soft.com>
Date: Tue,  4 Jun 2024 12:39:30 +0200
Message-ID: <20240604103930.83268-1-ahelmcke@ela-soft.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_033935_840520_22F36713 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nandtest: fix wrong ecc stats and start offset parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- The -o (start offset on flash) parameter has no effect. The check always
starts at address 0, despite the value given with -o.

- Due to an invalid initialization the ecc error stats sometimes showed invalid values.

Signed-off-by: Andreas Helmcke <ahelmcke@ela-soft.com>
---
 commands/nandtest.c | 62 ++++++++++++++++++++++++++++++---------------
 1 file changed, 42 insertions(+), 20 deletions(-)
 mode change 100644 => 100755 commands/nandtest.c

diff --git a/commands/nandtest.c b/commands/nandtest.c
old mode 100644
new mode 100755
index 4a7db9cc74..c2eed15c50
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -34,11 +34,32 @@ static unsigned int ecc_stats[MAX_ECC_BITS];
 static unsigned int ecc_stats_over;
 static unsigned int ecc_failed_cnt;
 
+/* Helper for progression bar */
+static loff_t pb_len;
+static loff_t pb_start;
+
+static void pb_init(void)
+{
+	init_progression_bar(pb_len);
+}
+
+static void pb_update(const loff_t done)
+{
+	show_progress(done - pb_start);	
+}
+
+static void pb_rewrite(const loff_t done)
+{
+	pb_init();
+	pb_update(done);
+}
+
+
 /*
  * Implementation of pwrite with lseek and write.
  */
 static ssize_t __pwrite(int fd, const void *buf,
-		size_t count, loff_t offset, loff_t length)
+		size_t count, loff_t offset)
 {
 	ssize_t ret;
 
@@ -50,8 +71,7 @@ static ssize_t __pwrite(int fd, const void *buf,
 			printf("\nMark block bad at 0x%08llx\n",
 					offset + memregion.offset);
 			ioctl(fd, MEMSETBADBLOCK, &offset);
-			init_progression_bar(length);
-			show_progress(offset);
+			pb_rewrite(offset);
 		}
 	}
 
@@ -59,7 +79,7 @@ static ssize_t __pwrite(int fd, const void *buf,
 	return ret;
 }
 
-static int _read_get_stats(loff_t ofs, unsigned char *buf, loff_t totallength)
+static int _read_get_stats(loff_t ofs, unsigned char *buf)
 {
 	int ret;
 
@@ -76,8 +96,7 @@ static int _read_get_stats(loff_t ofs, unsigned char *buf, loff_t totallength)
 		printf("\n %d bit(s) ECC corrected at page 0x%08llx\n",
 				newstats.corrected - oldstats.corrected,
 				ofs + memregion.offset);
-		init_progression_bar(totallength);
-		show_progress(ofs);
+		pb_rewrite(ofs);
 		if ((newstats.corrected-oldstats.corrected) >=
 				MAX_ECC_BITS) {
 			/* Increment ECC stats that
@@ -95,8 +114,7 @@ static int _read_get_stats(loff_t ofs, unsigned char *buf, loff_t totallength)
 	if (newstats.failed > oldstats.failed) {
 		printf("\nECC failed at page 0x%08llx\n",
 				ofs + memregion.offset);
-		init_progression_bar(totallength);
-		show_progress(ofs);
+		pb_rewrite(ofs);
 		oldstats.failed = newstats.failed;
 		ecc_failed_cnt++;
 	}
@@ -117,7 +135,7 @@ static int read_corrected(loff_t ofs, unsigned char *rbuf, loff_t length)
 
 	for (i = 0; i < meminfo.erasesize;
 			i += meminfo.writesize) {
-		ret = _read_get_stats(ofs + i, rbuf + i, length);
+		ret = _read_get_stats(ofs + i, rbuf + i);
 		if (ret)
 			return ret;
 	}
@@ -154,9 +172,9 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 			i += meminfo.writesize) {
 		/* Write data to given offset */
 		__pwrite(fd, data + i, meminfo.writesize,
-				ofs + i, length);
+				ofs + i);
 
-		ret = _read_get_stats(ofs + i, rbuf + i, length);
+		ret = _read_get_stats(ofs + i, rbuf + i);
 		if (ret)
 			return ret;
 	}
@@ -201,7 +219,7 @@ static void print_stats(int nr_passes, loff_t length)
 static int do_nandtest(int argc, char *argv[])
 {
 	int opt, do_nandtest_dev = -1, do_nandtest_ro = 0, ret = -1;
-	loff_t flash_offset = 0, test_ofs, length = 0;
+	loff_t flash_offset = 0, test_ofs, length = 0, flash_end = 0;
 	unsigned int nr_iterations = 1, iter;
 	unsigned char *wbuf, *rbuf;
 
@@ -210,7 +228,7 @@ static int do_nandtest(int argc, char *argv[])
 	markbad = 0;
 	fd = -1;
 
-	memset(ecc_stats, 0, sizeof(*ecc_stats));
+	memset(ecc_stats, 0, sizeof(ecc_stats));
 
 	while ((opt = getopt(argc, argv, "ms:i:o:l:tr")) > 0) {
 		switch (opt) {
@@ -315,6 +333,8 @@ static int do_nandtest(int argc, char *argv[])
 		goto err;
 	}
 
+	flash_end = length + flash_offset;
+	
 	wbuf = malloc(meminfo.erasesize * 2);
 	if (!wbuf) {
 		printf("Could not allocate %d bytes for buffer\n",
@@ -323,20 +343,22 @@ static int do_nandtest(int argc, char *argv[])
 	}
 	rbuf = wbuf + meminfo.erasesize;
 
+	pb_start = flash_offset;
+	pb_len = length;
+	
 	for (iter = 0; iter < nr_iterations; iter++) {
-		init_progression_bar(length);
-		for (test_ofs = 0;
-				test_ofs < length;
+		pb_init();
+		for (test_ofs = flash_offset;
+				test_ofs < flash_end;
 				test_ofs += meminfo.erasesize) {
-			show_progress(test_ofs);
+			pb_update(test_ofs);
 			srand(seed);
 			seed = rand();
 
 			if (ioctl(fd, MEMGETBADBLOCK, &test_ofs)) {
 				printf("\nBad block at 0x%08llx\n",
 						test_ofs + memregion.offset);
-				init_progression_bar(length);
-				show_progress(test_ofs);
+				pb_rewrite(test_ofs);
 				continue;
 			}
 			if (do_nandtest_ro) {
@@ -349,7 +371,7 @@ static int do_nandtest(int argc, char *argv[])
 			if (ret < 0)
 				goto err2;
 		}
-		show_progress(test_ofs);
+		pb_update(test_ofs);
 		printf("\nFinished pass %d successfully\n", iter + 1);
 	}
 
-- 
2.43.0



