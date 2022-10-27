Delivery-date: Thu, 27 Oct 2022 10:49:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyZy-003uBC-8Z
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 10:49:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyZx-0002Wg-1S
	for lore@pengutronix.de; Thu, 27 Oct 2022 10:49:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=noYpMldPOVm59LFft9qrjHb551RUp1w2W/jfi1fw6Rw=; b=m+nc1EHimwghxi
	N7bxQTcIDNpwje3fZ1YhTg27sNnrdio0AYLaYXQGywxkuGuEpg5Pq8bv4wdoJnuh/bvwuyy8hlzrP
	gzsl61yH2QyFE+prEXk3d/fJcu1MxOpatCm6Jin1U4Ik6FB58ZPYTmgex/K4/4HWOMDjph3tqNHFG
	vUdkr1YhLZqXnPyly0n+XLWbULRc9scRhNYf/auzvfuTSwAZKssBP00ieTRZY/rbGUz1tY2xW8ikv
	KHZ3YWPacj+6QT7CmosiFvyfEs7rNyvSghoq6v66ped6t1raIU5Ale5Gu3e1xPgjJV1Xo5ptD2Oob
	jWs55Cig8BsXVDKO/LCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyYP-00CSby-Lx; Thu, 27 Oct 2022 08:47:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyYL-00CSb2-HH
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 08:47:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYI-0002IR-56; Thu, 27 Oct 2022 10:47:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYH-000fPa-L7; Thu, 27 Oct 2022 10:47:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYF-001esU-Rm; Thu, 27 Oct 2022 10:47:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Oct 2022 10:47:44 +0200
Message-Id: <20221027084745.395052-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_014753_609808_BEA8244C 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: afa@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] hush: Fix handling '\ '
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently when doing:

echo foo\ bar

we will get argv[1] = "foo\" and argv[2] = "bar".

An unquoted escaped whitespace should be replaced by a whitespace.
With this the above will correctly result in argv[1] = "foo bar"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 6a089fabf1..5138a1a45a 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -617,6 +617,7 @@ static int builtin_exit(struct p_context *ctx, struct child_prog *child,
 static void remove_quotes_in_str(char *src)
 {
 	char *trg = src;
+	bool in_double_quotes = false;
 
 	while (*src) {
 		if (*src == '\'') {
@@ -629,6 +630,7 @@ static void remove_quotes_in_str(char *src)
 
 		/* drop quotes */
 		if (*src == '"') {
+			in_double_quotes = !in_double_quotes;
 			src++;
 			continue;
 		}
@@ -654,6 +656,13 @@ static void remove_quotes_in_str(char *src)
 			continue;
 		}
 
+		/* replace '\ ' with ' ' */
+		if (!in_double_quotes && *src == '\\' && *(src + 1) == ' ') {
+			*trg++ = ' ';
+			src += 2;
+			continue;
+		}
+
 		*trg++ = *src++;
 	}
 	*trg = 0;
-- 
2.30.2



