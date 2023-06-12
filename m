Delivery-date: Mon, 12 Jun 2023 14:33:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk3-003pH2-0i
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk0-0002RI-MT
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NcKhBnyAqQE4FpboVaCu0WH1vFMAS38BpE5wDeWzMrw=; b=XRuNtM1Thnm8cyqujPuCDKDVst
	rqX2PGtWOgt8Hhep5m5ei+WX3AUHyazw6zXhTvms2btdJ2Qq6oDyJcYx/6OmiNsTdTEIJz3QauzYe
	kiEBNB3PivnwpGX9lzhz1BSX45W71ZQB4Kr/1PrbXMKZDxfrR/o2BBit8kv3KQf9DeCo8QlB6Sg/x
	EvUKdthpU6QGtDaRbadJylQ73R1TpuGmk8Z/dYuUba4+0ixdlUZSrpPzyns+2PDd5WDlUUyXNO9rB
	PZaJG/IICzvt0KW3+x3F998F6GFL5+8ID1m8m4qczhlmUmOuEcgFILzscPzkpDQVYt3fE4ihxjoEk
	zexqJUJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giw-0041fX-1K;
	Mon, 12 Jun 2023 12:32:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giq-0041bq-0g
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-0002Bi-Vx; Mon, 12 Jun 2023 14:32:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-006syP-Bc; Mon, 12 Jun 2023 14:32:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1CS-3J; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:29 +0200
Message-Id: <20230612123232.3071957-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612123232.3071957-1-s.hauer@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053236_253447_8AF6C93D 
X-CRM114-Status: GOOD (  11.33  )
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
Subject: [PATCH 2/5] dmesg: error out on unknown loglevels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The user deserves an error when an unknown loglevel is given, so
print an error instead of silently ignoring unknown loglevels.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dmesg.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 339910bb76..2a36710b98 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -32,6 +32,8 @@ static int str_to_loglevel(const char *str)
 	if (!strcmp(str, "emerg"))
 		return MSG_EMERG;
 
+	printf("dmesg: unknown loglevel %s\n", str);
+
 	return -EINVAL;
 }
 
@@ -51,6 +53,8 @@ static unsigned dmesg_get_levels(const char *__args)
 		level = str_to_loglevel(str);
 		if (level >= 0)
 			flags |= BIT(level);
+		else
+			return 0;
 	}
 
 	free(args);
@@ -81,7 +85,7 @@ static int do_dmesg(int argc, char *argv[])
 		case 'l':
 			levels = dmesg_get_levels(optarg);
 			if (!levels)
-				return COMMAND_ERROR_USAGE;
+				return COMMAND_ERROR;
 			break;
 		case 'r':
 			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
-- 
2.39.2



