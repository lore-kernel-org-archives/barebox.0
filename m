Delivery-date: Thu, 16 Jun 2022 15:12:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIe-003ueH-7W
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pId-0001WR-RO
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzwjFdfh5ZdBl5gjfUfBZxdwZymfOAkUyMJKnOF3Xsg=; b=bBnxdrXOCkoRr4
	gD8JnNqCjwIDBmKUAfyMIa9RCkVOh8BkQRkK0g3KqbBSYjy8uF3npMORns42iI+7U/K2LkGVkMyTW
	rmNc7zFFTBpgJZqjSfzHOFb4kmFe1fAQXQigDaXeIbWhRCGHIomZRWaDtoYB8HD2Wh3TLJe51NqHC
	5GDlCmSUOjCF1Ti2uqMYB/LcO0zrG685Jp5WX6Gvl3GIJlGKQFId9tRATvFgLBH3a9ZkW4jUgkR11
	qk6M0Wfbvm9GkX7Zowo1RyRbLDlxvkPqTbMENiG8RY5sNHLPsTrUY0ol/4Aa/pxgHN1j9mhHjidWB
	UYwuzNsi2bpZ/08Gj2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHR-002OvR-Dl; Thu, 16 Jun 2022 13:11:25 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHD-002Oqe-El
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=YzwjFdfh5ZdBl5gjfUfBZxdwZymfOAkUyMJKnOF3Xsg=;
	b=aSjXY/OlCKDtig0KixMMR8EwVXsppBqLGc6pmyy63xcBt09nddsFZITAl0txwrLtt1n6uZptYOYTc
	 0NRjbRkPBH13Owo5w4gbvZqPJrxMWTz/6NcRLFsvWfUl+ZYFKlGVLynQYEgZuhnrPhlV5PMlrInIIx
	 fbDkLRfb78YQnx3V6oVnw42Na2s24s1gtYClj+Mk6+Xcbzmsv2eD8R2E/WnoNFooPkXbKr17iwafEv
	 gJubdnq3o7ozyshoTRg4JY3OETyRcQCtZELZHgccORDhI0uL/toyMjwocnTbT7RZ2YYf061VQVk7oU
	 QJtQtxQElhQtpLSrYrNhvSejjjB0ocA==
X-MSG-ID: c9ec9f88-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:13 +0200
Message-Id: <20220616131114.214628-9-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061111_677561_EAD2E94B 
X-CRM114-Status: GOOD (  12.81  )
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
Subject: [PATCH 8/9] ARM: boards: protonic-imx6: Read serial and mac from fuses if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Read board serial number from GP1 fuses if available and fall-back to the
i2c RFID eeprom (current method) otherwise.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 44 ++++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 95ec7be793..dd2c041e07 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -15,6 +15,7 @@
 #include <i2c/i2c.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
+#include <mach/ocotp-fusemap.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <mfd/syscon.h>
 #include <net.h>
@@ -211,12 +212,11 @@ static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
 	return 0;
 }
 
-static int prt_imx6_set_serial(struct prt_imx6_priv *priv,
-			       struct prti6q_rfid_contents *rfid)
+static int prt_imx6_set_serial(struct prt_imx6_priv *priv, char *serial)
 {
-	rfid->serial[9] = 0; /* Failsafe */
-	dev_info(priv->dev, "Serial number: %s\n", rfid->serial);
-	barebox_set_serial_number(rfid->serial);
+	serial[9] = 0; /* Failsafe */
+	dev_info(priv->dev, "Serial number: %s\n", serial);
+	barebox_set_serial_number(serial);
 
 	return 0;
 }
@@ -240,13 +240,36 @@ static int prt_imx6_read_i2c_mac_serial(struct prt_imx6_priv *priv)
 	if (ret)
 		return ret;
 
-	ret = prt_imx6_set_serial(priv, &rfid);
+	ret = prt_imx6_set_serial(priv, rfid.serial);
 	if (ret)
 		return ret;
 
 	return 0;
 }
 
+#define PRT_IMX6_GP1_FMT_DEC		BIT(31)
+
+static int prt_imx6_read_ocotp_serial(struct prt_imx6_priv *priv)
+{
+	int ret;
+	char serial[11];
+	unsigned val;
+
+	ret = imx_ocotp_read_field(OCOTP_GP1, &val);
+	if (ret) {
+		dev_err(priv->dev, "Failed to read ocotp serial (%i)\n", ret);
+		return ret;
+	}
+
+	if (!(val & PRT_IMX6_GP1_FMT_DEC))
+		return -EINVAL;
+	val &= PRT_IMX6_GP1_FMT_DEC - 1;
+
+	snprintf(serial, sizeof(serial), "%u", val);
+
+	return prt_imx6_set_serial(priv, serial);
+}
+
 static int prt_imx6_usb_mount(struct prt_imx6_priv *priv)
 {
 	struct device_d *dev = priv->dev;
@@ -522,7 +545,14 @@ static int prt_imx6_devices_init(void)
 
 	prt_imx6_bbu(priv);
 
-	prt_imx6_read_i2c_mac_serial(priv);
+	/*
+	 * Read serial number from fuses. On success we'll assume the imx_ocotp
+	 * driver takes care of providing the mac address if needed. On
+	 * failure we'll fallback to reading and setting serial and mac from an
+	 * attached RFID eeprom.
+	 */
+	if (prt_imx6_read_ocotp_serial(priv) != 0)
+		prt_imx6_read_i2c_mac_serial(priv);
 
 	bootentry_register_provider(prt_imx6_bootentry_provider);
 
-- 
2.34.1



