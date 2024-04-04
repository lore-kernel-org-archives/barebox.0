Delivery-date: Thu, 04 Apr 2024 13:16:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsL4k-009W5l-33
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 13:16:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsL4k-0002wX-CQ
	for lore@pengutronix.de; Thu, 04 Apr 2024 13:16:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gbsgqQIgP/kLpUllANqP6jXUu3+sbdq9AHbN4q0/wDo=; b=tUQWzVuHAnSolhKpfF3pxeB9S8
	dc825iUnwvH6vUGVret35m8rJjRwqoiv53r9HAUc4Hei1yYwumWKjZOjckRGVTx9F5d2vEuYa/mur
	2KZUfHbFe6f7WMPPHP6zmqQZMbSnNPtBpWxpStIddFsDncxKqeHqsdwqB1lpoEXPTS253dZH1Si/S
	qTtPhu3N8J/DtoPaCv83cs8JerwFdKTgcD1KPDRw5wallsigAofXMfAL9bdt1rIVJTm0XNrGZQN2G
	tP9rHkCdvli+qw0XP43fi1oGza44b4FDxxlKEE5xqp0uqxmCUbYrp92LsVNRUOe5XbeqMpcfKj+wO
	cxKhaL/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsL4J-00000002LOr-44Tm;
	Thu, 04 Apr 2024 11:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsL4G-00000002LNW-1ikr
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 11:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4F-0002Oj-3X; Thu, 04 Apr 2024 13:15:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4E-00AMOB-MF; Thu, 04 Apr 2024 13:15:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsL4E-008kbY-1h;
	Thu, 04 Apr 2024 13:15:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Apr 2024 13:15:26 +0200
Message-Id: <20240404111527.2083308-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_041540_467799_F9F2CD6A 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] aiodev: add helper for getting a value by its channel name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's a common pattern to get an aiochannel by name and the value
afterwards. Add a helper for this pattern.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/aiodev/core.c | 12 ++++++++++++
 include/aiodev.h      |  9 +++++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index 1fbb7b9188..5bdc4d83d4 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -73,6 +73,18 @@ int aiochannel_get_value(struct aiochannel *aiochan, int *value)
 }
 EXPORT_SYMBOL(aiochannel_get_value);
 
+int aiochannel_name_get_value(const char *chname, int *value)
+{
+	struct aiochannel *aio;
+
+	aio = aiochannel_by_name(chname);
+	if (IS_ERR(aio))
+		return PTR_ERR(aio);
+
+	return aiochannel_get_value(aio, value);
+}
+EXPORT_SYMBOL(aiochannel_name_get_value);
+
 int aiochannel_get_index(struct aiochannel *aiochan)
 {
 	return aiochan->index;
diff --git a/include/aiodev.h b/include/aiodev.h
index 56bd2da9f5..fb0807ad42 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -47,4 +47,13 @@ static inline const char *aiochannel_get_unit(struct aiochannel *aiochan)
 extern struct list_head aiodevices;
 #define for_each_aiodevice(aiodevice) list_for_each_entry(aiodevice, &aiodevices, list)
 
+#ifdef CONFIG_AIODEV
+int aiochannel_name_get_value(const char *chname, int *value);
+#else
+static inline int aiochannel_name_get_value(const char *chname, int *value)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 #endif
-- 
2.39.2



