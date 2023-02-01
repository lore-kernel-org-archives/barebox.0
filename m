Delivery-date: Wed, 01 Feb 2023 10:46:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pN9hT-009wjv-U1
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 10:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pN9hR-0007Qo-4S
	for lore@pengutronix.de; Wed, 01 Feb 2023 10:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lBNre11dvShTC2jeZJs9KDdSqz8wTTvL62mYhnVzhiU=; b=flsGlaGD2zxw+ypl0e8u5fBCE3
	O9BJup7ZLoHESxPKP7PyvGBIuIoOqf4dZ6dUIiKKcy2/8ovy9vpiMNf1ikpq1TbhoPm6C9z1O9PgA
	tkLpj5lgJnyP3zGhe1bmJluIlJa5+vWB1tF1HiQZ9+h5ZTqJ14jiK0azPE9znSI5EldlB+o7bxWo3
	PM9IAKI865jDOYq0iOsdC5nXN+3rrhGNkZlIMoVEUPMVwXr+UKFpIDEPFgbJFGpEGqFfbUn/udvej
	S7suMyg+OQDrMTCq5FVIyZfyGGRp/GVAZ7Ja2owBS6+qE0sElT/wbL3M83WMtao9thWSE9Q5f/7Qx
	yYM04gtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN9fq-00B4uW-89; Wed, 01 Feb 2023 09:45:02 +0000
Received: from out-174.mta1.migadu.com ([95.215.58.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN9fk-00B4sw-SB
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 09:44:59 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675244690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lBNre11dvShTC2jeZJs9KDdSqz8wTTvL62mYhnVzhiU=;
	b=kwpYpsHLdGwxiCRW1e5f/kCQ6319ATXyP2lkcJFpvC6wO/WCwus2gGFK8O/IdGs3WgAmlW
	knr36KYnjLLkZwt0KHSv0s78GxWXcjEU+duT7RAtjw/xChiH4wU1s54+zOqVxU9BY4v9RT
	Ga67Tqrpkz46C8Rz2lfZPYTvcWkgXCO3gDFXL1dRFgqHoTKZ5PCy3U0+fUE3MOcKb2BN1u
	l9xZDwH8R3IPgclbuX5zhJtmV+2ZbLLqPF2Gw3DIDxRa1IvUnYE5cs/kMSFKBpiwvVb+UL
	4LAobZDIGdjmROBy0KcG9pwd+G9/HL3rtf1CrXvxUrFpFuvNTthrVdRq22cT5g==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Wed,  1 Feb 2023 20:44:35 +1100
Message-Id: <20230201094435.1228362-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_014457_674367_580C9D38 
X-CRM114-Status: GOOD (  13.32  )
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
Subject: [PATCH] I2C: i.MX: early: Use a custom delay on i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX early I2C code requires waiting for the controller to settle
after configuration. This is currently done using udelay which is
supported on ARMv8 but not on ARMv7.

For the i.MX6 we will have to use a custom delay. This was only
tested on the i.MX6Q but should work on all other i.MX6 chips.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/i2c/busses/i2c-imx-early.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
index 6c8bdc7904..30cc65ca86 100644
--- a/drivers/i2c/busses/i2c-imx-early.c
+++ b/drivers/i2c/busses/i2c-imx-early.c
@@ -90,6 +90,28 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
 	return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
 }
 
+static void i2c_fsl_settle(struct fsl_i2c *fsl_i2c)
+{
+#ifdef CPU_ARCH_ARMv8
+	udelay(100);
+#else
+	/*
+	 * We lack udelay on the i.MX6 prebootloader, so delay
+	 * manually: On an i.MX6 with a 66Mhz I2C peripheral clock
+	 * one cycle of this loop takes 1.30us,
+	 * this means we have to wait for 76.9 microseconds.
+	 *
+	 * This clock may be 44Mhz if the BT_FREQ eFUSE is set,
+	 * this just means it will take 150 microseconds.
+	 */
+
+	volatile int i = 0;
+
+	for (i = 0; i < 77; i++)
+		fsl_i2c_read_reg(fsl_i2c, FSL_I2C_I2SR);
+#endif
+}
+
 static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
 {
 	unsigned int temp = 0;
@@ -104,7 +126,7 @@ static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
 			  fsl_i2c, FSL_I2C_I2CR);
 
 	/* Wait controller to be stable */
-	udelay(100);
+	i2c_fsl_settle(fsl_i2c);
 
 	/* Start I2C transaction */
 	temp = fsl_i2c_read_reg(fsl_i2c, FSL_I2C_I2CR);
-- 
2.39.1



