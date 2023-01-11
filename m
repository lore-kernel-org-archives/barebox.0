Delivery-date: Wed, 11 Jan 2023 09:03:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5T-008dtx-5n
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:03:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5Q-0000gd-O3
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:03:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fr41Onjj+BwuZRGyinGrFZYoySfbuwL+Hk7OXGjdNSo=; b=C6cbRoZ4hjcaj3usqZlbUKA9ZN
	A7OwFBLlRYrrcZJexokS22+rjGT7H5n5zF9my9l+zWt6zWXGUsmrJZUgbWyEvlsksHOpcpkSWShu8
	okQw2uMrts3nTMH9Z+y1Jq3gII6q6tdAURVn4/VaimzZ7uYon2imYAsp9JWB/ZMBGyYLA1dZxpDGn
	UHTE9ybY9sX7sJ7+n9UmidjmJDl5TQdNGffc+zQhtQH9zP+654w72QbiGR3Oe4Www511K/whDcI8i
	LFqr+Bjs+sYwdd1BG7wZJVv3C6cUFV//dOxHzBSGf7vootdWUfTLdaqsR8UV4RPlMymojTwGmyrOQ
	ueQK5OmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW3z-00AEyB-J7; Wed, 11 Jan 2023 08:02:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW37-00AEXQ-Kn
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW36-0008MG-BE; Wed, 11 Jan 2023 09:01:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-005FfD-Mh; Wed, 11 Jan 2023 09:01:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003v0F-By; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:18 +0100
Message-Id: <20230111080119.933475-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000129_809393_C797C41E 
X-CRM114-Status: GOOD (  14.10  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/11] regmap: i2c: use formatted I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Switching to formatted I/O will enable consumers to customize access
sizes, which we'll need to support KSZ switch I2C communication.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Kconfig      |  1 +
 drivers/base/regmap/regmap-i2c.c | 50 ++++++++++++++++++++++----------
 2 files changed, 36 insertions(+), 15 deletions(-)

diff --git a/drivers/base/regmap/Kconfig b/drivers/base/regmap/Kconfig
index 78a00a085f05..c76908952a79 100644
--- a/drivers/base/regmap/Kconfig
+++ b/drivers/base/regmap/Kconfig
@@ -6,6 +6,7 @@ config REGMAP_FORMATTED
 config REGMAP_I2C
 	bool "I2C regmaps" if COMPILE_TEST
 	depends on I2C
+	select REGMAP_FORMATTED
 
 config REGMAP_SPI
 	bool "SPI regmaps" if COMPILE_TEST
diff --git a/drivers/base/regmap/regmap-i2c.c b/drivers/base/regmap/regmap-i2c.c
index 756bc224cc3b..583bfffc1bb0 100644
--- a/drivers/base/regmap/regmap-i2c.c
+++ b/drivers/base/regmap/regmap-i2c.c
@@ -7,34 +7,54 @@
 #include <regmap.h>
 
 
-static int regmap_i2c_reg_read(void *client, unsigned int reg, unsigned int *val)
+static int regmap_i2c_read(void *context,
+			   const void *reg, size_t reg_size,
+			   void *val, size_t val_size)
 {
-	u8 buf[1];
+	struct device_d *dev = context;
+	struct i2c_client *i2c = to_i2c_client(dev);
+	struct i2c_msg xfer[2];
 	int ret;
 
-	ret = i2c_read_reg(client, reg, buf, 1);
-	if (ret != 1)
-		return ret;
+	xfer[0].addr = i2c->addr;
+	xfer[0].flags = 0;
+	xfer[0].len = reg_size;
+	xfer[0].buf = (void *)reg;
 
-	*val = buf[0];
-	return 0;
+	xfer[1].addr = i2c->addr;
+	xfer[1].flags = I2C_M_RD;
+	xfer[1].len = val_size;
+	xfer[1].buf = val;
+
+	ret = i2c_transfer(i2c->adapter, xfer, 2);
+	if (ret == 2)
+		return 0;
+	else if (ret < 0)
+		return ret;
+	else
+		return -EIO;
 }
 
-static int regmap_i2c_reg_write(void *client, unsigned int reg, unsigned int val)
+static int regmap_i2c_write(void *context, const void *data, size_t count)
 {
-	u8 buf[] = { val & 0xff };
+	struct device_d *dev = context;
+	struct i2c_client *i2c = to_i2c_client(dev);
 	int ret;
 
-	ret = i2c_write_reg(client, reg, buf, 1);
-	if (ret != 1)
+	ret = i2c_master_send(i2c, data, count);
+	if (ret == count)
+		return 0;
+	else if (ret < 0)
 		return ret;
-
-	return 0;
+	else
+		return -EIO;
 }
 
 static const struct regmap_bus regmap_regmap_i2c_bus = {
-	.reg_write = regmap_i2c_reg_write,
-	.reg_read = regmap_i2c_reg_read,
+	.write = regmap_i2c_write,
+	.read = regmap_i2c_read,
+	.reg_format_endian_default = REGMAP_ENDIAN_BIG,
+	.val_format_endian_default = REGMAP_ENDIAN_BIG,
 };
 
 struct regmap *regmap_init_i2c(struct i2c_client *client,
-- 
2.30.2



