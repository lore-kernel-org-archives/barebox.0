Delivery-date: Tue, 21 Jun 2022 22:04:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3k6e-009iP6-Ep
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 22:04:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3k6e-00071Z-2G
	for lore@pengutronix.de; Tue, 21 Jun 2022 22:04:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MIrWAY4mvbkjemV+Zvr4k6ThDHPbAvxbbcu/uotGmkk=; b=zWEgQJUDxxrELZrG27D5NQtLXO
	5St9XPtL4JdP40OWOKzcNQn7Q1A3MnCCte7G5KOqT3HNyoEbUtdisreGNqtsj9rOr4QHINV5p5tqK
	1dHTDRoOU5Uv48fjPJXF3sNN/McAK2lfJZ+azYOacoEojXVU+AFdAIa1jy3bKE706t3Yq+YcW9ESZ
	ib2rBwqK7ugR6p1PA3wokkP2bbHc3d0IU8Tl2jDprejsboUyozlUaz/xlCG2oVqn43kJSI0RMh+A8
	l7f7eRvosIXurzqhzubFmonUJj2wODBUTbSmiQYof6UemWeFO7EbTvbLMpMOiviNq5UUrt8UU4HPH
	/BJafWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3k4n-00712f-Ev; Tue, 21 Jun 2022 20:02:17 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3k4h-00711z-S0
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 20:02:14 +0000
Received: by mail-ej1-x629.google.com with SMTP id lw20so7422751ejb.4
        for <barebox@lists.infradead.org>; Tue, 21 Jun 2022 13:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MIrWAY4mvbkjemV+Zvr4k6ThDHPbAvxbbcu/uotGmkk=;
        b=ZeaadwmZVMqkPCGMOITAomaPZkp5PczAVXD0MDN5TZFUm2rnmiCk9pHle2WkqMsC/I
         81Qz9dLC64aVMDNTpedJWbNLqNxvspiwrbM2b4n9MgQPJdwF0of942wI15MlFiN8ICD8
         yw8OENyC6r+uKx8+ssZj265JcMFiYZoLp2SHjwTDMjqpJUMgty3FP/pBlBlqixf2rj1W
         migsUy/hynvlLFhK0CzWwKNJI6QibCRm04x3gGqThcDsk4fzufaNzyqtUgcvV5j/VmWs
         ZwOnW7xHMYjXTpiwtEdvYELsb7p6tQSx11IOmoTJLcXL7JcvBrK9U96FYqczqITYWLQ+
         TWZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MIrWAY4mvbkjemV+Zvr4k6ThDHPbAvxbbcu/uotGmkk=;
        b=goHR4w5hT60mz9nJdsPq1VQxtcjMp3lPF/LAOxU752jBiwlX791mnMNY74Er1yFz2x
         6Lpdx16rultdHVNiU50bx/NZ1+dwBO/948M8+QmwSinfkuop/py/vtDCtTaan4hPWmR+
         SzzpdB9XD5r0cTT3uisDN2H+RSONOMgPrYCeJ2Jrn//2WzfaRq/54Qa4mHfscYyeCh+X
         zzSXzl9vlBcPB7zjAcFxeDXDrk6TFMbpoGT0htOdQXEm/WeHK4qarXqgN89dofGrmujv
         6/SvvJ1Lt8SmpG7um5hKA4FGMLWzOgpIeoFUcko5KzcE3Yn3HB0j4Ns1Ne+Tgnc9KDlW
         Bmrw==
X-Gm-Message-State: AJIora+xBKqRQ8NHfzwCn5ON9DOysWaOUILjeYRN6aI/N7fhGyS4ConO
	z70ZqCWdgiCcOBSZEhzhL4RPJBuas3k=
X-Google-Smtp-Source: AGRyM1txMoOGc0BQcC2sgSTPMAJxgZxV0+4jRxgXwnNKLqZueu3EguHiwHtI1Fgu+jvxX7Vv9jhXKg==
X-Received: by 2002:a17:907:97c9:b0:71d:67ea:42ca with SMTP id js9-20020a17090797c900b0071d67ea42camr20122378ejc.7.1655841726837;
        Tue, 21 Jun 2022 13:02:06 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id ec30-20020a0564020d5e00b004358f6e0570sm3559403edb.17.2022.06.21.13.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 13:02:06 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue, 21 Jun 2022 22:02:01 +0200
