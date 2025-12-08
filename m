Delivery-date: Mon, 08 Dec 2025 13:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvv-009Cjv-38
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvv-0002kE-Ch
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Br86rxOg3sd71dVoCL+E2EMsS1FzHCVpJ6IG/j9ygUI=; b=g5BMrqqq54kg85ipuGPo9aseDv
	NwYrtzR4BIVAs+I9ExugRqfJuV7mCppN7qT9uo1LzHqXNTW6GSGWFdA2zFiwDaERXksWrTb9+kFiw
	/11rS5jGvGPRlc3JBH3y3uHYuL3O4U+Ma0rhE3AGodJJtU2WWYAB3OpMtXt4TzLKtOMxtfGH1r6yY
	mfmWb45iQrt94F6tJS4bxM1OtWH4Tbc9AVJ09ZwMD+60zheh0q37uPjdM1tCp/6Eq8lSIWQZq8Obk
	lXyf76ekxcBAPxSSnUVmBWvzQpnEdIm1iwH0I7itNYRrmpB3lRLtC0byr+mMMW/VUJTPuwR8b8pM0
	9ESpMotQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvL-0000000D2Io-32UN;
	Mon, 08 Dec 2025 12:01:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvG-0000000D2Gw-1FmS
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-0002VV-Av; Mon, 08 Dec 2025 13:00:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-004bid-0I;
	Mon, 08 Dec 2025 13:00:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-000000027w4-019T;
	Mon, 08 Dec 2025 13:00:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Dec 2025 13:00:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-nvmem-eeprom-v1-3-41ba588e2f3a@pengutronix.de>
References: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
In-Reply-To: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765195255; l=1333;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=doU5GlmA2yTbKqo11MISVzJRtLWpctV0qvqxz6xewf4=;
 b=KhHz8hlVR7pczlLb5MvWPcJGDG5s6BA4CbeUz9NAs4N7jX9IFel3OU3O2qInPi0/uTf4lM9G6
 Lmx9iS/L6G8BaNxF1+RAFlzgVFJs5Wbqseqb13OnzZ1MQrPHhdmoOaF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040058_368008_61DB9BF5 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] driver: fix device name clashes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can happen that we end up with two devices having the same name.
This happens when one device is registered with

dev->name "foo0";
dev->id = DEVICE_ID_SINGLE;

and another one with

dev->name "foo";
dev->id = 0;

Fix this by not comparing both dev->name and dev->id when testing if a
device already exists, but instead by comparing the resulting device
name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1a5a3598be5d4b2c6ce8558b1ac8c3cba4d59485..c417e945ee0308028fc885101de18bd4a2adfe93 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -86,13 +86,18 @@ struct device *get_device_by_name(const char *name)
 static struct device *get_device_by_name_id(const char *name, int id)
 {
 	struct device *dev;
+	char *str = NULL;
 
-	for_each_device(dev) {
-		if(!strcmp(dev->name, name) && id == dev->id)
-			return dev;
-	}
+	if (id == DEVICE_ID_SINGLE)
+		return get_device_by_name(name);
 
-	return NULL;
+	str = basprintf("%s%u", name, id);
+
+	dev = get_device_by_name(str);
+
+	free(str);
+
+	return dev;
 }
 
 int get_free_deviceid_from(const char *name_template, int id_from)

-- 
2.47.3



