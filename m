Delivery-date: Thu, 16 Jun 2022 15:12:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIb-003udK-AG
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIa-0001VL-Vn
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byP1R9flgMJIlVAaL5Iem5dyjLGQNy3bPfjFfS8BJ6Y=; b=PPC31jz8CS9zUv
	aUZ0c0NnmujiRlFsa+xX7ujW7a4EJZY6s8lHD9+PAGWHMctJaNOU2yYhZV4SwJfmNu3CdUT9SRQwi
	u1D816kdxnwYlFT/XqQTG5WJQYl5NUM3lS2KZblFGFJwRACbDF6y9+qBsfkdNwL16D/BBdNv9CwX7
	Gd/E9ZBXr0hJh28i2LEgkoXljnn9g0DbHB+N/+J9G8TghjNtlefqeE9P/Pth7TGSs+50ihMJfmdus
	a2To+KdrIzh8cnju2ED3M3k5l3XpNvQmfBq3GBK3Lv46k6339AD92XZHN7BoArmsP6Mdh+YLM3ZVt
	qWW6Uvzx7l5Q+6042n5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHO-002Ous-Tl; Thu, 16 Jun 2022 13:11:23 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHD-002Oqg-Ll
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=byP1R9flgMJIlVAaL5Iem5dyjLGQNy3bPfjFfS8BJ6Y=;
	b=ltXdYqEy4MsIL+SSA3oP2MIiEJ7a06xEJyhR6F2TAUX98Gjd1/QYRHiHuOYquLTLXE9C16VLBT08I
	 agqOlu1L5Vk9+YlCIxpCeWgeM06NOA1lce9edMHZu1vD366K2jHBcYazu0ySD9t8bMMw4xMoIjKigt
	 /8Ws7e42DkTfXKaNnr5pMPfdac2DjRWOU6jOjN/wQI0C0IlBugQtIktJjRhKwDcGm1vPWTNrQy97p4
	 SAJw7d0ol0LmB4t3IV+QrVYYShy/40Pr8SddiNPeCSbhIPKjd6j69ghTqO0bOF/ALnYlbBsAjbD8rK
	 HIAhS1430p33LV11vCKXEFZCbXCwkdA==
X-MSG-ID: ca19b092-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:14 +0200
Message-Id: <20220616131114.214628-10-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061111_884552_F8949E60 
X-CRM114-Status: GOOD (  11.17  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 9/9] ARM: boards: protonic-imx6: Register serial_number parameter with ocotp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 39 ++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index dd2c041e07..8436903fd8 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -90,6 +90,7 @@ struct prt_imx6_priv {
 	unsigned int hw_rev;
 	const char *name;
 	unsigned int no_usb_check;
+	char *ocotp_serial;
 };
 
 struct prti6q_rfid_contents {
@@ -252,7 +253,6 @@ static int prt_imx6_read_i2c_mac_serial(struct prt_imx6_priv *priv)
 static int prt_imx6_read_ocotp_serial(struct prt_imx6_priv *priv)
 {
 	int ret;
-	char serial[11];
 	unsigned val;
 
 	ret = imx_ocotp_read_field(OCOTP_GP1, &val);
@@ -265,9 +265,31 @@ static int prt_imx6_read_ocotp_serial(struct prt_imx6_priv *priv)
 		return -EINVAL;
 	val &= PRT_IMX6_GP1_FMT_DEC - 1;
 
-	snprintf(serial, sizeof(serial), "%u", val);
+	priv->ocotp_serial = xasprintf("%u", val);
 
-	return prt_imx6_set_serial(priv, serial);
+	return prt_imx6_set_serial(priv, priv->ocotp_serial);
+}
+
+static int prt_imx6_set_ocotp_serial(struct param_d *param, void *driver_priv)
+{
+	struct prt_imx6_priv *priv = driver_priv;
+	int ret;
+	unsigned val;
+
+	ret = kstrtouint(priv->ocotp_serial, 10, &val);
+	if (ret)
+		return ret;
+
+	if (val & PRT_IMX6_GP1_FMT_DEC)
+		return -ERANGE;
+	val |= PRT_IMX6_GP1_FMT_DEC;
+
+	ret = imx_ocotp_write_field(OCOTP_GP1, val);
+	if (ret)
+		return ret;
+
+	barebox_set_serial_number(priv->ocotp_serial);
+	return 0;
 }
 
 static int prt_imx6_usb_mount(struct prt_imx6_priv *priv)
@@ -536,6 +558,8 @@ exit_bbu:
 static int prt_imx6_devices_init(void)
 {
 	struct prt_imx6_priv *priv = prt_priv;
+	struct device_d *ocotp_dev;
+	struct param_d *p;
 
 	if (!priv)
 		return 0;
@@ -558,6 +582,15 @@ static int prt_imx6_devices_init(void)
 
 	prt_imx6_env_init(priv);
 
+	ocotp_dev = get_device_by_name("ocotp0");
+	if (ocotp_dev) {
+		p = dev_add_param_string(ocotp_dev, "serial_number",
+				 prt_imx6_set_ocotp_serial, NULL,
+				 &priv->ocotp_serial, priv);
+		if (IS_ERR(p))
+			return PTR_ERR(p);
+	}
+
 	return 0;
 }
 late_initcall(prt_imx6_devices_init);
-- 
2.34.1



