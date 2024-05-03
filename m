Delivery-date: Fri, 03 May 2024 12:33:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qDv-00H7lH-0h
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:33:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qDu-0001A1-J5
	for lore@pengutronix.de; Fri, 03 May 2024 12:33:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YzSuFVgTuXFJS6FqVgZXMHblVzKeavtpzjwrKh861/A=; b=bxBNPfNsJJz47uF8Af0sogATD2
	BbWadBZdWJd2wE6Y4BxNluH1a6zsXyHgeUbJwlpOe4GRA0a0+4euynzWnqW9DSlby3/7RmqdsLUrC
	Lg16G6Exkukj666ePlhCnDBxjxgLqwAaOATo+kqzOJ5/Aqi/8mz7lvr6+qI4Cwe/kx7sIcZMlOo59
	39nlXkGG5GYcTwnggZdJk7F0DxER2DQxcPuBAwpi6qwcr/zeXab/qH2NzDR7Gjvmcs4qnwq3GAGXs
	4RY4DiG7XkSUw2+/bh5SkT5pK40ArPrACrM/kajloFQZWBAe+hTDFi3TfCsaAYxOxe4UYjLrUMAIF
	TuI3vc8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDV-0000000G3mp-11nn;
	Fri, 03 May 2024 10:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDR-0000000G3lK-2k7v
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:32:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDQ-0000yf-3y; Fri, 03 May 2024 12:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-00FgUQ-Nh; Fri, 03 May 2024 12:32:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-005jqG-25;
	Fri, 03 May 2024 12:32:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:32:29 +0200
Message-Id: <20240503103230.1367842-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
References: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033233_720637_45C834F7 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: layerscape: add helpful runtime warning when firmware is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Firmware compiled into barebox PBL is rarely optional, so even if
CONFIG_MISSING_FIRMWARE_ERROR is disabled, barebox will not generate
images with missing PBL firmware.

We can relax this for firmware compiled into barebox proper though: If
the user disables CONFIG_MISSING_FIRMWARE_ERROR, just have the driver
fail at runtime as not to break other boards in the same build that
don't require the firmware.

Missing barebox proper firmware will be detectable as a 0-byte firmware
blob in the follow-up commit, so prepare for that by printing an
informative error message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 4 ++++
 drivers/net/fsl-fman.c         | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 21efaae3ab32..99b76b4c30d7 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -121,6 +121,10 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	}
 
 	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
+	if (!ppa_fw_size) {
+		pr_err("PPA Firmware was not included in build\n");
+		return -ENOSYS;
+	}
 
 	if (el == 3) {
 		unsigned long cr;
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 5528ecccc950..98af3dafb44a 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -213,6 +213,10 @@ static int fman_upload_firmware(struct device *dev, struct fm_imem *fm_imem)
 	const struct qe_firmware *firmware;
 
 	get_builtin_firmware(fsl_fman_ucode_ls1046_r1_0_106_4_18_bin, &firmware, &size);
+	if (!size) {
+		dev_err(dev, "FMan Firmware was not included in build\n");
+		return -ENOSYS;
+	}
 
 	ret = qe_validate_firmware(firmware, size);
 	if (ret)
-- 
2.39.2



