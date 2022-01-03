Delivery-date: Mon, 03 Jan 2022 12:59:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzX-009njR-AZ
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzW-0003lm-1O
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=is6OfnCXsgK8v0+G0tuHJrIeBcyiItPG8wn23snIp+8=; b=LRZwv4u61/4J5i
	gDg0bdnlOq8Z1sAUsZJorEhW8FS0lM0j1MXMHk4YQMpJWCBornjLw4STx54jBywo43hgvV3Djn/xJ
	YKCZQIBqrGjw3XH2Nv/4EdEbYD3jpnXMS/0QFmx9hNpvC4AtxmXyn2FdYSJYh9snzU/GlDosZv1xt
	BULTFvYP5VCn+ATd2UITs0oSPjgLcVykT7mgZwevyKRSTcE4pE95ICx8MF3UdRNwGiag4wJrxovfN
	UYJ9SfbtYn8EMGTeNpcNybPCBlvpwTM7IoqKRsfcAxHzs/AStUE5YOO44itZKewMC1fOh4wyliIf3
	ZWk+ltwhxgTGbSTXIQcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Ly6-008vNc-KM; Mon, 03 Jan 2022 11:57:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lxs-008vKU-R1
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:57:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxp-0003NR-2W; Mon, 03 Jan 2022 12:57:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxo-007EWK-JB; Mon, 03 Jan 2022 12:57:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:57:18 +0100
Message-Id: <20220103115718.1723730-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035724_929038_1EA6334E 
X-CRM114-Status: GOOD (  13.73  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 5/5] regulator: respect "regulator-always-on" property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Enrico Jorns <ejo@pengutronix.de>

As barebox ignored this property, a regulator could have been disabled
even if it should not have been.
By taking the same path as for 'regulator-boot-on', we ensure always
holding an enable count > 0 on the regulator.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 3 ++-
 include/regulator.h      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index ac4141c1cdbf..b2e5f8caa2ca 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -130,7 +130,7 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
 	if (name)
 		ri->name = xstrdup(name);
 
-	if (rd->boot_on) {
+	if (rd->boot_on && rd->always_on) {
 		ret = regulator_enable_internal(ri);
 		if (ret && ret != -ENOSYS)
 			goto err;
@@ -163,6 +163,7 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 		return -EINVAL;
 
 	rd->boot_on = of_property_read_bool(node, "regulator-boot-on");
+	rd->always_on = of_property_read_bool(node, "regulator-always-on");
 
 	name = of_get_property(node, "regulator-name", NULL);
 
diff --git a/include/regulator.h b/include/regulator.h
index bbe8dd91d84b..dfdfbf033262 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -84,7 +84,8 @@ struct regulator_desc {
 struct regulator_dev {
 	const struct regulator_desc *desc;
 	struct regmap *regmap;
-	int boot_on;
+	bool boot_on;
+	bool always_on;
 	/* the device this regulator device belongs to */
 	struct device_d *dev;
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

