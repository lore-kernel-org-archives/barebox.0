Delivery-date: Thu, 01 Aug 2024 09:10:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZPws-0053Dx-1J
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 09:10:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZPwr-0006N4-Nk
	for lore@pengutronix.de; Thu, 01 Aug 2024 09:10:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HN5f7ietgRJtzJy01bqGrVZA8uZ/uxIsWLzM7Y9G0W8=; b=zqaKfB7vthztJ6bBu8pO1PsJaV
	HGV5q2O9bBsd9OW0UWQCF8P/k/AEnTE5yxQeb7iAZYMGtFbbSlQjyB3rNLd8ezr0gLoSaJjiJ2gBM
	7Ksqf/GexE46UmLoXuxHixYBGZ1gpO53Ylsmnss9Vk4j6vgkiEW6TthW0HkzXcB+VnkcfDBQ6XEeh
	9mQi2p9RFmMhdnTRlljOR6+3bM9Zoxd+6QdBa8LBx6b7zF+2bE0eRUFe4BCexi64x7cgZ+gw4lSP3
	sMybAsiSmUn8MHtJdaCNJdJFz39wE8y6M0l96cICHdk46v7JlmumRwD2T+Y3WJ4IUynuAl66Djsu9
	I1MSxv5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPwE-000000047Gw-0bIp;
	Thu, 01 Aug 2024 07:09:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPwB-000000047Fw-0fwD
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 07:09:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZPw9-0006Hd-4f; Thu, 01 Aug 2024 09:09:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZPw8-003iLy-Nw; Thu, 01 Aug 2024 09:09:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZPw8-006zko-26;
	Thu, 01 Aug 2024 09:09:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Aug 2024 09:09:18 +0200
Message-Id: <20240801070918.1667337-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_000923_218275_D7092E13 
X-CRM114-Status: GOOD (  14.60  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] console: honour OF current-speed property if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

current-speed describes the current baud rate the device operates at.
It's not used often in DT, but we should honour it if available.

This gives boards the ability to configure consoles that are activated
early (e.g. ACTIVATE_ALL) with the correct baud rate from the beginning
instead of activating it at CONFIG_BAUDRATE and then switching the
baudrate at environment load time.

Additionally, this can be used to work around following bug:

 - Console is added, but not activated automatically
 - NV sets cs0.active="ioe" cs0.baudrate="4000000"
 - .active parameter is applied first, so CONFIG_BAUDRATE is configured
 - .baudrate parameter is applied second, so baudrate switch happens
 - System hangs until Enter is pressed:
   ## Switch baudrate on console serial1 to 4000000 bps and press ENTER

until it's resolved in a cleaner manner.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index 9db994220e67..310959eeb8b4 100644
--- a/common/console.c
+++ b/common/console.c
@@ -331,7 +331,7 @@ int console_register(struct console_device *newcdev)
 	struct device_node *serdev_node = console_is_serdev_node(newcdev);
 	struct device *dev = &newcdev->class_dev;
 	int activate = 0, ret;
-	unsigned baudrate = CONFIG_BAUDRATE;
+	unsigned of_baudrate = 0, baudrate = CONFIG_BAUDRATE;
 
 	if (!serdev_node && initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
@@ -367,6 +367,11 @@ int console_register(struct console_device *newcdev)
 		console_set_stdoutpath(newcdev, baudrate);
 	}
 
+	/* Honour the previous baudrate if it is set to a non-zero value */
+	of_property_read_u32(dev->of_node, "current-speed", &of_baudrate);
+	if (of_baudrate)
+		baudrate = of_baudrate;
+
 	console_add_earlycon_param(newcdev, baudrate);
 
 	if (newcdev->setbrg) {
-- 
2.39.2



