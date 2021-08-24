Delivery-date: Tue, 24 Aug 2021 12:48:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mITz6-0005Gp-QJ
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 12:48:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mITz3-0005Pw-Ap
	for lore@pengutronix.de; Tue, 24 Aug 2021 12:48:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e7CjqvAOwj2iglrCoVS+ox12hlzkRZP1avrtD7ZfYEY=; b=3OSrfU7OmUp/7K
	Cyv9AzDbsarbfeKdRPrFcXFbLx1uXXxZPUlVLQ8Sln1ymQHjJstjwpRc9a2yvIxrxoF3LxFMU8sJJ
	F6kFekPRRfBvPXN+brJlL2XSDyKgWkZYWPvSPaWoowG5xFrl2/g25iSzSef3Dr9v6WZX1k0QE2xYn
	WjCRCNbex5S8pgMUMvS0MyUgYThnDKjdI6DWsKgBTlu6+n/tTff7MrQBocR7rQKDhS/5+DBvNXJNg
	3DM2fj0dshqe+HR9xRtd3a+CEOB6xI1FGA4hJqVV6WgPn5Q5UBN9P7c/Ya4OizXHiSYdNZeQaak5e
	TjpdsIOFKxJR0aaxH1GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mITxK-002Zwh-Kc; Tue, 24 Aug 2021 10:46:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mITxF-002Zvh-Iw
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 10:46:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mITxC-0005Jk-Ju
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 12:46:50 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mITxC-0004If-AY
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 12:46:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Aug 2021 12:46:48 +0200
Message-Id: <20210824104648.15938-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_034653_666586_B5CF7F35 
X-CRM114-Status: GOOD (  12.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: imx-us-phy: add vbus_valid ro parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The parameter can be used by init scripts to detect a plugged usb cable.
Upon a plugged usb cable the barebox behaviour can be changed which can
be useful e.g. during production to apply a special production
environment.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/imx/imx-usb-phy.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 32098ef248..9420c8c109 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -37,9 +37,12 @@
 #define BM_USBPHY_CTRL_ENHOSTDISCONDETECT	BIT(1)
 
 #define ANADIG_USB1_CHRG_DETECT_SET		0x1b4
-#define ANADIG_USB2_CHRG_DETECT_SET		0x214
 #define ANADIG_USB1_CHRG_DETECT_EN_B		BIT(20)
 #define ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B	BIT(19)
+#define ANADIG_USB1_VBUS_DETECT_STAT		0x1c0
+#define ANADIG_USB1_VBUS_DETECT_STAT_VBUS_VALID	BIT(3)
+#define ANADIG_USB2_CHRG_DETECT_SET		0x214
+#define ANADIG_USB2_VBUS_DETECT_STAT		0x220
 
 struct imx_usbphy {
 	struct usb_phy usb_phy;
@@ -132,6 +135,27 @@ static const struct phy_ops imx_phy_ops = {
 	.to_usbphy = imx_usbphy_to_usbphy,
 };
 
+/* Albeit the access can only happen serial use two variables */
+unsigned int vbus_valid_usb1;
+unsigned int vbus_valid_usb2;
+
+static int imx_usbphy_get_vbus_state(struct param_d *p, void *priv)
+{
+	struct imx_usbphy *imxphy = priv;
+	unsigned int *vbus_valid;
+	unsigned int reg, val;
+
+	reg = imxphy->port_id ?
+		ANADIG_USB1_VBUS_DETECT_STAT :
+		ANADIG_USB2_VBUS_DETECT_STAT;
+	val = readl(imxphy->anatop + reg);
+
+	vbus_valid = imxphy->port_id ? &vbus_valid_usb1 : &vbus_valid_usb2;
+	*vbus_valid = !!(val & ANADIG_USB1_VBUS_DETECT_STAT_VBUS_VALID);
+
+	return 0;
+}
+
 static int imx_usbphy_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -149,11 +173,19 @@ static int imx_usbphy_probe(struct device_d *dev)
 	imxphy->port_id = ret;
 
 	if (of_get_property(np, "fsl,anatop", NULL)) {
+		unsigned int *vbus_valid = imxphy->port_id ?
+			&vbus_valid_usb1 :
+			&vbus_valid_usb2;
+
 		imxphy->anatop =
 			syscon_base_lookup_by_phandle(np, "fsl,anatop");
 		ret = PTR_ERR_OR_ZERO(imxphy->anatop);
 		if (ret)
 			goto err_free;
+
+		dev_add_param_bool(dev, "vbus_valid", param_set_readonly,
+				   imx_usbphy_get_vbus_state, vbus_valid,
+				   imxphy);
 	}
 
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

