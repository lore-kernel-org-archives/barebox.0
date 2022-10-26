Delivery-date: Wed, 26 Oct 2022 08:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8c-002guv-2l
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8a-0000LC-V2
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aKWE5h8xYoRCTNflbfCO7VF2iJVcueEZItO0gGv9Wtg=; b=Mhmh51/k6bgWyE7rbgb9OVIeO3
	RkLXHcy6b7k+5bqor/AdcECShaxDdIPQSUk/bVOiW8CKN1zAAjDj2qoPOV+jT1/9j06kdon7AhXWq
	Et+PHEwC5trfIedcrsi37ImxhU+n3Wlf8vwKlbSrAv1Kf6+GIQXwu3Yqrcbk35ahQCd2EdV4OlyUJ
	bD/phkhH+auz5vGXtTejCef2iuWJMpDgTDq2Ce1siKndiyfsouaUy3QWCQYI11vfYxPU7u+M16MXX
	a5MZfJ2OyVQw5y1L1ynYYIjcvJDo+KFawN9uH1mjyzucFmMwtben8Do7d8YPwVi0NtILdrX4bQarT
	qjWJyrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7J-008IKc-Q5; Wed, 26 Oct 2022 06:42:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona76-008IFZ-IE
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008W5-BN; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHZ-K7; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyW-NW; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:01 +0200
Message-Id: <20221026064205.2360041-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234208_616103_AD1F0D3F 
X-CRM114-Status: GOOD (  13.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] commands: time: refactor into new strjoin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

time concatenates all its remaining arguments with a space in-between
and then passes that to the command executor. This can be useful
elsewhere as well, so factor it out into a new strjoin function.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/time.c  | 11 +----------
 include/string.h |  2 ++
 lib/string.c     | 22 ++++++++++++++++++++++
 3 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 5b8933ea6553..336128f6a9be 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -12,26 +12,17 @@ static int do_time(int argc, char *argv[])
 	unsigned char *buf;
 	u64 start, end, diff64;
 	bool nanoseconds = false;
-	int len = 1; /* '\0' */
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	for (i = 1; i < argc; i++)
-		len += strlen(argv[i]) + 1;
-
-	buf = xzalloc(len);
-
 	i = 1;
 	if (!strcmp(argv[i], "-n")) {
 		nanoseconds = true;
 		i++;
 	}
 
-	for (; i < argc; i++) {
-		strcat(buf, argv[i]);
-		strcat(buf, " ");
-	}
+	buf = strjoin(" ", &argv[i], argc - i);
 
 	start = get_time_ns();
 
diff --git a/include/string.h b/include/string.h
index d423bee6fba5..2cc727fd1d7a 100644
--- a/include/string.h
+++ b/include/string.h
@@ -17,4 +17,6 @@ void *__nokasan_default_memcpy(void * dest,const void *src,size_t count);
 
 char *parse_assignment(char *str);
 
+char *strjoin(const char *separator, char **array, size_t len);
+
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index 6389217d5b41..a500e8a3d1ba 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -938,3 +938,25 @@ char *parse_assignment(char *str)
 
 	return value;
 }
+
+char *strjoin(const char *separator, char **arr, size_t arrlen)
+{
+	size_t separatorlen;
+	int len = 1; /* '\0' */
+	char *buf;
+	int i;
+
+	separatorlen = strlen(separator);
+
+	for (i = 0; i < arrlen; i++)
+		len += strlen(arr[i]) + separatorlen;
+
+	buf = xzalloc(len);
+
+	for (i = 0; i < arrlen; i++) {
+		strcat(buf, arr[i]);
+		strcat(buf, separator);
+	}
+
+	return buf;
+}
-- 
2.30.2



