Delivery-date: Wed, 11 Jan 2023 09:03:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5F-008dsg-5m
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:03:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5C-0000bo-4H
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:03:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iUcE8sCR3AD1/NL3qUYLdrOI3rXTe8R3QTnYxc8M8Jk=; b=WH9USTfmeFCJzK7RL/c99OEevM
	vG5wLNRypH9VhjXVb3uhprHySho7ys41sFxk+1tLMGoeqrhu5qBw04mktQn4fCtcfRNEXhKz5yAHQ
	VEDL0OrJWm7d5tY42rILuOK65yAQg3KDafnFVn96w+iaT0vamuxF973OkvpvN6hdj5sX8vUJ3E6h2
	AQzHfrObF0ORQByFeboeAXmMetuzPOxFfG1PWKWGv0LyqlIAybemt4OOhwqaKDiTXNaJsuqiZG7o1
	llkNshPMAZVQsejJPjc+YkjSQrK/roIMSNK1VSuA+dlhGpWhIENJhX9n+36OK8Ni00Im1o8RPq7OM
	y9vi5E/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW3f-00AEhB-8q; Wed, 11 Jan 2023 08:02:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW36-00AEWo-Rs
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-0008Lk-JH; Wed, 11 Jan 2023 09:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW34-005Fex-RX; Wed, 11 Jan 2023 09:01:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003uzk-97; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:09 +0100
Message-Id: <20230111080119.933475-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000128_965540_9010B2B2 
X-CRM114-Status: GOOD (  12.60  )
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
Subject: [PATCH 01/11] regmap: consolidate reg/val format into regmap_format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To reduce difference to Linux v5.19 state of regmap, add a regmap_format
with identically named members and make use of this where appropriate.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/internal.h | 11 +++++++----
 drivers/base/regmap/regmap.c   | 23 ++++++++---------------
 2 files changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index f17456ebd2e7..30ac6d162d73 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -7,17 +7,20 @@
 
 struct regmap_bus;
 
+struct regmap_format {
+	size_t reg_bytes;
+	size_t pad_bytes;
+	size_t val_bytes;
+};
+
 struct regmap {
 	struct device *dev;
 	const struct regmap_bus *bus;
 	const char *name;
 	void *bus_context;
 	struct list_head list;
-	int reg_bits;
 	int reg_stride;
-	int pad_bits;
-	int val_bits;
-	int val_bytes;
+	struct regmap_format format;
 	unsigned int max_register;
 
 	struct cdev cdev;
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 97662751be66..1b0985376a1f 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -86,13 +86,12 @@ struct regmap *regmap_init(struct device *dev,
 	map->bus = bus;
 	map->name = config->name;
 	map->bus_context = bus_context;
-	map->reg_bits = config->reg_bits;
+	map->format.reg_bytes = DIV_ROUND_UP(config->reg_bits, 8);
 	map->reg_stride = config->reg_stride;
 	if (!map->reg_stride)
 		map->reg_stride = 1;
-	map->pad_bits = config->pad_bits;
-	map->val_bits = config->val_bits;
-	map->val_bytes = DIV_ROUND_UP(config->val_bits, 8);
+	map->format.pad_bytes = config->pad_bits / 8;
+	map->format.val_bytes = DIV_ROUND_UP(config->val_bits, 8);
 	map->max_register = config->max_register;
 
 	list_add_tail(&map->list, &regmaps);
@@ -227,7 +226,7 @@ int regmap_write_bits(struct regmap *map, unsigned int reg,
 int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 		     size_t val_len)
 {
-	size_t val_bytes = map->val_bytes;
+	size_t val_bytes = map->format.val_bytes;
 	size_t val_count = val_len / val_bytes;
 	unsigned int v;
 	int ret, i;
@@ -248,7 +247,7 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 		if (ret != 0)
 			goto out;
 
-		switch (map->val_bytes) {
+		switch (map->format.val_bytes) {
 		case 4:
 			u32[i] = v;
 			break;
@@ -282,7 +281,7 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 int regmap_bulk_write(struct regmap *map, unsigned int reg,
 		     const void *val, size_t val_len)
 {
-	size_t val_bytes = map->val_bytes;
+	size_t val_bytes = map->format.val_bytes;
 	size_t val_count = val_len / val_bytes;
 	int ret, i;
 
@@ -323,7 +322,7 @@ int regmap_bulk_write(struct regmap *map, unsigned int reg,
 
 int regmap_get_val_bytes(struct regmap *map)
 {
-	return map->val_bytes;
+	return map->format.val_bytes;
 }
 
 int regmap_get_max_register(struct regmap *map)
@@ -338,13 +337,7 @@ int regmap_get_reg_stride(struct regmap *map)
 
 static int regmap_round_val_bytes(struct regmap *map)
 {
-	int val_bytes;
-
-	val_bytes = roundup_pow_of_two(map->val_bits) >> 3;
-	if (!val_bytes)
-		val_bytes = 1;
-
-	return val_bytes;
+	return map->format.val_bytes ?: 1;
 }
 
 static ssize_t regmap_cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
-- 
2.30.2



