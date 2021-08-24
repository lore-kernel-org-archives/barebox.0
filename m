Delivery-date: Tue, 24 Aug 2021 14:14:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIVKK-0007UQ-6M
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 14:14:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIVKF-0008SO-ND
	for lore@pengutronix.de; Tue, 24 Aug 2021 14:14:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vYwbo5r9B4qBEBD/8ZdLPdKnpP4F3gwwdmh8uuDSqG0=; b=Ad9Lp1fxihdU/o
	tixvUThBbNO+hRK0rTGzNqV+7Tpie3f2LYNgEkOMYTBqpB90MNRy+uFYJYbr5W3UXENcLDVm51w7U
	bJ6BVshITaacJ5jhDwiX7NJNwrCT2IKBfddpGuOMpMiL2AV5BYrhte2Nx/eNSZbSvizZoj3XE+pw9
	I0ysCmx1vVQHDVzpOxLdQwT5y5vhcq51ceCu1nMbIthNAr/tTDnaQXo9rOFRzFS+eIgrjwfmIthx5
	0GA1Fbm+emGWICp8vIoC5z4DNj8hdIfAjArjnmq9FIOycfaewPOMuYmLQkOo1F4VHeJdQRGjWgks5
	J50R5b45a31LIrTgTo7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIVI2-002xrR-BK; Tue, 24 Aug 2021 12:12:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIVHy-002xov-2Y
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 12:12:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIVHm-0007tL-EN
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 14:12:10 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIVHm-0008L2-4o
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 14:12:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Aug 2021 14:12:08 +0200
Message-Id: <20210824121208.31988-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_051222_154914_637CD11E 
X-CRM114-Status: GOOD (  13.79  )
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
Subject: [PATCH v2] usb: imx-us-phy: add vbus_valid ro parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The parameter can be used by init scripts to detect a plugged usb cable.
Upon a plugged usb cable the barebox behaviour can be changed which can
be useful e.g. during production to apply a special production
environment.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- move vbus_valid into 'struct imx_usbphy' to avoid global vars
- add comment

 drivers/usb/imx/imx-usb-phy.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 32098ef248..6a58e71ba2 100644
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
@@ -49,6 +52,8 @@ struct imx_usbphy {
 	struct clk *clk;
 	struct phy_provider *provider;
 	int port_id;
+
+	unsigned int vbus_valid;
 };
 
 static int imx_usbphy_phy_init(struct phy *phy)
@@ -132,6 +137,21 @@ static const struct phy_ops imx_phy_ops = {
 	.to_usbphy = imx_usbphy_to_usbphy,
 };
 
+static int imx_usbphy_get_vbus_state(struct param_d *p, void *priv)
+{
+	struct imx_usbphy *imxphy = priv;
+	unsigned int reg, val;
+
+	reg = imxphy->port_id ?
+		ANADIG_USB1_VBUS_DETECT_STAT :
+		ANADIG_USB2_VBUS_DETECT_STAT;
+	val = readl(imxphy->anatop + reg);
+
+	imxphy->vbus_valid  = !!(val & ANADIG_USB1_VBUS_DETECT_STAT_VBUS_VALID);
+
+	return 0;
+}
+
 static int imx_usbphy_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -154,6 +174,15 @@ static int imx_usbphy_probe(struct device_d *dev)
 		ret = PTR_ERR_OR_ZERO(imxphy->anatop);
 		if (ret)
 			goto err_free;
+
+		/*
+		 * This is useful in case of usb-otg = device. In host case
+		 * it isn't that useful since we are the supplier of the vbus
+		 * signal.
+		 */
+		dev_add_param_bool(dev, "vbus_valid", param_set_readonly,
+				   imx_usbphy_get_vbus_state,
+				   &imxphy->vbus_valid, imxphy);
 	}
 
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

