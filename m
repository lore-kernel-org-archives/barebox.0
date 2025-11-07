Delivery-date: Fri, 07 Nov 2025 13:01:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9s-00GHqn-1e
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 13:01:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9r-0007h1-V3
	for lore@pengutronix.de; Fri, 07 Nov 2025 13:01:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9yt3JHLBzCE6MsgBDUdzKbZNgZLG0Az/OWl9ab31GGs=; b=rWwrY7qzzxvPCAWxso9iofA5de
	GtGoseJt06MxF2hM8VtfDvyprEUHA/c4jQqakVvBoEPVp/qKeDJglqekpgfS7K98eNB+hXQB1tRmF
	V1CBBo66U7r9uE5WH+GV7R57psJLO64MLo2cBOSBHO6lnRl0TdC5PkQLu/E4Bu5cPyDmW0m3LaIjU
	edaSswpVTgtQpbBj17qfSeGNFz6mYifOgMMOdM8Srjp8KAIulXKMcnLMtskFRyyVNkTcVefC+GqZr
	W1dz5ip/2okOA51rBAYi64WJH5YdjK9f5vfvzMaealzV7gmMWgW92N9zBeFMm97pl4xP98LEo9U5Q
	IRxOlEcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9I-0000000HG67-1YKj;
	Fri, 07 Nov 2025 12:01:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9E-0000000HG5P-1776
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 12:00:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-0007KD-FC; Fri, 07 Nov 2025 13:00:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-007WR6-0c;
	Fri, 07 Nov 2025 13:00:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-00000000sNa-2MG4;
	Fri, 07 Nov 2025 13:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 13:00:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-memleaks-v1-4-c7b74a2ae9db@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
In-Reply-To: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762516853; l=1744;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8oQ9HwBtcCU/TZKSIHwCsAoli0EttyeaF51iUGRfCEo=;
 b=y2rmKPlS8lBEEzBxNI0KdfF5JbyYI/UmIpc4VFCA+QMHCNtyvRTwA9XEMgKF8C9LBn+VbUrWB
 RkSomBj8xDTDuCTdhNEtbkIkFz0O+rg2yKqTs1qRXP5mqY6G2fFYmVq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_040056_309061_872321AC 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] bfetch: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

string_list_join() returns an allocated string. Free it after usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bfetch.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/commands/bfetch.c b/commands/bfetch.c
index a44d5a000667c0802a3795bbb64ead9362ebb944..19647deecf0a94e6175fc4e1fad8a4a512c4c3df 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -171,9 +171,17 @@ static inline bool __print_string_list(unsigned *line, const char *key,
 				       struct string_list *sl,
 				       const char *joinstr)
 {
+	char *str;
+
 	if (string_list_empty(sl))
 		return false;
-	print_line(key, "%s", string_list_join(sl, joinstr));
+
+	str = string_list_join(sl, joinstr);
+
+	print_line(key, "%s", str);
+
+	free(str);
+
 	return true;
 }
 #define print_string_list(k, sl, js) __print_string_list(line, k, sl, js)
@@ -309,8 +317,13 @@ static void print_shell_console(unsigned *line)
 
 	for_each_console(console)
 		string_list_add(&sl, console->devfs.name);
-	if (!string_list_empty(&sl))
-		print_line("Consoles", "%s", string_list_join(&sl, " "));
+	if (!string_list_empty(&sl)) {
+		char *str = string_list_join(&sl, " ");
+	
+		print_line("Consoles", "%s", str);
+
+		free(str);
+	}
 
 	string_list_free(&sl);
 }
@@ -332,8 +345,13 @@ static void print_framebuffers(unsigned *line)
 					 info->bits_per_pixel);
 	}
 
-	if (!string_list_empty(&sl))
-		print_line("Framebuffers", "%s", string_list_join(&sl, ", "));
+	if (!string_list_empty(&sl)) {
+		char *str = string_list_join(&sl, ", ");
+
+		print_line("Framebuffers", "%s", str);
+
+		free(str);
+	}
 
 	string_list_free(&sl);
 }

-- 
2.47.3



