Delivery-date: Wed, 03 Jan 2024 19:36:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66s-002OIH-1v
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66n-0008K0-0P
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E/PxHNFNsDS2hPUh7ljt4LCyR6UshcPaSYPkXMnU4S8=; b=xTml1TJeHRABJoRjO4VQ1g6awR
	1fAGStEp4q4/4PjSoHHoKYZuTJ7VJyAs2kSZmYBWP6/SAK8KWTMf38P5c+WQp43p5HbDQ/k3R8RXB
	47uzT2kjNjBLtji7O0pOvLb5DiD6/rWEcVTzzevhCEIAwXq7a0uhP72iSANk1BXbORtPSsZs0zEC9
	JQ/OdTTu/9ZSEqaDZmx7kWRJyEWTs98pxTx3R1vrJDlC88r+5m6dnsu9vKnwu/dQw8K2lH2V6bdiq
	CDPMT8d/GuxtS2nH53lzCUz1MSSpLNzKYrZf6k++nIUxLuQDgTn68+HZbdUZolY2GITn7E7zVJxGc
	a5aNB0bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL658-00Blv6-0G;
	Wed, 03 Jan 2024 18:35:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61Q-00BhUj-0j
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=E/PxHNFNsDS2hPUh7ljt4LCyR6UshcPaSYPkXMnU4S8=; b=ML27agpU6JitguK6ueOLFB8BhZ
	2GttMvmdEcFFBtGlPdyyTFgCZR00GdUdbAl6JbXQNgjhZo7S+ApSOij+oJ7Xz5WcO5W/NaPtmJHjB
	pkhoTjUg90o3veQ3zZd1Jjte0bzj4aPMgoHwzwZU+gd68JBk+GX6b40JDzJb1JK6fd2m7FsH0FfTd
	zGIMgVW9r3N6DQ4ZCYhBZCOQlutEJMnUCVkfIyZfyHev5my3uCSUlFc6nz8mszDaIN6E4anfDGwpg
	GjHRBLnPTMXsutWSx6g8i+qJG4YA9ITZi9yUsaViI77skRDc8UQGDaXbEHe8NBv0Vj74EIy/L4iC6
	uWGAavyA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61I-00DIm6-7E
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001X2-Co; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AvC-WC; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-05;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:06 +0100
Message-Id: <20240103181312.409668-47-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183113_616726_BD4BD13C 
X-CRM114-Status: GOOD (  11.91  )
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
Subject: [PATCH 046/112] commands: time: refactor into new strjoin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

time concatenates all its remaining arguments with a space in-between
and then passes that to the command executor. This can be useful
elsewhere as well, so factor it out into a new strjoin function.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/time.c  | 11 +----------
 include/string.h |  2 ++
 lib/string.c     | 23 +++++++++++++++++++++++
 3 files changed, 26 insertions(+), 10 deletions(-)

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
index bf0f0455ab3f..d8e5edd40648 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1000,3 +1000,26 @@ char *parse_assignment(char *str)
 
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
+EXPORT_SYMBOL(strjoin);
-- 
2.39.2



