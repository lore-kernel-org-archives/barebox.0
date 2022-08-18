Delivery-date: Thu, 18 Aug 2022 07:22:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyj-002dRo-DU
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:22:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyg-0000n3-Pz
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=paRFbdz4wIJseywMpcB2eulNOp944wrmrtsep+Wp1yA=; b=dvRVrjLt1Lr8ZLthVJv0p9uTTh
	SGakNqR7JRWIRfrVMdSfYMvy3soAQlyXSNh2kcpNYbcAcuTSnrxiaWkOmr02F51aGCX/BltnQ0FGy
	3Sl+2XUGSxebbK+THHA/YpLQkTcyELMffu4STmIh7uLegQoRP+Z9XgHp4u66g3yO4cVg6n7vl0QEW
	8EeU6fI0AWS9d3N0E+bXSlMA/ZkpNXFTAmOgh0kwLxJer3p1A6AsfQFt+NQ9myesc9HG6sbPkkVpm
	QMiK1A/hl+ZRl2bwGhYDXYd1nSyoUX9RINFpUaa0+STIXdirdwMmSrhwOxLHHmzsOV/dhl3/xTgLH
	hV/gT7hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxM-00FoCs-SW; Thu, 18 Aug 2022 05:20:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwn-00Fn3s-4L
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008Hp-BW; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3d-Hb; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHY-Lg; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:48 +0200
Message-Id: <20220818051955.2088238-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_249296_CF724BAC 
X-CRM114-Status: GOOD (  15.97  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] driver: featctrl: fixup kernel device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox not proving feature gated devices is one aspect of the feature
controller framework. The more important one is that Linux doesn't probe
them as these tend to be units like VPUs and GPUs or extra CPU cores, which
barebox usually has no use for anyway. Add a fixup that runs for every
DT and evaluates barebox,feature-gates properties in the barebox device
tree and fixes up the result into the kernel device tree using
reproducible names to match nodes between the two.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/featctrl.c | 40 ++++++++++++++++++++++++++++++++++++++++
 drivers/of/Kconfig      | 12 ++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
index a5d06323c221..abe21698ede7 100644
--- a/drivers/base/featctrl.c
+++ b/drivers/base/featctrl.c
@@ -118,3 +118,43 @@ int of_feature_controller_check(struct device_node *np)
 	return err ?: FEATCTRL_GATED;
 }
 EXPORT_SYMBOL_GPL(of_feature_controller_check);
+
+static int of_featctrl_fixup(struct device_node *root, void *context)
+{
+	struct device_node *srcnp, *dstnp;
+	int err = 0;
+
+	for_each_node_with_property(srcnp, "barebox,feature-gates") {
+		int ret;
+
+		ret = of_feature_controller_check(srcnp);
+		if (ret < 0)
+			err = ret;
+		if (ret != FEATCTRL_GATED)
+			continue;
+
+		dstnp = of_get_node_by_reproducible_name(root, srcnp);
+		if (!dstnp) {
+			pr_debug("gated node %s not in fixup DT\n",
+				 srcnp->full_name);
+			continue;
+		}
+
+		pr_debug("fixing up gating of node %s\n", dstnp->full_name);
+		/* Convention is deleting non-existing CPUs, not disable them. */
+		if (of_property_match_string(srcnp, "device_type", "cpu") >= 0)
+			of_delete_node(dstnp);
+		else
+			of_device_disable(dstnp);
+	}
+
+	return err;
+}
+
+static __maybe_unused int of_featctrl_fixup_register(void)
+{
+	return of_register_fixup(of_featctrl_fixup, NULL);
+}
+#ifdef CONFIG_FEATURE_CONTROLLER_FIXUP
+device_initcall(of_featctrl_fixup_register);
+#endif
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index f3d2cc00cc86..7283331ba9ce 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -16,6 +16,18 @@ config OFDEVICE
 	select DTC
 	bool "Enable probing of devices from the devicetree"
 
+config FEATURE_CONTROLLER_FIXUP
+	bool "Fix up DT nodes gated by feature controller"
+	depends on FEATURE_CONTROLLER
+	default y
+	help
+	  When specified, barebox feature controller drivers are consulted
+	  prior to probing nodes to detect whether the device may not
+	  be available (e.g. because support is fused out).
+	  This option additionally fixes up the kernel device tree,
+	  so it doesn't attempt probing these devices either.
+	  If unsure, say y.
+
 config OF_ADDRESS_PCI
 	bool
 
-- 
2.30.2



