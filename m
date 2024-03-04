Delivery-date: Mon, 04 Mar 2024 20:06:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeE-008dMR-2w
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeC-0001xA-Kg
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tV9/UNiXuDqaXRt4lgzv2Tt5apt2/IsUQPmJ+MuFzIA=; b=RQsmVu/qSnKW3ewlTxxTifFwSn
	pvOqUO/kjA1Nojmfdg6w+ixLgPNuB8ASX39zQ1fPruXiCUf+LIm1SA+pauQzTb+3bDEBkawXXESd8
	AqCswBwoRnA9pu82epWnopaKCTKaXotvsxZZn1Yb3e/JZ/Il/iETD8KsGjuS9E6SbJ7w7SnKmvqCj
	3UjtLeQNDz9Hs2de/9UafV0lZ3YavNEcnZmH2r5ne0I3zG1ZQmv/PeDH5tmdC9+Gho79F/3+g03fJ
	1Dpo7MEzNCcHvFWpyctDzPjtkn/2Qv1LyazOXYly8Ru5kt2xduGlm8qrFHhKKQv4zR2Fi13hxLBEJ
	QrceP6aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdc-0000000AKiu-3DZn;
	Mon, 04 Mar 2024 19:06:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-0000000AITw-12Gl
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tV9/UNiXuDqaXRt4lgzv2Tt5apt2/IsUQPmJ+MuFzIA=; b=cLLj6nxE63EYj437BEw7NuZLSA
	7iIcXrlV/r47ym48XpWaPvLekd51JCG7ftldBlfSNJcZHie8MkyBWT+nnJFpK4HjX6eg+1eu+0mGI
	/sHyvrDZauTGxwRPbfF0KDcwhqQtstTdVZQTDUcLCo9D12zcS4RTdmyAsDeaVumSqLvFfV4IQYN3K
	qWtWTIi3e4tXRYpkQ3b73Ecf9deTEBuhJImw+sFpr4UvJLa9oingvwuczIV0xf8FUyYCbrkukEVQu
	Q18YbYb1Kvgk7C7eboj8Zb4v8w0h8ThUGqgP5XQjI25Wv43KtQNofFPDTX07NpzuFn+lYUY8zz9aK
	+RxIz+Qw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-000000051vf-2t5Y
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006GT-NE; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PLw-5R; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-0h;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:33 +0100
Message-Id: <20240304190038.3486881-49-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190249_791756_25104D7D 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 048/113] commands: time: refactor into new strjoin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

time concatenates all its remaining arguments with a space in-between
and then passes that to the command executor. This can be useful
elsewhere as well, so factor it out into a new strjoin function.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - swapped order with previous commit (Sascha)

Originally posted at: https://lore.barebox.org/barebox/20221027073334.GS6702@pengutronix.de/

Changes:
  - remove if statemnt in loop (Sascha)
---
 commands/time.c  | 17 +++--------------
 include/string.h |  2 ++
 lib/string.c     | 28 ++++++++++++++++++++++++++++
 3 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 0a38db61845d..a3f270407122 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -9,11 +9,10 @@
 
 static int do_time(int argc, char *argv[])
 {
-	int i, opt;
-	unsigned char *buf, *p;
+	int opt;
+	unsigned char *buf;
 	u64 start, end, diff64;
 	bool nanoseconds = false;
-	int len = 1; /* '\0' */
 
 	while ((opt = getopt(argc, argv, "+n")) > 0) {
 		switch (opt) {
@@ -31,17 +30,7 @@ static int do_time(int argc, char *argv[])
 	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
 
-	for (i = 0; i < argc; i++)
-		len += strlen(argv[i]) + 1;
-
-	p = buf = xmalloc(len);
-
-	for (i = 0; i < argc - 1; i++) {
-		p = stpcpy(p, argv[i]);
-		p = mempcpy(p, " ", strlen(" "));
-	}
-
-	stpcpy(p, argv[i]);
+	buf = strjoin(" ", argv, argc);
 
 	start = get_time_ns();
 
diff --git a/include/string.h b/include/string.h
index 71810180b5ba..2f2af85b554f 100644
--- a/include/string.h
+++ b/include/string.h
@@ -21,6 +21,8 @@ char *parse_assignment(char *str);
 
 int strverscmp(const char *a, const char *b);
 
+char *strjoin(const char *separator, char **array, size_t len);
+
 static inline int strcmp_ptr(const char *a, const char *b)
 {
 	return a && b ? strcmp(a, b) : compare3(a, b);
diff --git a/lib/string.c b/lib/string.c
index bf0f0455ab3f..695e50bc8fc1 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1000,3 +1000,31 @@ char *parse_assignment(char *str)
 
 	return value;
 }
+
+char *strjoin(const char *separator, char **arr, size_t arrlen)
+{
+	size_t separatorlen;
+	int len = 1; /* '\0' */
+	char *buf, *p;
+	int i;
+
+	separatorlen = strlen(separator);
+
+	for (i = 0; i < arrlen; i++)
+		len += strlen(arr[i]) + separatorlen;
+
+	if (!arrlen)
+		return xzalloc(1);
+
+	p = buf = xmalloc(len);
+
+	for (i = 0; i < arrlen - 1; i++) {
+		p = stpcpy(p, arr[i]);
+		p = mempcpy(p, separator, separatorlen);
+	}
+
+	stpcpy(p, arr[i]);
+
+	return buf;
+}
+EXPORT_SYMBOL(strjoin);
-- 
2.39.2



