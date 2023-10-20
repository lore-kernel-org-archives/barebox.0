Delivery-date: Fri, 20 Oct 2023 09:20:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo8-00FGWh-Qn
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo7-0006mU-8s
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=up5sRumg+tkRQmCpJRv32Y4pstzUxCV6MDFvWQS26ac=; b=CIM4MM4I22eCR8UbKAwt7FN6bB
	5Da7cxoAWKEQPIwzMYDmjUQ2SpsIz8edFOo6UOoRF04ikPXwidanOXkWRv3VmdDkKwLCGZVO8I9Wh
	TVph0wCO0GYZbDhQQ5R0oEwB/QwvjaUaP5us/BZLCn0BlA7xEVkDuTwzqWF/U7LeGMIcuuBsZxIfN
	kMYaHcLsTuVseIr6IRcHFm7g3KlYe4Sp6Kyc8s/T89qQKr8MiYVkJSyrcEzyD+99W69sE0jhZrmsq
	9j+IaXOdoJDuhiUIG3dVIG0xuUt6Y7rlnbD7a2Do3WUt55YFd53XxXxv/PmePoVn4PI+C0l8c2gSp
	xR8KnQ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmu-001P1K-2G;
	Fri, 20 Oct 2023 07:19:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001OvP-0Y
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-0006Da-V8; Fri, 20 Oct 2023 09:19:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLh-CR; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRC-16;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:43 +0200
Message-Id: <20231020071853.2826528-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_257435_10073628 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/11] regmap: add support for bulk 64-bit reads and writes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux implementation of regmap_bulk_read and regmap_bulk_write
supports 64-bit accesses. Have the barebox implementation follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index da20dc05828d..191217d20144 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -269,6 +269,10 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 		return -EINVAL;
 
 	for (i = 0; i < val_count; i++) {
+
+#ifdef CONFIG_64BIT
+		u64 *u64 = val;
+#endif
 		u32 *u32 = val;
 		u16 *u16 = val;
 		u8 *u8 = val;
@@ -278,6 +282,11 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
 			goto out;
 
 		switch (map->format.val_bytes) {
+#ifdef CONFIG_64BIT
+		case 8:
+			u64[i] = v;
+			break;
+#endif
 		case 4:
 			u32[i] = v;
 			break;
@@ -335,6 +344,11 @@ int regmap_bulk_write(struct regmap *map, unsigned int reg,
 		case 4:
 			ival = *(u32 *)(val + (i * val_bytes));
 			break;
+#ifdef CONFIG_64BIT
+		case 8:
+			ival = *(u64 *)(val + (i * val_bytes));
+			break;
+#endif
 		default:
 			ret = -EINVAL;
 			goto out;
-- 
2.39.2



