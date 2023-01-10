Delivery-date: Tue, 10 Jan 2023 18:36:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIY5-0080Oj-Kg
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 18:36:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIY3-0007CP-TT
	for lore@pengutronix.de; Tue, 10 Jan 2023 18:36:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sVhIUbjdoP33vTHeDI9er/VVjc6rt2Dgzkh2//+KOL0=; b=SC5KGqPnfQaajdVujtMWxkwjhp
	xcLp2GQUnw5Chwuo572UxMMdK/CLlaQbIxc6L9PiLEGSg8S9PJOvflIt3mdhpjUQAKVU1Pliwb3AG
	X49f+iM9TAIR39cyNWYA5HhEcHiblq9PiW0fMhkxe0M7FDFLm4M4z2JsHnqLG7vpxo1fmmdaWsemz
	0C64nqlejXnAy8VLc7iISKJvTEjURnKgB3irpgo0xgXGZJgU6YrubZPpayib0ibMtAx/Em+uoBL33
	nHuIVgddEIqydTZhwT3aZ8AKX/SXoFX6HhutUSDradTDEdrgeF8zEFw6jfGxo89d0g4yuO2hheQIM
	MV1ifVLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIWw-007zsc-Ci; Tue, 10 Jan 2023 17:35:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIWq-007zqp-Tn
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 17:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIWp-0006uz-Lz; Tue, 10 Jan 2023 18:35:15 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIWp-0057tc-1z; Tue, 10 Jan 2023 18:35:15 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIWo-000BGr-Fb; Tue, 10 Jan 2023 18:35:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 18:35:13 +0100
Message-Id: <20230110173513.43277-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_093516_973246_BBE2A212 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: switch open-coded instances to platform_mem_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that platform_mem_driver ensures probe at mem_initcall level, we no
longer need to use the opencoded version.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c      | 13 +------------
 arch/arm/mach-stm32mp/ddrctrl.c | 13 +------------
 2 files changed, 2 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index eb47957db0e5..9954bcb40bc1 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -754,18 +754,7 @@ static struct driver imx_esdctl_driver = {
 	.id_table = imx_esdctl_ids,
 	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
 };
-
-static int imx_esdctl_init(void)
-{
-	int ret;
-
-	ret = platform_driver_register(&imx_esdctl_driver);
-	if (ret)
-		return ret;
-
-	return of_devices_ensure_probed_by_dev_id(imx_esdctl_dt_ids);
-}
-mem_initcall(imx_esdctl_init);
+platform_mem_driver(imx_esdctl_driver);
 
 /*
  * The i.MX SoCs usually have two SDRAM chipselects. The following
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index ad4662c44d07..ffda1ba61f3c 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -157,15 +157,4 @@ static struct driver stm32mp1_ddr_driver = {
 	.probe  = stm32mp1_ddr_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
 };
-
-static int stm32mp1_ddr_init(void)
-{
-	int ret;
-
-	ret = platform_driver_register(&stm32mp1_ddr_driver);
-	if (ret)
-		return ret;
-
-	return of_devices_ensure_probed_by_dev_id(stm32mp1_ddr_dt_ids);
-}
-mem_initcall(stm32mp1_ddr_init);
+mem_platform_driver(stm32mp1_ddr_driver);
-- 
2.30.2



