Delivery-date: Mon, 13 Dec 2021 22:11:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbJ-005g88-CK
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbG-0003GH-Eh
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg+3KJ+W/lx37tgqeADXo1yb7v1S/QnfUoSd7xDdZxE=; b=EPGRPV/n6kFySH
	Bv2M9YXynZjKzcYz64JR5cFhQ2QXuKxh/HSD6Qm6qz4HktpprjTckMMRTNrVEKekK0nSNvCIxMul+
	aQqYpA2fbWPafNTZeZYAgrtBTqYz+MIKzOQSVJY4J1gz0Iw5qgtA4Q5X/ffUXWm9uCxPMs+4vPYhL
	sRgFCCA2LxzHpewmcn0vZea8AB5nWnnm4fH/ZI3D24ZsiQCHpKbG6+trZ0OJ+0zCHVLq85EUubSzd
	j6vAD314v6oZnTF5KKsJ2L1/pGCDAbqsUwS364I733/dBe1T0KT709i0O6Ult6UZWoeJgepLt9FD+
	yMMIg9VQDKa/Q6vmwOzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZj-00BP0Y-Qe; Mon, 13 Dec 2021 21:09:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoU-2i
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002St-Kg; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGol-5i; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:45 +0100
Message-Id: <20211213210905.3399551-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_154579_8A6674CF 
X-CRM114-Status: UNSURE (   9.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/25] console: Fix message colours
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The correct code to change colours is "\033[1;31m", not "\033[31m". Fix
that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 91a81e50fa..7bef74c543 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -23,12 +23,12 @@
 #ifndef CONFIG_CONSOLE_NONE
 
 static const char *colored_log_level[] = {
-	[MSG_EMERG] = "\033[31mEMERG:\033[0m ",		/* red */
-	[MSG_ALERT] = "\033[31mALERT:\033[0m ",		/* red */
-	[MSG_CRIT] = "\033[31mCRITICAL:\033[0m ",	/* red */
-	[MSG_ERR] = "\033[31mERROR:\033[0m ",		/* red */
-	[MSG_WARNING] = "\033[33mWARNING:\033[0m ",	/* yellow */
-	[MSG_NOTICE] = "\033[34mNOTICE:\033[0m ",	/* blue */
+	[MSG_EMERG] = "\033[1;31mEMERG:\033[0m ",	/* red */
+	[MSG_ALERT] = "\033[1;31mALERT:\033[0m ",	/* red */
+	[MSG_CRIT] = "\033[1;31mCRITICAL:\033[0m ",	/* red */
+	[MSG_ERR] = "\033[1;31mERROR:\033[0m ",		/* red */
+	[MSG_WARNING] = "\033[1;33mWARNING:\033[0m ",	/* yellow */
+	[MSG_NOTICE] = "\033[1;34mNOTICE:\033[0m ",	/* blue */
 };
 
 int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

