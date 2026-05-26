Delivery-date: Tue, 26 May 2026 08:02:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRks2-003u2z-2y
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:02:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRks2-0007zq-8D
	for lore@pengutronix.de; Tue, 26 May 2026 08:02:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mab/IlmnK73P14oJp84tzHPc2N/kMsF8Y+zy+1/LAFg=; b=GuXNE/XYHds12joioW0U1k8Zkl
	oZ4GcfAlo4d5Q+zcnCRNUN7l0qKt36J6OJbyH4mgzr7Ur7hr6QpoW5UXSZqp3GgdSp558lBNpKQ3r
	XNarSSKsMBQYfoKZ/xbI9bhzNMYPVQzdajDMQV8GJc3A4NbMUC/K/e4FN96C+swUtz0SJLxrQuOa2
	gzAPzI4PqbLC2NIhsuFsstTdIw0qRy0G8av0q2TfOPTQJZ+EsvLKXlNrJM0cvbXIYWs1QX7TWnYIX
	uy/2ANFuW1ZadYE3EWqi0j85d5hgDsVlLXoA/nXq7+vH8rFbK64XP9zK65237wjnLk5jlSwOkONbD
	99IzsqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRkqf-000000017RY-3B94;
	Tue, 26 May 2026 06:01:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRkqb-000000017QB-2gtb
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:01:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wRkqY-0007VP-FN; Tue, 26 May 2026 08:00:58 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 26 May 2026 08:00:15 +0200
Message-ID: <20260526060041.1726523-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_230101_752101_39DCD4B0 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: [PATCH] regmap: enforce register alignment to regmap::reg_stride
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently enforce this only for regmap_bulk_read/write, but really
it's applicable to all regmap read/write operations.

Linux already enforces this everywhere, so follow suit in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/regmap/regmap.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index e4b20c07809d..f41e9d94944e 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -69,6 +69,9 @@ static int _regmap_bus_reg_read(void *context, unsigned int reg,
 {
 	struct regmap *map = context;
 
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
+
 	return map->bus->reg_read(map->bus_context, reg, val);
 }
 
@@ -78,6 +81,9 @@ static int _regmap_bus_reg_write(void *context, unsigned int reg,
 {
 	struct regmap *map = context;
 
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
+
 	return map->bus->reg_write(map->bus_context, reg, val);
 }
 
@@ -86,6 +92,8 @@ static int _regmap_bus_reg_seal(void *context, unsigned int reg,
 {
 	struct regmap *map = context;
 
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
 	if (!map->bus->reg_seal)
 		return -EOPNOTSUPP;
 
@@ -182,6 +190,8 @@ struct device *regmap_get_device(struct regmap *map)
  */
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val)
 {
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
 	return map->reg_write(map, reg, val);
 }
 
@@ -196,6 +206,8 @@ int regmap_write(struct regmap *map, unsigned int reg, unsigned int val)
  */
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
 {
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
 	return map->reg_read(map, reg, val);
 }
 
@@ -213,6 +225,8 @@ int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
  */
 int regmap_seal(struct regmap *map, unsigned int reg, unsigned int flags)
 {
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
 	return map->reg_seal(map, reg, flags);
 }
 
-- 
2.47.3



