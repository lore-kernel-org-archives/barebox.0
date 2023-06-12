Delivery-date: Mon, 12 Jun 2023 14:33:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk1-003pFw-68
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gjy-0002Qc-O5
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S3cGCiDHdaR8sOcbXzKllErCUfogBpB7LxRIbDJdIMI=; b=PG/In1E+ZN7IFiJ7OcYO7TCzRv
	mQHjkB10CGsCStmCEfzmLKWFbkWOlZ/Vb9Bskw7rq5IQBPmBKKYnDlNm16ygK5UndazaNUSQhVcsB
	WsyvMH/Qv4330tQN8I+mKxuDE/aodKWMdvnASGqKb/R26zkX5qxQriL/HP6qxJe4GhyZ4HfPmY7+d
	ZbX/kPCByfj832zDAQ6WaekIOVzjI7pcovYIwMGHoku6PHsNaXwfd6UI2rnN1c/YXazTFXGbVx5lq
	494uIIqyyLq5annmd6CeAyYACBsUsfCybxnOcgMtq2fes/DeyaXGoUYjMnePJQzqhRZwf9sPqk1gG
	GK1X+wgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gix-0041g4-0Q;
	Mon, 12 Jun 2023 12:32:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gip-0041bl-3A
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-0002BU-Pe; Mon, 12 Jun 2023 14:32:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-006syK-5e; Mon, 12 Jun 2023 14:32:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1C9-2S; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:28 +0200
Message-Id: <20230612123232.3071957-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612123232.3071957-1-s.hauer@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053236_018496_F161A651 
X-CRM114-Status: GOOD (  12.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] dmesg: factor out str_to_loglevel()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dmesg open codes functionality to convert a string to a loglevel.
Make a separate function from it which will be useful in the next
patch.
While at it remove the BAREBOX_LOG_PRINT_* defines and use MSG_*
defines directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dmesg.c       | 47 ++++++++++++++++++++++++++----------------
 include/linux/printk.h | 10 ---------
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 15ad449639..339910bb76 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -11,6 +11,30 @@
 #include <getopt.h>
 #include <clock.h>
 
+static int str_to_loglevel(const char *str)
+{
+	if (!strcmp(str, "vdebug"))
+		return MSG_VDEBUG;
+	if (!strcmp(str, "debug"))
+		return MSG_DEBUG;
+	if (!strcmp(str, "info"))
+		return MSG_INFO;
+	if (!strcmp(str, "notice"))
+		return MSG_NOTICE;
+	if (!strcmp(str, "warn"))
+		return MSG_WARNING;
+	if (!strcmp(str, "err"))
+		return MSG_ERR;
+	if (!strcmp(str, "crit"))
+		return MSG_CRIT;
+	if (!strcmp(str, "alert"))
+		return MSG_ALERT;
+	if (!strcmp(str, "emerg"))
+		return MSG_EMERG;
+
+	return -EINVAL;
+}
+
 static unsigned dmesg_get_levels(const char *__args)
 {
 	char *args = xstrdup(__args);
@@ -18,28 +42,15 @@ static unsigned dmesg_get_levels(const char *__args)
 	unsigned flags = 0;
 
 	while (1) {
+		int level;
+
 		str = strsep(&levels, ",");
 		if (!str)
 			break;
 
-		if(!strcmp(str, "vdebug"))
-			flags |= BAREBOX_LOG_PRINT_VDEBUG;
-		else if(!strcmp(str, "debug"))
-			flags |= BAREBOX_LOG_PRINT_DEBUG;
-		else if(!strcmp(str, "info"))
-			flags |= BAREBOX_LOG_PRINT_INFO;
-		else if(!strcmp(str, "notice"))
-			flags |= BAREBOX_LOG_PRINT_NOTICE;
-		else if(!strcmp(str, "warn"))
-			flags |= BAREBOX_LOG_PRINT_WARNING;
-		else if(!strcmp(str, "err"))
-			flags |= BAREBOX_LOG_PRINT_ERR;
-		else if(!strcmp(str, "crit"))
-			flags |= BAREBOX_LOG_PRINT_CRIT;
-		else if(!strcmp(str, "alert"))
-			flags |= BAREBOX_LOG_PRINT_ALERT;
-		else if(!strcmp(str, "emerg"))
-			flags |= BAREBOX_LOG_PRINT_EMERG;
+		level = str_to_loglevel(str);
+		if (level >= 0)
+			flags |= BIT(level);
 	}
 
 	free(args);
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 42c29e04dd..057b355aa1 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -159,16 +159,6 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_DIFF_TIME		BIT(1)
 #define BAREBOX_LOG_PRINT_TIME		BIT(0)
 
-#define BAREBOX_LOG_PRINT_VDEBUG	BIT(8)
-#define BAREBOX_LOG_PRINT_DEBUG		BIT(7)
-#define BAREBOX_LOG_PRINT_INFO		BIT(6)
-#define BAREBOX_LOG_PRINT_NOTICE	BIT(5)
-#define BAREBOX_LOG_PRINT_WARNING	BIT(4)
-#define BAREBOX_LOG_PRINT_ERR		BIT(3)
-#define BAREBOX_LOG_PRINT_CRIT		BIT(2)
-#define BAREBOX_LOG_PRINT_ALERT		BIT(1)
-#define BAREBOX_LOG_PRINT_EMERG		BIT(0)
-
 int log_writefile(const char *filepath);
 void log_print(unsigned flags, unsigned levels);
 
-- 
2.39.2