Message-Id: <20220621200201.24899-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_130211_968834_15FCD080 
X-CRM114-Status: GOOD (  15.79  )
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rpi: cleanup parsing of vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Refactoring and cleanup of vc fdt parsing based on advice
from Ahmad Fatoum.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
I originally wanted to send these as part of v5 of
'ARM: rpi: parse useful data from vc fdt' patch, but you
were quicker with accepting the v4 :)
Hope that's not a problem.

 arch/arm/boards/raspberry-pi/rpi-common.c | 114 +++++++++++-----------
 1 file changed, 58 insertions(+), 56 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index eaca4edef..77935e5c8 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -202,22 +202,52 @@ static int rpi_env_init(void)
 }
 
 /* Some string properties in fdt passed to us from vc may be
- * malformed by not being null terminated. In that case, create and
- * return a null terminated copy.
+ * malformed by not being null terminated, so just create and
+ * return a fixed copy.
  */
 static char *of_read_vc_string(struct device_node *node,
-				     const char *prop_name,
-				     bool *is_dyn)
+			       const char *prop_name)
 {
 	int len;
-	char *str;
+	const char *str;
 
-	str = (char *)of_get_property(node, prop_name, &len);
-	if (!str || len <= 0)
+	str = of_get_property(node, prop_name, &len);
+	if (!str) {
+		pr_warn("no property '%s' found in vc fdt's '%s' node\n",
+			prop_name, node->full_name);
 		return NULL;
-	if (is_dyn)
-		*is_dyn = str[len - 1] != '\0';
-	return str[len - 1] == '\0' ? str : xstrndup(str, len);
+	}
+	return xstrndup(str, len);
+}
+
+static enum reset_src_type rpi_decode_pm_rsts(struct device_node *chosen,
+					      struct device_node *bootloader)
+{
+	u32 pm_rsts;
+	int ret;
+
+	ret = of_property_read_u32(chosen, "pm_rsts", &pm_rsts);
+	if (ret && bootloader)
+		 ret = of_property_read_u32(bootloader, "rsts", &pm_rsts);
+
+	if (ret) {
+		pr_warn("'pm_rsts' value not found in vc fdt\n");
+		return RESET_UKWN;
+	}
+	/*
+	 * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
+	 */
+
+	if (pm_rsts & PM_RSTS_HADPOR_SET)
+		return RESET_POR;
+	if (pm_rsts & PM_RSTS_HADDR_SET)
+		return RESET_JTAG;
+	if (pm_rsts & PM_RSTS_HADWR_SET)
+		return RESET_WDG;
+	if (pm_rsts & PM_RSTS_HADSR_SET)
+		return RESET_RST;
+
+	return RESET_UKWN;
 }
 
 static u32 rpi_boot_mode, rpi_boot_part;
@@ -229,31 +259,22 @@ static void rpi_vc_fdt_parse(void *fdt)
 {
 	int ret;
 	struct device_node *root, *chosen, *bootloader;
-	enum reset_src_type rst_src = RESET_UKWN;
 	char *str;
-	bool is_dyn;
-	u32 pm_rsts;
 
 	root = of_unflatten_dtb(fdt, INT_MAX);
 	if (IS_ERR(root))
 		return;
 
-	str = of_read_vc_string(root, "serial-number", &is_dyn);
+	str = of_read_vc_string(root, "serial-number");
 	if (str) {
 		barebox_set_serial_number(str);
-		if (is_dyn)
-			free(str);
-	} else {
-		pr_warn("no 'serial-number' property found in vc fdt root\n");
+		free(str);
 	}
 
-	str = of_read_vc_string(root, "model", &is_dyn);
+	str = of_read_vc_string(root, "model");
 	if (str) {
 		barebox_set_model(str);
-		if (is_dyn)
-			free(str);
-	} else {
-		pr_warn("no 'model' property found in vc fdt root\n");
+		free(str);
 	}
 
 	chosen = of_find_node_by_path_from(root, "/chosen");
@@ -264,23 +285,23 @@ static void rpi_vc_fdt_parse(void *fdt)
 
 	bootloader = of_find_node_by_name(chosen, "bootloader");
 
-	str = of_read_vc_string(chosen, "bootargs", NULL);
-	if (str)
+	str = of_read_vc_string(chosen, "bootargs");
+	if (str) {
 		globalvar_add_simple("vc.bootargs", str);
-	else
-		pr_warn("no 'bootargs' property found in vc fdt '/chosen'\n");
+		free(str);
+	}
 
-	str = of_read_vc_string(chosen, "overlay_prefix", NULL);
-	if (str)
+	str = of_read_vc_string(chosen, "overlay_prefix");
+	if (str) {
 		globalvar_add_simple("vc.overlay_prefix", str);
-	else
-		pr_warn("no 'overlay_prefix' property found in vc fdt '/chosen'\n");
+		free(str);
+	}
 
-	str = of_read_vc_string(chosen, "os_prefix", NULL);
-	if (str)
+	str = of_read_vc_string(chosen, "os_prefix");
+	if (str) {
 		globalvar_add_simple("vc.os_prefix", str);
-	else
-		pr_warn("no 'os_prefix' property found in vc fdt '/chosen'\n");
+		free(str);
+	}
 
 	ret = of_property_read_u32(chosen, "boot-mode", &rpi_boot_mode);
 	if (ret && bootloader)
@@ -300,28 +321,9 @@ static void rpi_vc_fdt_parse(void *fdt)
 	else
 		globalvar_add_simple_int("vc.boot_partition", &rpi_boot_part, "%u");
 
-	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
-		ret = of_property_read_u32(chosen, "pm_rsts", &pm_rsts);
-		if (ret && bootloader)
-			 ret = of_property_read_u32(bootloader, "rsts", &pm_rsts);
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
 
-		if (ret) {
-			pr_warn("pm_rsts could not be get from vc fdt\n");
-		} else {
-/*
- * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
- */
-			if (pm_rsts & PM_RSTS_HADPOR_SET)
-				rst_src = RESET_POR;
-			else if (pm_rsts & PM_RSTS_HADDR_SET)
-				rst_src = RESET_JTAG;
-			else if (pm_rsts & PM_RSTS_HADWR_SET)
-				rst_src = RESET_WDG;
-			else if (pm_rsts & PM_RSTS_HADSR_SET)
-				rst_src = RESET_RST;
-			reset_source_set(rst_src);
-		}
-	}
 out:
 	if (root)
 		of_delete_node(root);
-- 
2.17.1



