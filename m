Delivery-date: Wed, 20 Nov 2024 14:07:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQb-004EnO-2l
	for lore@lore.pengutronix.de;
	Wed, 20 Nov 2024 14:07:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQb-0001Tk-5O
	for lore@pengutronix.de; Wed, 20 Nov 2024 14:07:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xhHwVdosZreqy5+HWGEytMSD3IsF3hVSAH1HahB3Mi8=; b=R2kOAQ6Kc6vwvCp5ipA0D1iNvA
	qPoau4sUtRqCpTf3J3IzISJzWIdQw+R88AniIbnGgnDIGAnm1qCegZj+HZclOzTUd+8EO2tY2H9a8
	24QJ/b6t/cSNON/Np7DKa/H/DD6Bx82iolyBkwoeRNlpL5DlFoem/k37pvkqFIpzBJgq/dFOKT3Qn
	eVtJ8wVgvpNLmgITilD8aBzTn9U6Hl7fJmC7+TM4Fkf2vjWFsXg8wLkY915/KxEgpB8XNx1oVRq37
	p7h7n5qOIIn62V1ZJpNF+Q0MW9q2jxFU8s3gOJDEmXa5FtX0PGJIje9PIyvSUpBYdUegbPGUxWysl
	5YO4MHhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkPz-0000000FNQG-0vVG;
	Wed, 20 Nov 2024 13:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkPt-0000000FNP2-0aY0
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 13:06:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-0001DL-Fx
	for barebox@lists.infradead.org; Wed, 20 Nov 2024 14:06:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-001kPA-0z
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 14:06:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-00GDq2-0j
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 14:06:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 20 Nov 2024 14:06:39 +0100
Message-Id: <20241120130640.3866362-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
References: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_050645_187388_98CAF2C0 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mfd: rn5t568: refactor to call reset_source_set_device only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
 drivers/mfd/rn5t568.c | 59 +++++++++++++++++++++----------------------
 1 file changed, 29 insertions(+), 30 deletions(-)

diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index f1e2eeb0c88b..7468338a2d53 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -33,6 +33,7 @@ static void rn5t568_restart(struct restart_handler *rst)
 static int rn5t568_reset_reason_detect(struct device *dev,
 				       struct regmap *regmap)
 {
+	enum reset_src_type type;
 	unsigned int reg;
 	int ret;
 
@@ -47,40 +48,38 @@ static int rn5t568_reset_reason_detect(struct device *dev,
 		return 0;
 	}
 
-	if (reg & RN5T568_PONHIS_ON_EXTINPON) {
-		reset_source_set_device(dev, RESET_POR);
-		return 0;
-	} else if (reg & RN5T568_PONHIS_ON_PWRONPON) {
-		reset_source_set_device(dev, RESET_POR);
-		return 0;
-	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON))
+	if (reg & (RN5T568_PONHIS_ON_EXTINPON | RN5T568_PONHIS_ON_PWRONPON)) {
+		type = RESET_POR;
+	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON)) {
 		return -EINVAL;
+	} else {
+		ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
+		if (ret)
+			return ret;
 
-	ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
-	if (ret)
-		return ret;
+		dev_dbg(dev, "Power-off history: %x\n", reg);
 
-	dev_dbg(dev, "Power-off history: %x\n", reg);
-
-	if (reg & RN5T568_POFFHIS_PWRONPOFF)
-		reset_source_set_device(dev, RESET_POR);
-	else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
-		reset_source_set_device(dev, RESET_THERM);
-	else if (reg & RN5T568_POFFHIS_VINDETPOFF)
-		reset_source_set_device(dev, RESET_BROWNOUT);
-	else if (reg & RN5T568_POFFHIS_IODETPOFF)
-		reset_source_set_device(dev, RESET_UKWN);
-	else if (reg & RN5T568_POFFHIS_CPUPOFF)
-		reset_source_set_device(dev, RESET_RST);
-	else if (reg & RN5T568_POFFHIS_WDGPOFF)
-		reset_source_set_device(dev, RESET_WDG);
-	else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
-		reset_source_set_device(dev, RESET_BROWNOUT);
-	else if (reg & RN5T568_POFFHIS_N_OEPOFF)
-		reset_source_set_device(dev, RESET_EXT);
-	else
-		return -EINVAL;
+		if (reg & RN5T568_POFFHIS_PWRONPOFF)
+			type = RESET_POR;
+		else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
+			type = RESET_THERM;
+		else if (reg & RN5T568_POFFHIS_VINDETPOFF)
+			type = RESET_BROWNOUT;
+		else if (reg & RN5T568_POFFHIS_IODETPOFF)
+			type = RESET_UKWN;
+		else if (reg & RN5T568_POFFHIS_CPUPOFF)
+			type = RESET_RST;
+		else if (reg & RN5T568_POFFHIS_WDGPOFF)
+			type = RESET_WDG;
+		else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
+			type = RESET_BROWNOUT;
+		else if (reg & RN5T568_POFFHIS_N_OEPOFF)
+			type = RESET_EXT;
+		else
+			return -EINVAL;
+	}
 
+	reset_source_set_device(dev, type);
 	return 0;
 }
 
-- 
2.39.5



