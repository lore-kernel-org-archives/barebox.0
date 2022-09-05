Delivery-date: Mon, 05 Sep 2022 19:45:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVGA9-007lBR-43
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:45:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVGA9-0003kH-Ja
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:45:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9gngxlzcGNFHCESSEcmCvyqKdZ4Z183QVjG3OzUDn3M=; b=ORHlsaJhsSITfJC+fD9MuHu2uu
	/uD5/pxYm3cG5ms5hbGhw3AHFNhxOFrgth4tKQLB4btRFVN41SQrIMPiAcmGkoLDOE95fX2u8gtkF
	MX7zqLlK5/W4Tmg+fyb80f+qDCwKL/BNmVGN69QUDoiBK6CchB9OPV8Uno1BDFrCkvD+2wiZzXvW4
	I4eCAoh6WY+os7YAgWp3+kHh1AvFaICeoNaFSZx/PQN4vXQSzyQ69af4B3CbpTbvMyoSkj5Wahle8
	JVxVjcooUDNHLggK91Ayr3KRoFdeCaWPja/0sJjrMZsYY9phvN3FLRsq/z+9iep0ViergYWPipL5u
	riA0/vAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG8Y-007lNu-DT; Mon, 05 Sep 2022 17:43:54 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9Sj-000R32-Hc
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:36:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sh-0005rx-No; Mon, 05 Sep 2022 12:36:15 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sf-0042jv-4d; Mon, 05 Sep 2022 12:36:15 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sg-007LME-5X; Mon, 05 Sep 2022 12:36:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:36:13 +0200
Message-Id: <20220905103613.1750340-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103613.1750340-1-a.fatoum@pengutronix.de>
References: <20220905103613.1750340-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033617_645090_BD48B442 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] i2c: implement of_i2c_device_enable_and_register_by_alias()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This new helper is the i2c equivalent of the existing
of_device_enable_and_register_by_alias(). That function isn't applicable
to i2c devices as it would create a platform device, but we need the
controller to create an i2c device instead.

This function was implemented for board code that uses an I2C EEPROM to
determine whether a specific I2C device is available on the same bus.
As reading the EEPROM requires the i2c controller be probed, there was
no way to reprobe the i2c controller children to create a device for the
previously disabled node. With of_i2c_register_devices_by_node(), this
is now possible and this helper makes it easier to use from board code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 13 +++++++++++++
 include/i2c/i2c.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index e70e51618850..40590b7d11be 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -597,6 +597,19 @@ struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
 	return to_i2c_client(dev);
 }
 
+int of_i2c_device_enable_and_register_by_alias(const char *alias)
+{
+	struct device_node *np;
+
+	np = of_find_node_by_alias(NULL, alias);
+	if (!np)
+		return -ENODEV;
+
+	of_device_enable(np);
+	return of_i2c_register_devices_by_node(np->parent);
+}
+
+
 static void i2c_parse_timing(struct device_d *dev, char *prop_name, u32 *cur_val_p,
 			    u32 def_val, bool use_def)
 {
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index f5e2dc511ed1..e37a1770dc1e 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -297,6 +297,7 @@ struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
 int of_i2c_register_devices_by_node(struct device_node *node);
 struct i2c_client *of_find_i2c_device_by_node(struct device_node *node);
+int of_i2c_device_enable_and_register_by_alias(const char *alias);
 
 void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
 
-- 
2.30.2



