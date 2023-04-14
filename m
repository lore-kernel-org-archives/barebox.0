Delivery-date: Fri, 14 Apr 2023 20:37:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnOID-003aFJ-Jq
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 20:37:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnOID-0004yp-Dx
	for lore@pengutronix.de; Fri, 14 Apr 2023 20:37:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qScYy4RzOC1hkQFSbGOs/D8/SVKSCjzfnvHq0K/jMI0=; b=y98rZDOaXfyO7CmXEC1tdWMK3y
	I2hlnhLwdLGDY3KJrbVN/RKFHIKDo6WuOYbUO95TJGitEEUc3/pOSDzQNEL7cnCLaQ2oJGvE7cBgc
	wO0x4WHG5qllA6NL4HrPV9A/HBg89nH7iN2VV+lOPGWPsxWGmYNBxjtzLghMOBsSjIW14OhbGqOA5
	XFI37rJh+ddPt5DT3VN3+CQcdsojUIxVeg8EMN0HCTWC+rKowNyve+L433rX7imHGtPGPJram0yZE
	KkzrzUi4Jtj+yWSDZKeXQ1buoki1FYeOxJ5wvj+RHW0f4shQAeW+a9F1onjVDskpmpT2A2usXp/h/
	UHomJJzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnOH4-00ANUQ-06;
	Fri, 14 Apr 2023 18:35:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnOH1-00ANTM-0Z
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 18:35:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGy-0004om-S4; Fri, 14 Apr 2023 20:35:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGy-00BG4E-7t; Fri, 14 Apr 2023 20:35:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGx-008Yi1-Kn; Fri, 14 Apr 2023 20:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 20:35:45 +0200
Message-Id: <20230414183545.2039170-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230414183545.2039170-1-a.fatoum@pengutronix.de>
References: <20230414183545.2039170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_113551_233939_6E04D94A 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: rpi: fixup prefix property from VideoCore FDT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox will warn about lack of these properties when network booting.
To make network booted barebox behave identically to flashed barebox,
let's unconditionally copy them from VideoCore FDT into fixed up FDT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 3ed4510296ea..319a3d85ead5 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -256,6 +256,21 @@ static enum reset_src_type rpi_decode_pm_rsts(struct device_node *chosen,
 	return RESET_UKWN;
 }
 
+static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
+{
+	const struct device_node *vc_chosen = data;
+	struct device_node *chosen;
+
+	chosen = of_create_node(root, "/chosen");
+	if (!chosen)
+		return -ENOMEM;
+
+	of_copy_property(vc_chosen, "overlay_prefix", chosen);
+	of_copy_property(vc_chosen, "os_prefix", chosen);
+
+	return 0;
+}
+
 static u32 rpi_boot_mode, rpi_boot_part;
 /* Extract useful information from the VideoCore FDT we got.
  * Some parameters are defined here:
@@ -289,6 +304,8 @@ static void rpi_vc_fdt_parse(void *fdt)
 		goto out;
 	}
 
+	of_register_fixup(rpi_vc_fdt_fixup, of_dup(chosen));
+
 	bootloader = of_find_node_by_name(chosen, "bootloader");
 
 	str = of_read_vc_string(chosen, "bootargs");
-- 
2.39.2



