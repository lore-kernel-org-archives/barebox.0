Delivery-date: Mon, 08 Dec 2025 13:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvw-009CkG-0W
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvv-0002kU-IE
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:01:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+ys25QoWneVe0BWd9nrc+mydutWaGbazSoYDick/20=; b=JyVnIdnL0WokeQlbJANQGJimqw
	xZlrHm9tzhoXR9DgYDWeUAfqqbba8FsUtmsNR7ePP/fcDczjKbq7Nzf4QQh/v9syMH+CDKNac5SDv
	zRgwyTGY0yxWy6/BBscn6Qh/g19+NTyCuL1NN2SZKw9oq/Ujl/68E3tRmG5VgWUyw9j+Fmwtem6Yn
	RmLFbYm5xACD1iUtG3lMoqOyVkB71scREJWctJA5jFiAqYCtU86CaC4scVtyUAQvNsekCwz2UVuyx
	MDBN8mLDG480p0c9szSTaqgLLK5q7CTaAoEF3fbOMlgcT0qVzOZpO0n7NT+scqB4jYoopuaSzr2jX
	kuHryaJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvN-0000000D2JB-01ko;
	Mon, 08 Dec 2025 12:01:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvG-0000000D2Gu-1FWG
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:01:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-0002VR-9k; Mon, 08 Dec 2025 13:00:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-004bib-0E;
	Mon, 08 Dec 2025 13:00:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvD-000000027w4-4BVm;
	Mon, 08 Dec 2025 13:00:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Dec 2025 13:00:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-nvmem-eeprom-v1-1-41ba588e2f3a@pengutronix.de>
References: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
In-Reply-To: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765195255; l=1860;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HRc9Ww4kt9MwtU1HbPVvpjrlamCbTblwu+mQh6UYczA=;
 b=bF8rhpwvPorU/T8S0lNCnBWxPU7zO3sqWGc7T8ybnam97zl74wt4OzD2Y+BV7jgUVnRBwU+fz
 FN+EpZ4a5ZLBUENc4kyRfJ1K8j8X0pbR0IEc/tnD1yfSuy3XA+XB6bd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040058_366597_BF3504E4 
X-CRM114-Status: GOOD (  12.54  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] driver: implement get_free_deviceid_from()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

get_free_deviceid() starts looking for a free device ID starting from
zero. Add get_free_deviceid_from() which takes a start ID to look from
which is useful when some lower device IDs shall be reserved, for
example by device tree aliases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 10 ++++------
 include/driver.h      |  7 ++++++-
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index eca23d7c308800ead5e2f4e25208dc68ab2fd92e..1a5a3598be5d4b2c6ce8558b1ac8c3cba4d59485 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -95,14 +95,12 @@ static struct device *get_device_by_name_id(const char *name, int id)
 	return NULL;
 }
 
-int get_free_deviceid(const char *name_template)
+int get_free_deviceid_from(const char *name_template, int id_from)
 {
-	int i = 0;
-
 	while (1) {
-		if (!get_device_by_name_id(name_template, i))
-			return i;
-		i++;
+		if (!get_device_by_name_id(name_template, id_from))
+			return id_from;
+		id_from++;
 	};
 }
 
diff --git a/include/driver.h b/include/driver.h
index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..84fb5c0aa9a085e39d2905d453d69adff50d2cd5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -124,7 +124,12 @@ struct device *find_device(const char *str);
  * appending a number to the template. Dynamically created devices should
  * use this function rather than filling the id field themselves.
  */
-int get_free_deviceid(const char *name_template);
+int get_free_deviceid_from(const char *name_template, int id_from);
+
+static inline int get_free_deviceid(const char *name_template)
+{
+	return get_free_deviceid_from(name_template, 0);
+}
 
 int dev_add_alias(struct device *dev, const char *fmt, ...) __printf(2, 3);
 

-- 
2.47.3



