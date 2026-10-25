Delivery-date: Sun, 25 Oct 2026 13:34:48 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKxR2-0036JV-1Q
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 13:34:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7DCA8201CE0
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 13:34:46 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YwHZtSuG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792931687; a=rsa-sha256;
	cv=none;
	b=cGG3l2jTJ/MjBFBQc7WQjmsBby6df8zdLA1ukcXmpbwuAkiUwi8Vd4B2vgsU9C7jfUmoPC
	W47LBZHSVI0CYEZd6ARXGJYkHtYroKvt5p29BxzT9xe47Dq5kpJyMnx5MZevaFRjOR0U/s
	+rDDVjc/yiEMeuvtlJHPWh+3bL52SnnvQmjAXHWVWl+kMKQtMr7GRJoWqptzFBnWzt6Q9O
	Z8MOHmx5u37sqZITGKqor8YurPtX4H7rRtKAj1b2cx2gsIiEsjC3dzMlw5QVBEAUzNyCaS
	qbaVpbZ6SbMg6DzfLHlEunxyvFCPWSoFQgpBTgY03JNKJie5V46RvtDt3TPg1Q==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YwHZtSuG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792931687;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WJrcAkyZ6b3ap+Mh5kGecBfU4byhjm+PEsaPcdb34uo=;
	b=OpA7T8h8BDOWb0NbiNFfKzx7yHs/4HaEK6Y3wqzufMk7YD2Rf+s/xSEYmDtEde0b41IKKh
	+TG76/X+fvks4z0vOKLvwFv9WifDLxIHfbwP3drbW7AJiw0adQENXz9g45y/RMaHWa490y
	VQ8hC9PX97SXstQ5ox7hxLBc4ystgE+P0sbmQfINMPOKmhFVRj1sg3Oip8iFcXCbf3G+OK
	sEBjhUyyPB1trVZlxzK0dp295RhFogy85OlFxlRiOayu1DTJwlwkFryWhuN2v61cjY1ehw
	lhSJMWScgGuDXU6040FpWNICRnL01V6T1vQ/Acm9QWpdbYKAqvmGBER9dJL5FA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WJrcAkyZ6b3ap+Mh5kGecBfU4byhjm+PEsaPcdb34uo=; b=YwHZtSuG82WFiIJbojWdSsNYWl
	spBLVH1YkKe0xgC0iPMDjim7ZQJcMNp4B2GSqWfZXlv7DTdt0wmOIz7ut+ZXcto1gTdKZQ9tc3itW
	WJixam3lXp5nMfpNTMjMlqPJOZs5twDFx+N7HOjs3RrwBGWuOaWEO5tLG9wxTvWu0y8P6DmJJJ/Aq
	OOUBN3nZ0LvYVo1Iv3BSLR01oq0iCVDTmbrtbV+sCnssAiumvYgUf4GJ7UmFbnlnP09W/VYMcmBuD
	MX9FFuMT3fSxEg8l/eYkmmey1TSgk9dbJU4io0v5nH6Y2Y2oELRBIpDvbZodR6cJB8WIBmjoGdbXO
	j9yx2dbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKxPg-0000000131F-2tVN;
	Sun, 25 Oct 2026 12:33:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKxPc-0000000130s-1V1w
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 12:33:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKxPZ-00042t-U2; Sun, 25 Oct 2026 13:33:18 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] usb: onboard-dev: sync with Linux v7.3
Date: Sun, 25 Oct 2026 13:33:12 +0100
Message-ID: <20261025123315.2961785-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_053320_746589_FCF5ECF0 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The barebox driver was ported before Linux learnt about multiple
    supplies, a clock and the I2C-configured USB5744, and its device table has
    fallen behind. Resync with Linux 7.3 drivers/usb/misc/onboard_usb_dev.c and
    .h. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7DCA8201CE0
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hmkptj7a61dtgfinux1asu16smb5id73

The barebox driver was ported before Linux learnt about multiple
supplies, a clock and the I2C-configured USB5744, and its device table
has fallen behind.

