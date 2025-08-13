Delivery-date: Wed, 13 Aug 2025 16:51:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCol-000CfI-0D
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoi-0006r9-SK
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=stbQl4dT0Oq41IZLtsOPvlt25SxjS4JyIyy3FyYJ2zE=; b=QvvFmcXAMs0WV4yvvKt25kY4N9
	1Yt2RsfHCB/dOTMd2YaJuQI8jb8ybhnkR/nUCmoo/vVxvR6eVx6p1ZDlGJ533io3LOFRtfQBIdzUr
	5iSN4NFcViJ9Iu5IH3jCHKECOICP6cF3eDYVBjJIn/15ZjyEmKR9eyQNV7jFNWA/DvCYKmNgSUOzV
	V4X1hThWQ37KUnbAy4fDGxY1q9svaK+EUjc5/JmAvs0uGW50rb7O5J9EyeJpyyjtFfrSKvySqrsLB
	19wjn4Amc/MvgGgUPmPHkM8ZszO+68maDu2oKhSrhSF5Bfqhkjdq1+3GJEjUFhZB6Z8cwUMkT/f8X
	DpA0g+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCnz-0000000DxtX-1I4s;
	Wed, 13 Aug 2025 14:50:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvKD-0WDK
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYC-0003xl-MW; Wed, 13 Aug 2025 16:34:00 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:37 +0200
Message-Id: <20250813143345.3758653-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_183481_7BCC7176 
X-CRM114-Status: GOOD (  11.72  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/13] ARM: psci: client: add PSCI version/method parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Populate device parameters with this information, so the bfetch command
can make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - use IS_ERR_OR_NULL to guard param getting
  - use new get_param_value helper
---
 arch/arm/cpu/psci-client.c | 17 +++++++++++++----
 include/param.h            | 10 ++++++++++
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 4c26beacb9bb..75cc3f59e0c1 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -117,6 +117,7 @@ static int of_psci_do_fixup(struct device_node *root, void *method)
 
 static int __init psci_probe(struct device *dev)
 {
+	struct param_d *param;
 	const char *method;
 	ulong of_version, actual_version;
 	int ret;
@@ -154,8 +155,12 @@ static int __init psci_probe(struct device *dev)
 	psci_invoke(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, &actual_version);
 	version = actual_version;
 
-	dev_info(dev, "detected version %u.%u\n",
-		 version >> 16, version & 0xffff);
+	param = dev_add_param_fixed(dev, "version", "%u.%u",
+				    version >> 16, version & 0xffff);
+	if (!IS_ERR_OR_NULL(param))
+		dev_info(dev, "detected version %s\n", get_param_value(param));
+
+	dev_add_param_fixed(dev, "method", "%s", method);
 
 	if (actual_version != of_version)
 		of_register_fixup(of_psci_do_fixup, (void *)method);
@@ -170,11 +175,15 @@ static int __init psci_probe(struct device *dev)
 	restart.priority = 400;
 
 	ret = restart_handler_register(&restart);
-	if (ret)
+	if (ret) {
 		dev_warn(dev, "error registering restart handler: %pe\n",
 			 ERR_PTR(ret));
+		return ret;
+	}
 
-	return ret;
+	dev_add_alias(dev, "psci");
+
+	return 0;
 }
 
 static __maybe_unused struct of_device_id psci_dt_ids[] = {
diff --git a/include/param.h b/include/param.h
index 1bf04015f266..c12151134752 100644
--- a/include/param.h
+++ b/include/param.h
@@ -253,6 +253,16 @@ static inline int bobject_param_set_generic(bobject_t bobj, struct param_d *p,
 }
 #endif
 
+static inline const char *get_param_value(struct param_d *param)
+{
+	if (!IS_ENABLED(CONFIG_PARAMETER))
+		return NULL;
+	if (IS_ERR_OR_NULL(param))
+		return ERR_CAST(param);
+
+	return param->get(param->bobj, param);
+}
+
 int param_set_readonly(struct param_d *p, void *priv);
 
 /*
-- 
2.39.5



