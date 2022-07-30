Delivery-date: Sat, 30 Jul 2022 11:51:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj7r-004r3A-Gb
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 11:51:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj7q-0007Od-6h
	for lore@pengutronix.de; Sat, 30 Jul 2022 11:51:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uVQEXMURP7zrysxoBUSju9aKf5oSBo1+/hw3A2IzmMI=; b=PbVJpOR6iOu5VhYoFWrH72X9VA
	irq9d5+qwpOxzkmkyE/bt9+WpeaLATxpK3tTPZ6VFIRDyP2m+K/X9xDGtCwF6I8wDOVBknKu22WjW
	RDFlGh2NteOuDWLP30D/1ameIPTr78l9xzHwLXK0lRbxK8ohM9Yox5wOA+YkeWOVf7rxZK0/ShvAO
	ZFcrMDjZuaL2AhyYdeEmZenyv2cTjdk7P39i4mTJCWEyq1nBc39MbuSrgOH8+4ZFLMaBVx2f+W2eN
	AvVFbFp5I8HQsG8jgmAPy+YF5HEIVVY96OsxdfZ+EO9nCqxGwaN8ut/q+IV23CyjwRXp/YWh92Q2r
	gIeC7HOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj6h-00H7qu-M5; Sat, 30 Jul 2022 09:50:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj6d-00H7pi-0O
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 09:50:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj6b-00078D-OG; Sat, 30 Jul 2022 11:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj6b-000gOr-2B; Sat, 30 Jul 2022 11:49:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj6a-007Q0L-Bn; Sat, 30 Jul 2022 11:49:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Jul 2022 11:49:55 +0200
Message-Id: <20220730094955.1768207-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_024959_087777_9CBC4512 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: probe: report power domain attach failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Power domains are attached before driver probe and non-existence of
power domain driver leads to permanent probe deferral without any
pointer as to why. Add a status message to make debugging easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 2fb73917b43c..c0ea2746b388 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -17,7 +17,7 @@ static int platform_probe(struct device_d *dev)
 
 	ret = genpd_dev_pm_attach(dev);
 	if (ret < 0)
-		return ret;
+		return dev_err_probe(dev, ret, "power domain attach failed\n");
 
 	return dev->driver->probe(dev);
 }
-- 
2.30.2



