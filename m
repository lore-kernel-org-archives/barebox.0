Delivery-date: Wed, 01 Feb 2023 06:35:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pN5mn-009kMc-AK
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 06:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pN5mk-0007mo-Jv
	for lore@pengutronix.de; Wed, 01 Feb 2023 06:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ILb2a+JJ9VRs1BfKNv9QV49UvtqcD9ZbBkupQYSzM9I=; b=yXRopcWuEqOSNllJq2w5YQwSZA
	kudKkzExAAhoTBt2EED1iDIi3I4ab4ADZRwj0h7xBfkXQ895/DGaXiSUzq6LFvorqxYQ0Xkt9Iuof
	lOlzsVuqnORSJ/R1tDbfdHmmHuWTxdIJbQp5Qf1VvhPqj+gtf4VO0vxpey0t86PYLKKrlWHBSmV2W
	vLmKcdx7BM1G+VT1ZMYvjSrAp/cpeENyPLNskW0b7Osmpb+woI/4/+pUNcd7CNuK8S+7bAvL5K/Mf
	tHidvw82AjqhIXh/rxNwJ8ZAUjQppfY9s/8cPg2O6lZjETEIXbr9GrfMFg7fNt/OAkl1C3pMtofOm
	LlIqd7oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN5kt-00AIQg-1W; Wed, 01 Feb 2023 05:33:59 +0000
Received: from out-22.mta1.migadu.com ([95.215.58.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN5km-00AIQM-Bq
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 05:33:55 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675229628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ILb2a+JJ9VRs1BfKNv9QV49UvtqcD9ZbBkupQYSzM9I=;
	b=pPVOFT0m+0C7i0Mg6eK4PrKdh7fx1BWJBihbOX1q31uSGKYJjsvY2Yhy9j8vq/YxrKhkBP
	BTtBAvnESMoDd9l7FrTzv+yq4uIfVccaqkpFdGk/QM0tAvzUOoXLotFu7s9E15oOuj1PuK
	vAX/rRIN7JK95u4OV4Kxb1YJ7cFVc+gxM6ndvIyRUyczu9egUWuGhBdeQmk6TtOV8YriDv
	Lq9ERjQbYF+5ykd0cFKLQqg3ODaafGz5Qnh91X80+CxYV/wRosoXmZ+d9As0daYQ5YWhEj
	8x1unTGMPGQkaRxpDC0U70GJEAW9FOg26evH5R+MhjHs3Hpmf8Jl9Vz1CbsvJA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Wed,  1 Feb 2023 16:33:34 +1100
Message-Id: <20230201053334.971854-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_213353_145256_F4F73CA1 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ddr_dimms: Check spd->mem_type before computing parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Checking the mem_type here as well as the CRC means developers can
just read the SPD and pass it directly to parameter computation.

This makes it so developers can rely fully on parameters for checking
if RAM is compatible with their board and not need to worry about reading
SPD data themselves.

Signed-off-by: John Watts <contact@jookia.org>
---
 common/ddr1_dimm_params.c | 5 +++++
 common/ddr2_dimm_params.c | 7 +++++++
 common/ddr3_dimm_params.c | 5 +++++
 common/ddr4_dimm_params.c | 5 +++++
 4 files changed, 22 insertions(+)

diff --git a/common/ddr1_dimm_params.c b/common/ddr1_dimm_params.c
index 3f8759c351..77e047a051 100644
--- a/common/ddr1_dimm_params.c
+++ b/common/ddr1_dimm_params.c
@@ -221,6 +221,11 @@ unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
 {
 	int ret;
 
+	if (spd->mem_type != SPD_MEMTYPE_DDR) {
+		printf("DIMM: SPD data is not DDR1\n");
+		return 3;
+	}
+
 	ret = ddr1_spd_check(spd);
 	if (ret) {
 		printf("DIMM: failed checksum\n");
diff --git a/common/ddr2_dimm_params.c b/common/ddr2_dimm_params.c
index 2cec662ecb..b9c0922385 100644
--- a/common/ddr2_dimm_params.c
+++ b/common/ddr2_dimm_params.c
@@ -206,6 +206,13 @@ unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
 {
 	int ret;
 
+	if (spd->mem_type != SPD_MEMTYPE_DDR2 &&
+	    spd->mem_type != SPD_MEMTYPE_DDR2_FBDIMM &&
+	    spd->mem_type != SPD_MEMTYPE_DDR2_FBDIMM_PROBE) {
+		printf("DIMM: SPD data is not DDR2\n");
+		return 3;
+	}
+
 	ret = ddr2_spd_check(spd);
 	if (ret) {
 		printf("DIMM: failed checksum\n");
diff --git a/common/ddr3_dimm_params.c b/common/ddr3_dimm_params.c
index 6c3dbc6877..1b7512a275 100644
--- a/common/ddr3_dimm_params.c
+++ b/common/ddr3_dimm_params.c
@@ -86,6 +86,11 @@ unsigned int ddr3_compute_dimm_parameters(const struct ddr3_spd_eeprom *spd,
 	int ftb_10th_ps;
 	int i;
 
+	if (spd->mem_type != SPD_MEMTYPE_DDR3) {
+		printf("DIMM: SPD data is not DDR3\n");
+		return 3;
+	}
+
 	ret = ddr3_spd_check(spd);
 	if (ret) {
 		printf("DIMM: failed checksum\n");
diff --git a/common/ddr4_dimm_params.c b/common/ddr4_dimm_params.c
index 9fa3225d90..045cbd457c 100644
--- a/common/ddr4_dimm_params.c
+++ b/common/ddr4_dimm_params.c
@@ -136,6 +136,11 @@ unsigned int ddr4_compute_dimm_parameters(const struct ddr4_spd_eeprom *spd,
 	u8 *ptr;
 	u8 val;
 
+	if (spd->mem_type != SPD_MEMTYPE_DDR4) {
+		printf("DIMM: SPD data is not DDR4\n");
+		return 3;
+	}
+
 	ret = ddr4_spd_check(spd);
 	if (ret) {
 		printf("DIMM: failed checksum\n");
-- 
2.39.1



