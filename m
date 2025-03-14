Delivery-date: Fri, 14 Mar 2025 23:31:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttDYT-00EBcm-33
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 23:31:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttDYS-0006VS-Q1
	for lore@pengutronix.de; Fri, 14 Mar 2025 23:31:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EQ62+2TodV19V5KcXHtG6GtEnNQvZFDMDrl+acTurt4=; b=tK2zVusZ9NQ/jw6LrQnyJDVocB
	+f9cN592E4v/bBJNTmUh4oC8DCNhur9OAGAwF3nNhdKbASJ9D9uQ/jrX2fXDcVh0QKDiqPkYon5B1
	Jpg0oDLBFGWNh10oPJq2PaMu77CBhl4rfJ4DamDOYCZFg8Wnox1S1lmNnfde4b5s6FB7/v1Qt36BZ
	0TyTSUFE5vLZnwIKO6Iaq73bf6EkCxPr/tZBjf0urcDkCwy5zyiD7ruiuB3dy8RzGqBzU0PqhLgnS
	+fzFdqRC/cOLhRLhzZiSiUxI/tHBnyw9D06V39496NMpg+UMjhq+SiwqAYeHIZAsZA/8xpSt+6P2l
	LQ88sSiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDXo-0000000FRZP-0JYq;
	Fri, 14 Mar 2025 22:30:20 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDXk-0000000FRYq-3Ljy
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 22:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741991413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EQ62+2TodV19V5KcXHtG6GtEnNQvZFDMDrl+acTurt4=;
	b=sAc6pBOwpjTXqepg5GIsSSjRorbcDedTeW2ZRMpQiGjLDJmRS4trTgrrfY3TgYk6yihhE/
	CAmGHg1yfEoNKnfwae8OKWakHo8e5GcChd68cdaoBXXiz2gtnckcON8evVpyWPIpFwbHfE
	Ak6+7cEmxRQolLHLV76SUvjSlVLZpENHpvzYXiWrX2WWAWxB2RCAmJ8TQybHu7We4C6Xr3
	ObUWzsa4m/TN5ibj6T6gMg99bdtYpK9ZZVO454QxGowrlmhEYRLgTEmhOeq8uLyw4tZVNi
	QtT6lT2NsZp4CIn7IZE0xaHeLCRnvcwKxKTjOKo0lMbZsjDbJ+t+NtgYbNr5Uw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id a22072e5 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 23:30:13 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 23:30:07 +0100
Message-ID: <20250314223007.26457-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_153017_131029_ED35B533 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: of_display_timings: prevent memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

memory could be leaked if the S option is passed several time.
Also replace the xzalloc + strcpy call with a call to xstrdup.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 commands/of_display_timings.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index 232074fce7..5998d42ffe 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -42,7 +42,7 @@ static int do_of_display_timings(int argc, char *argv[])
 	struct device_node *root = NULL;
 	struct device_node *display = NULL;
 	struct device_node *timings = NULL;
-	char *timingpath = NULL;
+	const char *timingpath = NULL;
 	char *dtbfile = NULL;
 
 	while ((opt = getopt(argc, argv, "sS:lf:")) > 0) {
@@ -57,8 +57,7 @@ static int do_of_display_timings(int argc, char *argv[])
 			selected = 1;
 			break;
 		case 'S':
-			timingpath = xzalloc(strlen(optarg) + 1);
-			strcpy(timingpath, optarg);
+			timingpath = optarg;
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -108,7 +107,7 @@ static int do_of_display_timings(int argc, char *argv[])
 	}
 
 	if (timingpath)
-		of_register_fixup(of_display_timing, timingpath);
+		of_register_fixup(of_display_timing, xstrdup(timingpath));
 
 	return 0;
 }
-- 
2.48.1



