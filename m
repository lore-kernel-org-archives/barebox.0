Delivery-date: Tue, 02 Jan 2024 18:02:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9e-000qJT-1u
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9d-00071q-GS
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=875EPx4P8mcTRFTa+snZ25r+mCJrJoEmmRe3a6VnpBs=; b=eDxWprrxVeuJyWV2Lb6jVOz+IM
	srLNMl6QfRNr1CnqIko3AAylARKF79xj0b/UhJTwoT9QQ14TsaFmKHxLZtTAyOhr44VI7teN7soAu
	Pa/ElBOxHozwW6RxbbZVCyo3t3swIlZsclPK9f7fWdrNkIfmIxfG5uEvOxLRmiJbYbX7Kdfi2M9dl
	p0+q2xc5nar0WA8KGVgPQX2wC5mKqoBsJ7FbnaiwQ7S5KYH5dXcR+5eJM5d4uPPvo+DikF15XDqx0
	OKUxWHXhaGauONo/LQX/bSIQvznV3RmJ+Q+eMByC3dZ7fK9QaE0U5No4R385psbPDzXHmppfNicKW
	CKuRYxMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8a-008XtT-1N;
	Tue, 02 Jan 2024 17:01:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8V-008XrA-35
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-0006Gk-NM; Tue, 02 Jan 2024 18:01:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrH-6w; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-0Y;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jan 2024 18:00:54 +0100
Message-Id: <20240102170100.1596372-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_001368_487AD567 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/7] regmap: fix calculation of regmap size when reg_stride != 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct regmap::max_register is in units of struct regmap::reg_stride.
To get the total number or registers, we need to divide by reg_stride
before adding one, but we ended up adding one before division.

regmap_size_bytes() is currently only used for sizing the cdev and
rendered the last element of the cdev inaccessible.

Fixes: 7a53e162de2a ("Add initial regmap support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 4d896c677b28..7ad527954c43 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -412,10 +412,34 @@ static struct cdev_operations regmap_fops = {
 	.write	= regmap_cdev_write,
 };
 
+/*
+ * regmap_count_registers - returns the total number of registers
+ *
+ * @map:	The map
+ *
+ * Returns the total number of registers in a regmap
+ */
+static size_t regmap_count_registers(struct regmap *map)
+{
+	/*
+	 * max_register is in units of reg_stride, so we need to divide
+	 * by the register stride before adding one to arrive at the
+	 * total number of registers.
+	 */
+	return (map->max_register / map->reg_stride) + 1;
+}
+
+/*
+ * regmap_size_bytes - computes the size of the regmap in bytes
+ *
+ * @map:	The map
+ *
+ * Returns the number of bytes needed to hold all values in the
+ * regmap.
+ */
 size_t regmap_size_bytes(struct regmap *map)
 {
-	return regmap_round_val_bytes(map) * (map->max_register + 1) /
-		map->reg_stride;
+	return regmap_round_val_bytes(map) * regmap_count_registers(map);
 }
 
 /*
-- 
2.39.2



