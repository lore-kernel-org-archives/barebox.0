Delivery-date: Wed, 25 Feb 2026 12:58:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvDWk-005Vs9-1a
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 12:58:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvDWk-0007GU-Ki
	for lore@pengutronix.de; Wed, 25 Feb 2026 12:58:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1hVVYjxd8uNtnDxZ1aG0/EKRzcO9fFDXtM4V9sEEn7U=; b=BXYH7tXftC/My921D+R+X46KBY
	I13vWFky2oaMfeAob/nQJnvHcp4CRYI8eJsbWGI7AY5i7+gUFUAUr+5Cok0V457bdEY+XD/nsb2EA
	NShJMA/n5xOi7kwIWBF7N432hHBiORkmqvn19rgO3T3/bJUjVD3CdVSQSrtwne174bAdltDwS0run
	FXEL02nyNGXWYxQiJnHGmw0KlbqbQxCeTActtZmzXenZiZ86twP7v8aEUWPK/zJjvjD5kxzwKheY9
	EI5ZKN4WhCMzPyDf+HhIrgNqWEgHoxtpR8zXAclMnd1LaQCZFqhKWQsrVgZKe1GrnvZCSYcv8p97H
	Z9yb2GwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDW5-00000003xIJ-12OA;
	Wed, 25 Feb 2026 11:57:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDW1-00000003xHv-32JC
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 11:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvDVy-00075B-4d; Wed, 25 Feb 2026 12:57:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvDVw-002YY3-1x;
	Wed, 25 Feb 2026 12:57:13 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvDVx-00000008aet-3aDL;
	Wed, 25 Feb 2026 12:57:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 12:57:12 +0100
Message-ID: <20260225115713.2047529-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_035717_764246_FE0A39D9 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] regulator: bcm2835: fix USB-breaking regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use in multi-platform configurations, regulator_bcm2835_init() was
gated behind a lookup for "raspberrypi,bcm2835-firmware"-compatible nodes
in the live barebox DT.

The lookup using of_get_compatible_child is erroneous though, because it
only looks at immediate children and doesn't recurse down.

This is unfortunate, when the firmware node is at /soc/firmware.

Fix this by using the correct API.

Fixes: 3ee4d8927379 ("regulator: bcm2835: register only on Raspberry Pi")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 9d2803baca24..0f54437c64f1 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -138,7 +138,7 @@ postcore_platform_driver(regulator_bcm2835_driver);
 
 static int regulator_bcm2835_init(void)
 {
-	if (of_get_compatible_child(of_get_root_node(),
+	if (of_find_compatible_node(NULL, NULL,
 				    "raspberrypi,bcm2835-firmware"))
 		add_generic_device("regulator-bcm2835", DEVICE_ID_SINGLE, NULL,
 				   0, 0, 0, NULL);
-- 
2.47.3



