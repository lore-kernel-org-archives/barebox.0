Delivery-date: Thu, 18 Aug 2022 07:21:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyP-002dPu-Cr
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyN-0000gR-49
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=38IQSA3Vxm/8fnrVwla+R4cTScXekHWGsTlBUeuGA/8=; b=sTugeq7Sl5A41yMLzz+VrZBR/A
	CLBtW++dsJOrPoLxxNtt94C/jzgHET0Hi5IcNuH3bEc9DmhH+5nOA6/+wq5/5b6d7h7v+PlvX1h8X
	Y1/JDTpsn7uNHEMsHCtYO2p0+wgooPfG0JJKreiH7s8hBj9NlArksus0/5lZome+3J8iLPs45i7AQ
	C+XiBpPB+cMcq8ouoTLg5mxizIJS1LA6Re8jfJpfcufkmrrwtm9J4Nu1azKroyMY3dTW5T6lFUNfJ
	/b359k+Ok//3q7mAiMtqsrkEW9BjRmbfVRFuxntJszJqCdOENAhWRA3/bGryTItbH4baztFH7iypt
	2HJ51GYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXx6-00Fnow-Mp; Thu, 18 Aug 2022 05:20:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn3X-T9
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008Hj-Bh; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3a-Ge; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHq-Na; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:54 +0200
Message-Id: <20220818051955.2088238-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_081990_E08AB956 
X-CRM114-Status: GOOD (  12.12  )
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
Subject: [PATCH 09/10] RFC: soc: imx: imx8m-featctrl: add i.MX8M[MN] stand-alone driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previous commit added imx8m_feat_ctrl_init() which can be used to
initialize a feature controller for i.MX8M. Add a standalone driver with
new compatibles that can be described in the device tree to control
feature gating of peripherals.

[afa: This is a RFC. I lean towards the OCOTP driver calling
 imx8m_feat_ctrl_init(). See previous commits]

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/imx8m-featctrl.c | 37 ++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index 480c80e6c1d9..c9fedfde1488 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -5,6 +5,10 @@
 #include <linux/bitmap.h>
 #include <featctrl.h>
 #include <soc/imx8m/featctrl.h>
+#include <asm/unaligned.h>
+#include <of.h>
+#include <init.h>
+#include <linux/nvmem-consumer.h>
 
 #include <dt-bindings/features/imx8m.h>
 
@@ -62,3 +66,36 @@ int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
 
 	return feature_controller_register(&priv->feat);
 }
+
+static int imx8m_featctrl_probe(struct device_d *dev)
+{
+	const struct imx8m_featctrl_data *data = device_get_match_data(dev);
+	u32 tester4;
+	int ret;
+
+	ret = nvmem_cell_read_variable_le_u32(dev, "tester4", &tester4);
+	if (ret)
+		return ret;
+
+	return imx8m_feat_ctrl_init(dev, tester4, data);
+}
+
+static const struct imx8m_featctrl_data imx8mm_featctrl_data = {
+	.vpu_bitmask = 0x1c0000
+};
+static const struct imx8m_featctrl_data imx8mn_featctrl_data = {
+	.gpu_bitmask = 0x1000000
+};
+
+static const struct of_device_id imx8m_featctrl_dt_ids[] = {
+	{ .compatible = "barebox,imx8mm-featctrl", &imx8mm_featctrl_data },
+	{ .compatible = "barebox,imx8mn-featctrl", &imx8mn_featctrl_data },
+	{ /* sentinel */ }
+};
+
+static struct driver_d imx8m_featctrl_driver = {
+	.name = "imx8m-featctrl",
+	.probe = imx8m_featctrl_probe,
+	.of_compatible = imx8m_featctrl_dt_ids,
+};
+coredevice_platform_driver(imx8m_featctrl_driver);
-- 
2.30.2



