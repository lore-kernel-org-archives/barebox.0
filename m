Delivery-date: Wed, 17 Sep 2025 15:37:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysLE-0045VA-0W
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:37:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysLD-0004Hh-J7
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:37:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DBq6z8I18AQWFxdapj2ZTyrydpGz2fd7cZRGG5yCAAQ=; b=UqjVPPDed1ubItmO+qRsE4GSrR
	NvInJQygjqnK8048x0GhGiiC42c+UKEW+jyCjJqsGspV4+Qy6R8viL9qYxJE/hMsdBcGMZ2fJQGJP
	mYGV2s+DlJe3zy1Mq+ulUeg7APBXybs194Zt6Ld3E3ma4xxHqlncUxfrI6ArntJ6w95tF9UL6NHnf
	2lOdIdR953D3cHH9Do9Rahq+k+D9NNzEqWSgsX5k+F92IPxKIgiHt9oJ/FVkfwuddqQQ9Rt+vFx8Y
	Vm/rvPOYHX8xnhN+zSJYReILYYLXPUWAowDifw2kjzj1YZ9FtxZgzErZODYga4Ep3OC+MUe+weSSY
	EpglsG7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysKk-0000000BkuY-1W08;
	Wed, 17 Sep 2025 13:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysKh-0000000Bkqf-1Ylx
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:36:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysKf-00049b-Pu; Wed, 17 Sep 2025 15:36:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysKf-001ls6-1y;
	Wed, 17 Sep 2025 15:36:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysKf-0000000CYmo-27An;
	Wed, 17 Sep 2025 15:36:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Sep 2025 15:36:24 +0200
Message-ID: <20250917133624.2993647-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_063627_407329_7C54DBFD 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] hush: fix last_return_code when PROMPT_COMMAND is used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Wenn PROMPT_COMMAND is used then a "echo $?" shows the result of the
PROMPT_COMMAND instead of the result of the last command. Fix this by
restoring the previous value after PROMPT_COMMAND has been executed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 8515e77338..ec3c0cd913 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -433,9 +433,13 @@ static char *getprompt(void)
 
 	prompt_command = getenv("PROMPT_COMMAND");
 	if (prompt_command) {
+		unsigned int lr = last_return_code;
+
 		initialize_context(&ctx);
 		parse_string_outer(&ctx, prompt_command, FLAG_PARSE_SEMICOLON);
 		release_context(&ctx);
+
+		last_return_code = lr;
 	}
 
 	ps1 = getenv("PS1");
-- 
2.47.3