Resync with Linux 7.3 drivers/usb/misc/onboard_usb_dev.c and .h.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/misc/Kconfig           |  11 +
 drivers/usb/misc/onboard_usb_dev.c | 377 +++++++++++++++++++++++------
 drivers/usb/misc/onboard_usb_dev.h | 132 +++++++++-
 3 files changed, 446 insertions(+), 74 deletions(-)

diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
index 6fe80a0f176b..eb8d3a208149 100644
--- a/drivers/usb/misc/Kconfig
+++ b/drivers/usb/misc/Kconfig
@@ -24,3 +24,14 @@ config USB_ONBOARD_DEV
 	  but need some non-trivial form of initialization, such as
 	  enabling a power regulator. An example for such device is the
 	  Realtek RTS5411 hub.
+
+config USB_ONBOARD_DEV_USB5744
+	bool "Onboard USB Microchip usb5744 hub with SMBus support"
+	depends on USB_ONBOARD_DEV && I2C
+	help
+	  Say Y here if you want to support onboard USB Microchip usb5744
+	  hub that requires SMBus initialization.
+
+	  This options enables usb5744 i2c default initialization sequence
+	  during hub start-up configuration stage. Without it, a hub that
+	  has an i2c-bus is not powered.
diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 730f443dfefe..bb1b5ffd6e1e 100644
--- a/drivers/usb/misc/onboard_usb_dev.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -1,22 +1,326 @@
 // SPDX-License-Identifier: GPL-2.0-only
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/misc/onboard_usb_dev.c?id=a174da76d3625a5e32f816ee27924ad5d6c1f19f
 /*
  * Driver for onboard USB devices
  *
  * Copyright (c) 2022, Google LLC
  */
 
-#include <driver.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/export.h>
+#include <linux/err.h>
 #include <linux/gpio/consumer.h>
 #include <init.h>
+#include <i2c/i2c.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
 #include <of.h>
-#include <linux/printk.h>
-#include <of_device.h>
+#include <driver.h>
 #include <regulator.h>
-#include <xfuncs.h>
+#include <linux/slab.h>
 #include <linux/usb/usb.h>
 
 #include "onboard_usb_dev.h"
 
