Delivery-date: Sat, 21 Jan 2023 15:46:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8l-0012lm-Qx
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8j-0000My-HL
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KEyMDNJeMDkw6Z+TdKVuI8TB49PKGnItG5Cmcop+Puk=; b=vTHA0yJ/UxMjn3lSZEXvxjBcjk
	jsbFqu8ZvYvwIFkJJkexbwHgTg4a7xmeCrWlWM5g8CclG2729voTxo/ff+E71dmWtlNctQJRUAXhu
	rhkZ4F4VJsgWDcYr0K1ytH2RL96W6kW47d1xu6uQnuxubDA7Kz7xh5bjM0dQ2Uyw6D5w6Icysjkdu
	KX8iboiwbastvanQnrYLYK6o1Wjnon84okIJsHF+VOi6BjTRNJG2y6DcbrbPJqaAuObWoi/+aOMJB
	ZHtIN24mEtzij0QSgX8Ab86n9HYWEkeJZMmOUrGDstNiISSPzZQV3RPJQ0/LvVlnc63k+9fIM5Mhc
	dkXKCMkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7M-00DyQA-MD; Sat, 21 Jan 2023 14:45:16 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7H-00DyNZ-43
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:45:12 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312309;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KEyMDNJeMDkw6Z+TdKVuI8TB49PKGnItG5Cmcop+Puk=;
	b=NAka0Dx6cnmUk2nHHsUZ6+d+I1gy4LLmnvhOwb86AKvlMQ2TYbWKuiFdWMVXqLubulfh9O
	dDJ2cAkWFMqZu6DxlG6tlZOARUyfBoe+j4ols0K/4SOyA4sgwCdkT8+2MCXkqZfSVQetJN
	p7H+hzyblOuIe+vLRh38mtw4f1rRbOsqd4KAt5BQRc3xNNhnyHweYxcsT3PAt1dukjxSq7
	Nek1UIB0KBROPPd+BQUeCbVE3USFNlh5ecE8O7Ign8DAsuMP7j+naPle/3kn5diNQsaEvk
	qr715yykdxnjw/V39Xgei6kCP5xT+D0I2DE/OupnwPgPysQZh5kob0RfjPrk6g==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:28 +1100
Message-Id: <20230121144429.3524905-7-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064511_361098_D74971F6 
X-CRM114-Status: UNSURE (   9.46  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ddr_dimms: Remove mclk_ps for DDR3 and DDR4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This parameter is unused, throw it away.

Signed-off-by: John Watts <contact@jookia.org>
---
 common/ddr3_dimm_params.c | 3 +--
 common/ddr4_dimm_params.c | 3 +--
 drivers/ddr/fsl/main.c    | 4 ++--
 include/ddr_dimms.h       | 6 ++----
 4 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/common/ddr3_dimm_params.c b/common/ddr3_dimm_params.c
index 0526f0b435..6c3dbc6877 100644
--- a/common/ddr3_dimm_params.c
+++ b/common/ddr3_dimm_params.c
@@ -78,8 +78,7 @@ compute_ranksize(const struct ddr3_spd_eeprom *spd)
  * Writes the results to the struct dimm_params structure pointed by pdimm.
  *
  */
-unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
-					 const struct ddr3_spd_eeprom *spd,
+unsigned int ddr3_compute_dimm_parameters(const struct ddr3_spd_eeprom *spd,
 					 struct dimm_params *pdimm)
 {
 	int ret;
diff --git a/common/ddr4_dimm_params.c b/common/ddr4_dimm_params.c
index d711863bbb..9fa3225d90 100644
--- a/common/ddr4_dimm_params.c
+++ b/common/ddr4_dimm_params.c
@@ -123,8 +123,7 @@ compute_ranksize(const struct ddr4_spd_eeprom *spd)
  * Writes the results to the struct dimm_params structure pointed by pdimm.
  *
  */
-unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr4_spd_eeprom *spd,
+unsigned int ddr4_compute_dimm_parameters(const struct ddr4_spd_eeprom *spd,
 					  struct dimm_params *pdimm)
 {
 	int ret;
diff --git a/drivers/ddr/fsl/main.c b/drivers/ddr/fsl/main.c
index c70be6fcf9..c05f6d52fb 100644
--- a/drivers/ddr/fsl/main.c
+++ b/drivers/ddr/fsl/main.c
@@ -249,9 +249,9 @@ static int compute_dimm_parameters(struct fsl_ddr_controller *c,
 	else if (is_ddr2(popts))
 		ret = ddr2_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
 	else if (is_ddr3(popts))
-		ret = ddr3_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
+		ret = ddr3_compute_dimm_parameters((void *)spd, pdimm);
 	else if (is_ddr4(popts))
-		ret = ddr4_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
+		ret = ddr4_compute_dimm_parameters((void *)spd, pdimm);
 
 	return ret;
 }
diff --git a/include/ddr_dimms.h b/include/ddr_dimms.h
index f44c46447a..db744ed5d8 100644
--- a/include/ddr_dimms.h
+++ b/include/ddr_dimms.h
@@ -106,11 +106,9 @@ unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
 unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr2_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
-unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr3_spd_eeprom *spd,
+unsigned int ddr3_compute_dimm_parameters(const struct ddr3_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
-unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr4_spd_eeprom *spd,
+unsigned int ddr4_compute_dimm_parameters(const struct ddr4_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
 
 #endif /* _DDR_DIMMS_H_ */
-- 
2.39.0



