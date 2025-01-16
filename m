Delivery-date: Thu, 16 Jan 2025 15:10:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaI-000cZR-2e
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:10:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaI-0002iy-Ja
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:10:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bE8C3ri3+XoXvteC+7UJmSv46WoSPx0g5s6s0X/B/qg=; b=FwFUcKXxeooLt1ftJzhPZHXvuc
	dnli+wcuId+U/OJjRueaj2kV9bHkz9SVcjZX1MYtpIYuyXwlmeJ7P8SYeMKtbTDQZlHe1mMchlSp4
	36UgM3Lbgwh8DU2He+jv8c3uEzDnFnFStwk6xVwNRP4BBRTFjyuiHVtj7E4XdXKlZyhzHm5TaNCYn
	NvN8N8QH3lN3qMmOkv2yqlUgWNmY+5fzkwV6iuB05bwuh9cDMTcVbSJe45gIDrw0tIiROBPxU7GKA
	MIqSkJkEFVl+c32tdTNPgyBtts3ahnj0wVV2YUOcNuuTdDdWRGjfCNtRMK8I9a10M8PiyKNPcfzTM
	xkBMCNQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQZm-0000000F6jk-0O89;
	Thu, 16 Jan 2025 14:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQXK-0000000F60q-39Dl
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:07:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXJ-000297-H4; Thu, 16 Jan 2025 15:07:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXJ-000GZt-17;
	Thu, 16 Jan 2025 15:07:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXJ-001FYF-39;
	Thu, 16 Jan 2025 15:07:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:07:52 +0100
Message-Id: <20250116140752.298077-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_060754_786413_2EB65E53 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] dmesg: restrict output to default log level by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When loglevel is set to debug, dmesg shows a torrent of messages,
because by default it shows all messages logged regardless of the
default log level.

To make it more convenient to use, change this to only print the same
messages that are synchronously printed by default.

Users wanting to see more can specify a log level via an extra argument
to the dmesg command.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/dmesg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 8a60f075076e..99675b6c2804 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -78,7 +78,7 @@ static int do_dmesg(int argc, char *argv[])
 {
 	int opt, ret, i;
 	int delete_buf = 0, emit = 0;
-	unsigned flags = 0, levels = 0;
+	unsigned flags = 0, levels = GENMASK(CONFIG_DEFAULT_LOGLEVEL, 0);
 	char *set = NULL;
 
 	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
-- 
2.39.5



