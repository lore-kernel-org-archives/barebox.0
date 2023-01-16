Delivery-date: Mon, 16 Jan 2023 14:42:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkX-00Dbim-Qv
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:42:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkV-0007b9-Id
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:42:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HRfaaT7yzVxzXMlE+pT9oIvzf0iB9BIRwcgxmxZGFLw=; b=s7UL7R6LxHyfuYeR5GghLpqXEE
	B6biXb97GVUiVUuRrIwrJOh7ipi2oHYYYkISIU3KqOGKxCPArRzqF/6vKnLtbCD2IEoHRkg/UOf0Y
	oqOkpAVUnDw78jTf+rmW5/xTFJYfADS1lFUzFzt6RFZ3FaSNOSZy0eEFdAC5e07AzbMjI4+IEEcQf
	0Uu5fA128vWHtfGcN6vSSY7euMlPnJXg4lmy+c4LsKegGyJ8v+N10OdwZfUGQxZDFfWqvsbbzjtZM
	V7Gcq3RU6tqoiewGOV1RP0XErhf9/JR7/105xUJOqvAGmnOjbClWPQQ3zNMbuR9VbYea8vIVEdC1d
	0kx1ChYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPj2-00AVvT-Pw; Mon, 16 Jan 2023 13:40:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPfG-00AUI4-C2
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:36:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfF-0006Wh-21; Mon, 16 Jan 2023 14:36:41 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfE-006SIJ-E4; Mon, 16 Jan 2023 14:36:40 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfD-008OMq-MJ; Mon, 16 Jan 2023 14:36:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:36:38 +0100
Message-Id: <20230116133639.1999170-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
References: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_053642_460150_83B0D0CF 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] i2c: write debug print when registering any i2c client
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's no debug message when registering a device over DT, only via
legacy board info. Add a common print instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index a7b5cb94ff13..3b5e68618dff 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -410,6 +410,9 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	if (chip->of_node)
 		chip->of_node->dev = &client->dev;
 
+	dev_dbg(&client->dev, "registered on bus %d, chip->addr 0x%02x\n",
+		adapter->nr, client->addr);
+
 	return client;
 }
 
@@ -541,7 +544,6 @@ static void scan_boardinfo(struct i2c_adapter *adapter)
 			continue;
 
 		for (n = bi->n_board_info; n > 0; n--, chip++) {
-			debug("%s: bus_num: %d, chip->addr 0x%02x\n", __func__, bi->bus_num, chip->addr);
 			/*
 			 * NOTE: this relies on i2c_new_device to
 			 * issue diagnostics when given bogus inputs
-- 
2.30.2



