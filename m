Delivery-date: Wed, 06 Mar 2024 19:46:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHQ-00BCAP-1i
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 19:46:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHP-00080p-Nu
	for lore@pengutronix.de; Wed, 06 Mar 2024 19:46:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CK6XUwEXdzyCzVHGqpf7MFjHBtoGd1d+zKppXfa8P7Y=; b=kB+w/O2MNHKF1wAsepcmi8z/5h
	000dMgfleDLwPleXk6buxO96OcGUSescIca2LPn1eRmZQ4kwC8pMs2Pb8zXrwVXWt3tRk8GYGpWJy
	+i+GBLn8Oa8BEK7uSGr2j2Pn7vnhhjhS8TR/Wn8VRlHEAVqOHVeWyWj6/mODKWNHMA2knp9wVqm3J
	ssSpDE4I4RkPcCQ0O2NM49aOkhOHyunGSPUq3qbmDlId4O2JTLzHwcV8QXX4S3MTckebQe0YXoMPG
	atHSoIySdNatMtBfZHr059drkxTQnM9DSsbegccmwH9yN2ugzv91WwLl9PogriwK2jjSES2m4OqBl
	/OHqwuDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGi-00000001W92-1ekk;
	Wed, 06 Mar 2024 18:45:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGd-00000001W5f-1pNh
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 18:45:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGY-0006z4-6M; Wed, 06 Mar 2024 19:45:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGX-004nZR-QB; Wed, 06 Mar 2024 19:45:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGX-002d3R-0d;
	Wed, 06 Mar 2024 19:45:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Mar 2024 19:45:19 +0100
Message-Id: <20240306184519.626594-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240306184519.626594-1-a.fatoum@pengutronix.de>
References: <20240306184519.626594-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_104527_707325_EDD006E3 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] commands: dmesg: support aborting dmesg output with ctrl-c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dmesg output can get very long, especially if debug messages are
compiled in and the maximum number of retained log messages is
increased.

Therefore, follow what we do for other potentially long-running
commands and allow the user to abort it with ctrl+c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/dmesg.c        | 6 ++++--
 common/console_common.c | 6 +++++-
 include/linux/printk.h  | 2 +-
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 83410234e1d6..8a60f075076e 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -76,7 +76,7 @@ static unsigned dmesg_get_levels(const char *__args)
 
 static int do_dmesg(int argc, char *argv[])
 {
-	int opt, i;
+	int opt, ret, i;
 	int delete_buf = 0, emit = 0;
 	unsigned flags = 0, levels = 0;
 	char *set = NULL;
@@ -148,7 +148,9 @@ static int do_dmesg(int argc, char *argv[])
 		return 0;
 	}
 
-	log_print(flags, levels);
+	ret = log_print(flags, levels);
+	if (ret)
+		return 1;
 
 	if (delete_buf)
 		log_clean(10);
diff --git a/common/console_common.c b/common/console_common.c
index d25fb0dc5dde..631756e4800c 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -208,7 +208,7 @@ int log_writefile(const char *filepath)
 	return ret < 0 ? ret : nbytes;
 }
 
-void log_print(unsigned flags, unsigned levels)
+int log_print(unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
 	unsigned long last = 0;
@@ -219,6 +219,8 @@ void log_print(unsigned flags, unsigned levels)
 
 		if (levels && !(levels & (1 << log->level)))
 			continue;
+		if (ctrlc())
+			return -EINTR;
 
 		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
 			       | BAREBOX_LOG_DIFF_TIME)))
@@ -247,6 +249,8 @@ void log_print(unsigned flags, unsigned levels)
 
 		printf("%s", log->msg);
 	}
+
+	return 0;
 }
 
 int printf(const char *fmt, ...)
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 0e9604bbe967..07403ea60cb7 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -189,7 +189,7 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_PRINT_TIME		BIT(0)
 
 int log_writefile(const char *filepath);
-void log_print(unsigned flags, unsigned levels);
+int log_print(unsigned flags, unsigned levels);
 
 struct va_format {
 	const char *fmt;
-- 
2.39.2



