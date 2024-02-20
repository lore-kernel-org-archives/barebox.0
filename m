Delivery-date: Tue, 20 Feb 2024 10:48:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMkF-00FsHG-11
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:48:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMkE-0006SL-0f
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:48:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6wS3lZ3fT48xtheSq/kP3CcJkJDCteJ7DXm5RBdkthU=; b=FmGMFy8poMTMM6B0OORLJl5wQz
	W6E8k8FYUqmAYjQIQOk/ihzliH14cqif9adOqmPqKYcPrU4+fKlrfkcviNrfNySmTkmZmGoROn/Zd
	EJvgCtjBLtEaXfpCcP4ldHznvviINNSUjdz0YbhZLhbM252hWpxg0osifxoGnjWtIl4jqXolzOl7B
	da3GgGIMjG8iVWeS7vMXqbSaTE6fbKImxVxNFm4qXMJQfKu7v0Q11DpO9KISGC2v0r2l13CkrGS0r
	Bi84dPHY2JQJGvlDzU8MMi/rpLhcoWuKVyEd5O65NTAunGxqigpkUdO6P1BUR72m0I8NmVI/qQL/T
	G2bAAxGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMjo-0000000E5M7-23O1;
	Tue, 20 Feb 2024 09:48:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMjm-0000000E5Ji-09D8
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:48:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMjc-0006Bm-Rj; Tue, 20 Feb 2024 10:48:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMjc-001on4-ER; Tue, 20 Feb 2024 10:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-1m;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:58 +0100
Message-Id: <20240220093100.1539120-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014830_111574_52AB4DF0 
X-CRM114-Status: GOOD (  15.36  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 12/14] ARM: at91: skov-arm9cpu: configure SMC for NOR flash use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Deployed ARM9CPU's boots from NOR, not NAND. Replace the EBI NAND configuration
taken from the EK with one appropriate for the NOR chip we have.

As this needs to happen earlier than the cfi-flash driver probe, we also
move the board code to coredevice initlevel.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-arm9cpu/board.c | 45 +++++++++++++++-------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index ddf6b68bcc6f..1d0ecb247d8e 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -16,23 +16,32 @@
 #include <mach/at91/hardware.h>
 #include <mach/at91/iomux.h>
 
-static struct sam9_smc_config ek_nand_smc_config = {
-	.ncs_read_setup		= 0,
-	.nrd_setup		= 1,
+static struct sam9_smc_config skov_nor_smc_config = {
+	/* Setup time is 2 cycles after the CS signal */
+	.nwe_setup		= 2,
 	.ncs_write_setup	= 0,
-	.nwe_setup		= 1,
+	.nrd_setup		= 2,
+	.ncs_read_setup		= 0,
 
-	.ncs_read_pulse		= 3,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 3,
-	.nwe_pulse		= 3,
+	/* Set pulse long enough - pulse should be a bit shorter than the cycle */
+	.nwe_pulse		= 10,
+	.ncs_write_pulse	= 12,
+	.nrd_pulse		= 10,
+	.ncs_read_pulse		= 12,
 
-	.read_cycle		= 5,
-	.write_cycle		= 5,
+	/* Set cycle long enougth at least 12 Cycles->120ns plus a little extra */
+	.write_cycle		= 0x13,
+	.read_cycle		= 0x13,
 
+	/* Set mode: 16Bit bus width, enable read and write
+	 *   Note: pagemode + 32 byte pages do not work with the 29GL512P flash
+	 */
 	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-				  AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 2,
+				  AT91_SMC_EXNWMODE_DISABLE |
+				  AT91_SMC_BAT_WRITE |
+				  AT91_SMC_DBW_16 |
+				  AT91_SMC_TDFMODE,
+	.tdf_cycles		= 1,
 };
 
 BAREBOX_MAGICVAR(board.mem, "The detected memory size in MiB");
@@ -47,19 +56,13 @@ static int mem;
  */
 static int skov_arm9_probe(struct device *dev)
 {
-	unsigned long csa;
-
 	add_generic_device("at91sam9-smc", 0, NULL, AT91SAM9263_BASE_SMC0, 0x200,
 			   IORESOURCE_MEM, NULL);
 	add_generic_device("at91sam9-smc", 1, NULL, AT91SAM9263_BASE_SMC1, 0x200,
 			   IORESOURCE_MEM, NULL);
 
-	csa = readl(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
-	csa |= AT91SAM9263_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
-	writel(csa, AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
-
-	/* configure chip-select 3 (NAND) */
-	sam9_smc_configure(0, 3, &ek_nand_smc_config);
+	/* configure chip-select 0 (NOR) */
+	sam9_smc_configure(0, 0, &skov_nor_smc_config);
 
 	mem = at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0));
 	mem = mem / SZ_1M;
@@ -82,4 +85,4 @@ static struct driver skov_arm9_driver = {
 	.probe = skov_arm9_probe,
 	.of_compatible = DRV_OF_COMPAT(skov_arm9_ids),
 };
-device_platform_driver(skov_arm9_driver);
+coredevice_platform_driver(skov_arm9_driver);
-- 
2.39.2