+/* USB5744 register offset and mask */
+#define USB5744_CMD_ATTACH			0xAA
+#define USB5744_CMD_ATTACH_LSB			0x56
+#define USB5744_CMD_CREG_ACCESS			0x99
+#define USB5744_CMD_CREG_ACCESS_LSB		0x37
+#define USB5744_CREG_MEM_ADDR			0x00
+#define USB5744_CREG_MEM_RD_ADDR		0x04
+#define USB5744_CREG_WRITE			0x00
+#define USB5744_CREG_READ			0x01
+#define USB5744_CREG_RUNTIMEFLAGS2		0x411D
+#define USB5744_CREG_BYPASS_UDC_SUSPEND		BIT(3)
+
+/************************** Platform driver **************************/
+
+struct onboard_dev {
+	struct regulator_bulk_data supplies[MAX_SUPPLIES];
+	struct device *dev;
+	const struct onboard_dev_pdata *pdata;
+	struct gpio_desc *reset_gpio;
+	struct clk *clk;
+};
+
+static int onboard_dev_get_regulators(struct onboard_dev *onboard_dev)
+{
+	const char * const *supply_names = onboard_dev->pdata->supply_names;
+	unsigned int num_supplies = onboard_dev->pdata->num_supplies;
+	struct device *dev = onboard_dev->dev;
+	unsigned int i;
+	int err;
+
+	if (num_supplies > MAX_SUPPLIES)
+		return dev_err_probe(dev, -EINVAL, "max %d supplies supported!\n",
+				     MAX_SUPPLIES);
+
+	for (i = 0; i < num_supplies; i++)
+		onboard_dev->supplies[i].supply = supply_names[i];
+
+	err = regulator_bulk_get(dev, num_supplies, onboard_dev->supplies);
+	if (err)
+		dev_err(dev, "Failed to get regulator supplies: %pe\n",
+			ERR_PTR(err));
+
+	return err;
+}
+
+static int onboard_dev_power_on(struct onboard_dev *onboard_dev)
+{
+	int err;
+
+	err = clk_prepare_enable(onboard_dev->clk);
+	if (err) {
+		dev_err(onboard_dev->dev, "failed to enable clock: %pe\n",
+			ERR_PTR(err));
+		return err;
+	}
+
+	err = regulator_bulk_enable(onboard_dev->pdata->num_supplies,
+				    onboard_dev->supplies);
+	if (err) {
+		dev_err(onboard_dev->dev, "failed to enable supplies: %pe\n",
+			ERR_PTR(err));
+		goto disable_clk;
+	}
+
+	udelay(onboard_dev->pdata->reset_us);
+	gpiod_set_value_cansleep(onboard_dev->reset_gpio, 0);
+	udelay(onboard_dev->pdata->power_on_delay_us);
+
+	return 0;
+
+disable_clk:
+	clk_disable_unprepare(onboard_dev->clk);
+	return err;
+}
+
+static int onboard_dev_power_off(struct onboard_dev *onboard_dev)
+{
+	int err;
+
+	gpiod_set_value_cansleep(onboard_dev->reset_gpio, 1);
+
+	err = regulator_bulk_disable(onboard_dev->pdata->num_supplies,
+				     onboard_dev->supplies);
+	if (err) {
+		dev_err(onboard_dev->dev, "failed to disable supplies: %pe\n",
+			ERR_PTR(err));
+		return err;
+	}
+
+	clk_disable_unprepare(onboard_dev->clk);
+
+	return 0;
+}
+
+#if IS_ENABLED(CONFIG_USB_ONBOARD_DEV_USB5744)
+static int onboard_dev_5744_i2c_read_byte(struct i2c_client *client, u16 addr, u8 *data)
+{
+	struct i2c_msg msg[2];
+	u8 rd_buf[3];
+	int ret;
+
+	u8 wr_buf[7] = {0, USB5744_CREG_MEM_ADDR, 4,
+			USB5744_CREG_READ, 1,
+			addr >> 8 & 0xff,
+			addr & 0xff};
+	msg[0].addr = client->addr;
+	msg[0].flags = 0;
+	msg[0].len = sizeof(wr_buf);
+	msg[0].buf = wr_buf;
+
+	ret = i2c_transfer(client->adapter, msg, 1);
+	if (ret < 0)
+		return ret;
+
+	wr_buf[0] = USB5744_CMD_CREG_ACCESS;
+	wr_buf[1] = USB5744_CMD_CREG_ACCESS_LSB;
+	wr_buf[2] = 0;
+	msg[0].len = 3;
+
+	ret = i2c_transfer(client->adapter, msg, 1);
+	if (ret < 0)
+		return ret;
+
+	wr_buf[0] = 0;
+	wr_buf[1] = USB5744_CREG_MEM_RD_ADDR;
+	msg[0].len = 2;
+
+	msg[1].addr = client->addr;
+	msg[1].flags = I2C_M_RD;
+	msg[1].len = 2;
+	msg[1].buf = rd_buf;
+
+	ret = i2c_transfer(client->adapter, msg, 2);
+	if (ret < 0)
+		return ret;
+	*data = rd_buf[1];
+
+	return 0;
+}
+
+static int onboard_dev_5744_i2c_write_byte(struct i2c_client *client, u16 addr, u8 data)
+{
+	struct i2c_msg msg[2];
+	int ret;
+
+	u8 wr_buf[8] = {0, USB5744_CREG_MEM_ADDR, 5,
+			USB5744_CREG_WRITE, 1,
+			addr >> 8 & 0xff,
+			addr & 0xff,
+			data};
+	msg[0].addr = client->addr;
+	msg[0].flags = 0;
+	msg[0].len = sizeof(wr_buf);
+	msg[0].buf = wr_buf;
+
+	ret = i2c_transfer(client->adapter, msg, 1);
+	if (ret < 0)
+		return ret;
+
+	msg[0].len = 3;
+	wr_buf[0] = USB5744_CMD_CREG_ACCESS;
+	wr_buf[1] = USB5744_CMD_CREG_ACCESS_LSB;
+	wr_buf[2] = 0;
+
+	ret = i2c_transfer(client->adapter, msg, 1);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int onboard_dev_5744_i2c_init(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	int ret;
+	u8 reg;
+
+	/*
+	 * Set BYPASS_UDC_SUSPEND bit to ensure MCU is always enabled
+	 * and ready to respond to SMBus runtime commands.
+	 * The command writes 5 bytes to memory and single data byte in
+	 * configuration register.
+	 */
+	ret = onboard_dev_5744_i2c_read_byte(client,
+					     USB5744_CREG_RUNTIMEFLAGS2, &reg);
+	if (ret)
+		return dev_err_probe(dev, ret, "CREG_RUNTIMEFLAGS2 read failed\n");
+
+	reg |= USB5744_CREG_BYPASS_UDC_SUSPEND;
+	ret = onboard_dev_5744_i2c_write_byte(client,
+					      USB5744_CREG_RUNTIMEFLAGS2, reg);
+	if (ret)
+		return dev_err_probe(dev, ret, "BYPASS_UDC_SUSPEND bit configuration failed\n");
+
+	/* Send SMBus command to boot hub. */
+	ret = i2c_smbus_write_word_data(client, USB5744_CMD_ATTACH,
+					USB5744_CMD_ATTACH_LSB);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "USB Attach with SMBus command failed\n");
+
+	return ret;
+}
+#else
+static int onboard_dev_5744_i2c_init(struct i2c_client *client)
+{
+	return -ENODEV;
+}
+#endif
+
+static int onboard_dev_probe(struct device *dev)
+{
+	struct onboard_dev *onboard_dev;
+	struct device_node *i2c_node;
+	struct device_node *peer_node;
+	struct device *peer_dev;
+	int err;
+
+	/* the USB 2 and USB 3 halves of one hub share reset and supplies */
+	peer_node = of_parse_phandle(dev->of_node, "peer-hub", 0);
+	if (peer_node) {
+		peer_dev = of_find_device_by_node(peer_node);
+		if (peer_dev && dev_get_drvdata(peer_dev))
+			return 0;
+	}
+
+	onboard_dev = devm_kzalloc(dev, sizeof(*onboard_dev), GFP_KERNEL);
+	if (!onboard_dev)
+		return -ENOMEM;
+
+	onboard_dev->pdata = device_get_match_data(dev);
+	if (!onboard_dev->pdata)
+		return -EINVAL;
+
+	onboard_dev->dev = dev;
+
+	err = onboard_dev_get_regulators(onboard_dev);
+	if (err)
+		return err;
+
+	onboard_dev->clk = clk_get_optional(dev, NULL);
+	if (IS_ERR(onboard_dev->clk))
+		return dev_err_probe(dev, PTR_ERR(onboard_dev->clk),
+				     "failed to get clock\n");
+
+	onboard_dev->reset_gpio = gpiod_get_optional(dev, "reset",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(onboard_dev->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(onboard_dev->reset_gpio),
+				     "failed to get reset GPIO\n");
+
+	dev_set_drvdata(dev, onboard_dev);
+
+	err = onboard_dev_power_on(onboard_dev);
+	if (err)
+		return err;
+
+	i2c_node = of_parse_phandle(dev->of_node, "i2c-bus", 0);
+	if (i2c_node) {
+		struct i2c_client *client = NULL;
+
+#if IS_ENABLED(CONFIG_USB_ONBOARD_DEV_USB5744)
+		client = of_find_i2c_device_by_node(i2c_node);
+#endif
+		of_node_put(i2c_node);
+
+		if (!client) {
+			err = -EPROBE_DEFER;
+			goto err_power_off;
+		}
+
+		if (of_device_is_compatible(dev->of_node, "usb424,2744") ||
+		    of_device_is_compatible(dev->of_node, "usb424,5744")) {
+			err = onboard_dev_5744_i2c_init(client);
+		}
+
+		put_device(&client->dev);
+		if (err < 0)
+			goto err_power_off;
+	}
+
+	return 0;
+
+err_power_off:
+	onboard_dev_power_off(onboard_dev);
+	return err;
+}
+
+MODULE_DEVICE_TABLE(of, onboard_dev_match);
+
+static struct driver onboard_dev_driver = {
+	.probe = onboard_dev_probe,
+	.name = "onboard-usb-dev",
+	.of_match_table = onboard_dev_match,
+};
+device_platform_driver(onboard_dev_driver);
+
 void of_usb_host_probe_devs(struct usb_host *host)
 {
 	struct device_node *np;
@@ -28,71 +332,6 @@ void of_usb_host_probe_devs(struct usb_host *host)
 	of_platform_populate(np, onboard_dev_match, host->hw_dev);
 }
 
-struct onboard_dev {
-	struct regulator *vdd;
-	struct device *dev;
-	const struct onboard_dev_pdata *pdata;
-	struct gpio_desc *reset_gpio;
-};
-
-static int onboard_dev_power_on(struct onboard_dev *onboard_dev)
-{
-	int err;
-
-	err = regulator_enable(onboard_dev->vdd);
-	if (err) {
-		dev_err(onboard_dev->dev, "failed to enable regulator: %pe\n",
-			ERR_PTR(err));
-		return err;
-	}
-
-	udelay(onboard_dev->pdata->reset_us);
-	gpiod_set_value(onboard_dev->reset_gpio, 0);
-
-	return 0;
-}
-
-static int onboard_dev_probe(struct device *dev)
-{
-	struct device_node *peer_node;
-	struct device *peer_dev;
-	struct onboard_dev *onboard_dev;
-
-	peer_node = of_parse_phandle(dev->of_node, "peer-hub", 0);
-	if (peer_node) {
-		peer_dev = of_find_device_by_node(peer_node);
-		if (peer_dev && peer_dev->priv)
-			return 0;
-	}
-
-	onboard_dev = xzalloc(sizeof(*onboard_dev));
-
-	onboard_dev->pdata = device_get_match_data(dev);
-	if (!onboard_dev->pdata)
-		return -EINVAL;
-
-	onboard_dev->vdd = regulator_get(dev, "vdd");
-	if (IS_ERR(onboard_dev->vdd))
-		return PTR_ERR(onboard_dev->vdd);
-
-	onboard_dev->reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
-	if (IS_ERR(onboard_dev->reset_gpio))
-		return dev_errp_probe(dev, onboard_dev->reset_gpio,
-				     "failed to get reset GPIO\n");
-
-	onboard_dev->dev = dev;
-	dev->priv = onboard_dev;
-
-	return onboard_dev_power_on(onboard_dev);
-}
-
-static struct driver onboard_dev_driver = {
-	.name = "onboard-usb-dev",
-	.probe = onboard_dev_probe,
-	.of_compatible = onboard_dev_match,
-};
-device_platform_driver(onboard_dev_driver);
-
 MODULE_AUTHOR("Matthias Kaehlcke <mka@chromium.org>");
 MODULE_DESCRIPTION("Driver for discrete onboard USB devices");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
index edb91485bd83..4adb17867f76 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/misc/onboard_usb_dev.h?id=9a71ac508974d44d42d358f42e6a766ec67a73d1 */
 /*
  * Copyright (c) 2022, Google LLC
  */
@@ -6,50 +7,171 @@
 #ifndef _USB_MISC_ONBOARD_USB_DEV_H
 #define _USB_MISC_ONBOARD_USB_DEV_H
 
+#define MAX_SUPPLIES 2
+
 struct onboard_dev_pdata {
 	unsigned long reset_us;		/* reset pulse width in us */
+	unsigned long power_on_delay_us; /* power on delay in us */
+	unsigned int num_supplies;	/* number of supplies */
+	const char * const supply_names[MAX_SUPPLIES];
+	bool is_hub;
 };
 
 static const struct onboard_dev_pdata microchip_usb424_data = {
 	.reset_us = 1,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata microchip_usb2514_data = {
+	.reset_us = 1,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdda" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata microchip_usb5744_data = {
+	.reset_us = 0,
+	.power_on_delay_us = 10000,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdd2" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata parade_ps5511_data = {
+	.reset_us = 500,
+	.num_supplies = 2,
+	.supply_names = { "vddd11", "vdd33"},
+	.is_hub = true,
 };
 
 static const struct onboard_dev_pdata realtek_rts5411_data = {
 	.reset_us = 0,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
 };
 
-static const struct onboard_dev_pdata ti_tusb8041_data = {
+static const struct onboard_dev_pdata realtek_rtl8188etv_data = {
+	.reset_us = 0,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = false,
+};
+
+static const struct onboard_dev_pdata ti_tusb8020b_data = {
 	.reset_us = 3000,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata bison_intcamera_data = {
+	.reset_us = 1000,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = false,
+};
+
+static const struct onboard_dev_pdata corechips_sl6341_data = {
+	.reset_us = 10000,
+	.num_supplies = 2,
+	.supply_names = { "vdd1v1", "vdd3v3" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata cypress_hx3_data = {
+	.reset_us = 10000,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdd2" },
+	.is_hub = true,
 };
 
 static const struct onboard_dev_pdata genesys_gl850g_data = {
 	.reset_us = 3,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
 };
 
 static const struct onboard_dev_pdata genesys_gl852g_data = {
 	.reset_us = 50,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata genesys_gl3590_data = {
+	.reset_us = 50,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdd12" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata usb_a_conn_data = {
+	.num_supplies = 1,
+	.supply_names = { "vbus" },
 };
 
 static const struct onboard_dev_pdata vialab_vl817_data = {
 	.reset_us = 10,
+	.num_supplies = 1,
+	.supply_names = { "vdd" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata wch_ch334_data = {
+	.reset_us = 14000,
+	.num_supplies = 2,
+	.supply_names = { "vdd33", "v5" },
+	.is_hub = true,
+};
+
+static const struct onboard_dev_pdata xmos_xvf3500_data = {
+	.reset_us = 1,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vddio" },
+	.is_hub = false,
 };
 
 static const struct of_device_id onboard_dev_match[] = {
-	{ .compatible = "usb424,2514", .data = &microchip_usb424_data, },
+	{ .compatible = "usb-a-connector", .data = &usb_a_conn_data, },
+	{ .compatible = "usb424,2412", .data = &microchip_usb424_data, },
+	{ .compatible = "usb424,2514", .data = &microchip_usb2514_data, },
 	{ .compatible = "usb424,2517", .data = &microchip_usb424_data, },
-	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
-	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
+	{ .compatible = "usb424,2744", .data = &microchip_usb5744_data, },
+	{ .compatible = "usb424,5744", .data = &microchip_usb5744_data, },
+	{ .compatible = "usb451,8025", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb451,8027", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb451,8140", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb451,8142", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb451,8440", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb451,8442", .data = &ti_tusb8020b_data, },
+	{ .compatible = "usb4b4,6504", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6506", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6570", .data = &microchip_usb424_data, },
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,625", .data = &genesys_gl3590_data, },
+	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
+	{ .compatible = "usbbda,179", .data = &realtek_rtl8188etv_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,5414", .data = &realtek_rts5411_data, },
+	{ .compatible = "usb1a40,0101", .data = &vialab_vl817_data, },
+	{ .compatible = "usb1a86,8091", .data = &wch_ch334_data, },
+	{ .compatible = "usb1da0,5511", .data = &parade_ps5511_data, },
+	{ .compatible = "usb1da0,55a1", .data = &parade_ps5511_data, },
 	{ .compatible = "usb2109,817", .data = &vialab_vl817_data, },
 	{ .compatible = "usb2109,2817", .data = &vialab_vl817_data, },
+	{ .compatible = "usb20b1,0013", .data = &xmos_xvf3500_data, },
+	{ .compatible = "usb3431,6241", .data = &corechips_sl6341_data, },
+	{ .compatible = "usb3431,6341", .data = &corechips_sl6341_data, },
+	{ .compatible = "usb5986,1198", .data = &bison_intcamera_data, },
 	{}
 };
-MODULE_DEVICE_TABLE(of, onboard_dev_match);
 
 #endif /* _USB_MISC_ONBOARD_USB_DEV_H */
-- 
2.47.3



