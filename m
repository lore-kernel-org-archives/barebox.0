Delivery-date: Fri, 14 Mar 2025 16:26:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6vj-00E3cb-1Z
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:26:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6vi-0005C8-7Q
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:26:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xSonBl/rteaQ+Hk0rWdTmHfikT9c9t6Hmd5iCxr4wKM=; b=x7eiXzaUAI+6kC0b+Mt763xcVn
	wQY7v3OPlbp5S+/096es9wu3BgK1T10FosBAEmgEFjPSHpArIT5xqPHCFXvWvW0Gk5/c4Vvvcf2Xx
	m1L0AW2ruk44Q0m3kamz957rxGwHPc6Xe3m9+N2cAfskaXhQjcBKNY05wR5avCOvg9qjiR5xCCkN7
	mjavVzwVXv0C/PXYt3frv0IgFC7TgmDjHTDCGbouOoVDp+v13V4WD2eRo0PpO5MsV+XlHkxNm4VT4
	MJ48xXlYHi6+DbVY3vekVU2eGVTLRItOLGSjtXOeFDAn9LCnsDyEZDbFRQox5SYJxy8dCR/3DIty5
	tv5Qw2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6vG-0000000EYai-2uVA;
	Fri, 14 Mar 2025 15:26:06 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6ty-0000000EYMv-2MDG
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:24:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741965884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xSonBl/rteaQ+Hk0rWdTmHfikT9c9t6Hmd5iCxr4wKM=;
	b=Xaa61x90tOTqdhf1aaZ0gZ1I8sVuSbuDnqT/irNBV7ZSp22/v1E0CRRF3v1cj0dIHGkIci
	C7U4v3hQBUJDadBkKZg4jjnGRBQ5zS1r5tCm3mbn6HrewOr7hd8doOJstluHLRgmks+aZu
	9EDuF5rOZ5warPTbXpuVlSdIum9RzN1JyVjG91jusL+XFR7kW6BWdTJ1JrYBy/0uEd6mjt
	5DvBii2ouMYR0/VWzHZzfdWmnQBLnMC2RFfNNE7zqdccxHmI+1yKhLrGDefafas722RFWI
	Mwbi90OgbbkakKaf2BQBOPeYn2bxDkM8sQdxEiiWt+fXLouz2jHd11ns3IRz6g==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 5cb1da1d (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:24:44 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:24:37 +0100
Message-ID: <20250314152437.25675-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_082446_884687_78C9C7D3 
X-CRM114-Status: GOOD (  11.32  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: fan53555: suppress warning about uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In function 'fan53555_device_setup', a call to 'regmap_update_bits' is
made with the mode_mask variable potentially uninitialized.

This can be the case if di->vendor is FAN53526_VENDOR_FAIRCHILD and
di->sleep_vsel_id is not handled by the case (neither FAN53555_VSEL_ID_0 nor FAN53555_VSEL_ID_1).
I am not sure how likely it is to happen.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/regulator/fan53555.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2df0d2410a..2dcc6f5394 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -238,7 +238,7 @@ static const struct regulator_ops fan53555_regulator_ops = {
 
 static int fan53555_device_setup(struct fan53555_device_info *di)
 {
-	unsigned int mode_reg, mode_mask;
+	unsigned int mode_reg, mode_mask = 0;
 	int ret = 0;
 
 	/* Setup voltage control register */
-- 
2.48.1



