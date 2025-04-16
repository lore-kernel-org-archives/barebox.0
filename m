Delivery-date: Wed, 16 Apr 2025 12:38:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509z-001QNz-1K
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:38:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509y-0004Ub-8Y
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=giDwiCX8LYQ8B4MtHh77tUUOJrYdQZT/532yTDUkurc=; b=DYQmGzWQNKhdkxdb7umXVC7702
	0u8Ztq4z2b7VJ6VHjBBaLzkodR2opS0kJWwvdErHUFPhRpL8WpOTBF/wlnJUaNVxJa9CX7DpP2Xs/
	UERMsYWr7KkortiXQ4ObCpV37aJUHhTTZcfu8Q/perAuT2XFc8OF2yVuli/HtB2XLOScxZbgnhaF4
	7VdyQynpi9UitirdQZ+J+8tTD37x6wrkeVLVNDLU9VQaRrAyt9C97H2XzaYa0QZbByWoyDYImlgy1
	vZ+/qfWaEq76hvGjtEHpfoMc8hpq9WsP1KDGB1pzT0cWqvR6y3PMCFZ6GNb2M3G6vxeMKc/86+jym
	FjvQY5uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509Z-00000009EYh-2D5I;
	Wed, 16 Apr 2025 10:38:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509W-00000009EVi-1fMq
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:37:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509N-00046v-5O; Wed, 16 Apr 2025 12:37:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-000ZVB-2y;
	Wed, 16 Apr 2025 12:37:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-00174h-2f;
	Wed, 16 Apr 2025 12:37:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:37:47 +0200
Message-Id: <20250416103748.265415-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250416103748.265415-1-a.fatoum@pengutronix.de>
References: <20250416103748.265415-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033758_601663_C668F1F8 
X-CRM114-Status: GOOD (  11.64  )
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
Subject: [PATCH 4/5] treewide: fix wrong signed value passed to strerror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strerror is meant for use with the positive integers stored in errno,
but most error codes in barebox are negative. Fix instances of passing
negative values to strerror by using %pe + ERR_PTR instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/hw_version.c      | 2 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c        | 2 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c | 2 +-
 arch/arm/boards/haba-knx/init.c                  | 2 +-
 drivers/aiodev/imx_thermal.c                     | 4 ++--
 drivers/crypto/caam/rng_self_test.c              | 4 ++--
 drivers/dma/apbh_dma.c                           | 3 +--
 drivers/mci/arasan-sdhci.c                       | 5 ++---
 drivers/mci/imx-esdhc.c                          | 3 +--
 drivers/mtd/ubi/barebox.c                        | 2 +-
 drivers/spi/imx_spi.c                            | 4 ++--
 11 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index 0b8b7cc884eb..9ae4ccb77c75 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -111,7 +111,7 @@ static int at91sam9m10ihd_read_w1(const char *file, struct one_wire_info *info)
 	close(fd);
 err:
 	if (ret)
-		pr_err("can not read 1-wire %s (%s)\n", file, strerror(ret));
+		pr_err("can not read 1-wire %s (%pe)\n", file, ERR_PTR(ret));
 	return ret;
 }
 
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 1224f4753c3b..9c6bd6866098 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -122,7 +122,7 @@ static int at91sam9x5ek_read_w1(const char *file, struct one_wire_info *info)
 	close(fd);
 err:
 	if (ret)
-		pr_err("can not read 1-wire %s (%s)\n", file, strerror(ret));
+		pr_err("can not read 1-wire %s (%pe)\n", file, ERR_PTR(ret));
 	return ret;
 }
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index fc39f0849a7d..76318b4d56f1 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -50,7 +50,7 @@ static int cfa10036_read_eeprom(const char *file, struct cfa_eeprom_info *info)
 	close(fd);
 err:
 	if (ret)
-		pr_err("can not read eeprom %s (%s)\n", file, strerror(ret));
+		pr_err("can not read eeprom %s (%pe)\n", file, ERR_PTR(ret));
 	return ret;
 }
 
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index d86e84e71a3b..45bcd2c83668 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -139,7 +139,7 @@ static int haba_set_ethaddr(void)
 	close(fd);
 err:
 	if (ret)
-		pr_err("can't read eeprom /dev/eeprom0 (%s)\n", strerror(ret));
+		pr_err("can't read eeprom /dev/eeprom0 (%pe)\n", ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 2693ad05e0e5..5db28d1bc51a 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -142,8 +142,8 @@ static int imx_thermal_probe(struct device *dev)
 
 	ret = clk_enable(imx_thermal->clk);
 	if (ret) {
-		dev_err(dev, "Failed to enable clock: %s\n",
-			  strerror(ret));
+		dev_err(dev, "Failed to enable clock: %pe\n",
+			  ERR_PTR(ret));
 		goto put_clock;
 	}
 
diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index b6fcc3bc0947..12f5e192080f 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -194,8 +194,8 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 	/* wait for job completion */
 	ret = caam_jr_enqueue(dev, desc, rng_self_test_done, &job_err);
 	if (ret) {
-		pr_err("Running RNG self-test descriptor failed: %d %s\n",
-				ret, strerror(ret));
+		pr_err("Running RNG self-test descriptor failed: %pe\n",
+		       ERR_PTR(ret));
 		goto err;
 	}
 	if (job_err) {
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 2f19033aaf71..298f706f1bcd 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -162,8 +162,7 @@ static int apbh_dma_probe(struct device *dev)
 
 	ret = clk_enable(apbh->clk);
 	if (ret) {
-		dev_err(dev, "Failed to enable clock: %s\n",
-			strerror(ret));
+		dev_err(dev, "Failed to enable clock: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 112fb5a669d5..e987ff654862 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -753,14 +753,13 @@ static int arasan_sdhci_probe(struct device *dev)
 	}
 	ret = clk_enable(clk_ahb);
 	if (ret) {
-		dev_err(dev, "Failed to enable AHB clock: %s\n",
-			strerror(ret));
+		dev_err(dev, "Failed to enable AHB clock: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
 	ret = clk_enable(clk_xin);
 	if (ret) {
-		dev_err(dev, "Failed to enable SD clock: %s\n", strerror(ret));
+		dev_err(dev, "Failed to enable SD clock: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 54309aec2f74..ebc7ed539da9 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -301,8 +301,7 @@ static int fsl_esdhc_probe(struct device *dev)
 
 	ret = clk_enable(host->clk);
 	if (ret) {
-		dev_err(dev, "Failed to enable clock: %s\n",
-			strerror(ret));
+		dev_err(dev, "Failed to enable clock: %pe\n", ERR_PTR(ret));
 		goto err_clk_put;
 	}
 
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 5d7bf69cc7c2..6b006dfa1de6 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -135,7 +135,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 
 		err = ubi_check_volume(ubi, vol->vol_id);
 		if (err < 0) {
-			ubi_err(ubi, "ubi volume check failed: %s", strerror(err));
+			ubi_err(ubi, "ubi volume check failed: %pe", ERR_PTR(err));
 			return err;
 		}
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 5310a2715d8a..09893ac008e8 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -618,8 +618,8 @@ static int imx_spi_probe(struct device *dev)
 
 	ret = clk_enable(imx->clk);
 	if (ret) {
-		dev_err(dev, "Failed to enable clock: %s\n",
-			strerror(ret));
+		dev_err(dev, "Failed to enable clock: %pe\n",
+			ERR_PTR(ret));
 		return ret;
 	}
 
-- 
2.39.5



