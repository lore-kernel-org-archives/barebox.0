Delivery-date: Sun, 26 Dec 2021 17:40:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n1WZ8-001cbp-SX
	for lore@lore.pengutronix.de; Sun, 26 Dec 2021 17:40:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n1WZ7-0002wW-CX
	for lore@pengutronix.de; Sun, 26 Dec 2021 17:40:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nF2B+INQtaWS/Y7z1SOFvKhtfNoVUoBLIuxZ0cbM6Rk=; b=gdHRWf+dIipqnA
	YJxZBB3FOh2JbtrRDinBGZEa6fbbWIjzBEuQDj89Spv8QUmYBoldUmmnWv3rBfx2cGeD9Hu1kxiY1
	lhW5AWoiZ1eDQpxf5a6T+kPGn9GrKeuziis9LahUrNt+Ha+9bO8uYlIZs8qTUid+bIUcRJmo+4DHs
	t4C0FOEAZmpxb3gHO33N4n+U2faF/C9WThLp5mUyox4XiDA5qVamV3K+cRo+benY9NLVNjwUDCHpF
	KjOa3eRyjUPOAOlaYCpRByGC7JthOp3v78LIs/aCn71IGnd3YzanMuxxIV9Zcn2Dy4z+CcH/NQTcB
	wZ61Swiz3K+/JSOz+oIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1WXB-00FgZF-Fd; Sun, 26 Dec 2021 16:38:09 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1WX5-00FgYv-5l
 for barebox@lists.infradead.org; Sun, 26 Dec 2021 16:38:04 +0000
Received: by mail-lf1-x12f.google.com with SMTP id x21so30022595lfa.5
 for <barebox@lists.infradead.org>; Sun, 26 Dec 2021 08:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GsJldGMAvVvi8fQEkhGpEF4mWyp7Wybry2ro9ipV/Mo=;
 b=iG/dcGIzYXBPPh2mlj4a23PAlAUtO+puNo6UV0HxQeyI98YaXE3/Faw3a+rnlVo3bG
 czbxLAOENA3YyNGn3V28XqiVV6XwFY7ollft5M7ZlSkKQA8fbFJowmU3UDdX5rUE1CST
 eP2UmYkIZ8AOGeGGOt7XaTgQFHT1UKCYxjaq/p67vK6N9y9Cn+PFPFLAZI7IOSNGyx4q
 Wv/Vqv/it3JzfW6eVLukbbe40YNx2eMDhXpYZ1MAmto1gVXfeSzgiCHcDHgKhodX3lts
 dyo8kD8fDMGJR2K0VfNhj/shJdblAj9TKSea4BozxShPPwF10tAwFn728yy2ZOOA93OG
 GtaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GsJldGMAvVvi8fQEkhGpEF4mWyp7Wybry2ro9ipV/Mo=;
 b=dJd2ujDZowkzp9dvppqtnjMin4DzFpZRZb+NNxHR2kcVG6JtsIcB01c9aFApvtgLDa
 t6AHDaG5KY9CMT8bQ1s3oNivBeS5i1k6pcSTXfUA+KwYN2WWzm0e5SCmIuiBwXk5Tz8g
 /V9Re1I1z1uhjsd2TrIT27qcEYfr71/8hX6apcZPQ340+dG0KsSyVwnHAlyq3F0XDvwi
 xI8tLVQITH2h3Ew0eNi02zA1cJXXEoNcxPUA01ST7FBdACc/sEijr72E3kY0PkzdKOPO
 n2U4cLjv89IJjqRVd+3TdolR0ekInkaDDykmv/i0mRtpunWJC9qZM/hTFjDW7qwhuMDc
 adcw==
X-Gm-Message-State: AOAM5334kIic9ijOjCVnAj3bW9oEWuQrr4TqWAgJU92b007xwZmWehyW
 blaDgStAkqaFAuQVh9YoWThY4B68R48=
X-Google-Smtp-Source: ABdhPJw8SB2B8+vXsY1kym6xBhd6nihQIwmqdWpok62cN6Pjmta91U47uHQYdL2gGlLhcBtEIqwyfA==
X-Received: by 2002:a05:6512:2828:: with SMTP id
 cf40mr12377572lfb.644.1640536680364; 
 Sun, 26 Dec 2021 08:38:00 -0800 (PST)
Received: from localhost.localdomain (109-252-203-49.dynamic.spd-mgts.ru.
 [109.252.203.49])
 by smtp.gmail.com with ESMTPSA id i31sm1410669lfv.25.2021.12.26.08.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Dec 2021 08:38:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sun, 26 Dec 2021 19:37:55 +0300
Message-Id: <20211226163755.204465-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211226_083803_263177_9DE6EE1D 
X-CRM114-Status: GOOD (  16.93  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] rtc: import pcf85363 support from linux-5.12
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/rtc/Kconfig        |   6 ++
 drivers/rtc/Makefile       |   1 +
 drivers/rtc/rtc-pcf85363.c | 169 +++++++++++++++++++++++++++++++++++++
 3 files changed, 176 insertions(+)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index e9374d0f2a..314c2c085a 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -37,6 +37,12 @@ config RTC_DRV_DS1307
 config RTC_DRV_ABRACON
 	tristate "Abracon RTCs"
 
+config RTC_DRV_PCF85363
+	tristate "NXP PCF85363"
+	depends on I2C
+	help
+	  If you say yes here you get support for the PCF85363 RTC chip.
+
 endif # I2C
 
 config RTC_DRV_IMXDI
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index c831198872..9b2893e585 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_RTC_DRV_ABRACON)   += rtc-abracon.o
 obj-$(CONFIG_RTC_DRV_DS1307)    += rtc-ds1307.o
 obj-$(CONFIG_RTC_DRV_IMXDI)	+= rtc-imxdi.o
 obj-$(CONFIG_RTC_DRV_JZ4740)	+= rtc-jz4740.o
+obj-$(CONFIG_RTC_DRV_PCF85363)	+= rtc-pcf85363.o
diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
new file mode 100644
index 0000000000..7b785d6a77
--- /dev/null
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * drivers/rtc/rtc-pcf85363.c
+ *
+ * Driver for NXP PCF85363 real-time clock.
+ *
+ * Copyright (C) 2017 Eric Nelson
+ *
+ * This code is ported from linux-5.12
+ * by Antony Pavlov <antonynpavlov@gmail.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <regmap.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+#include <linux/bcd.h>
+
+/*
+ * Date/Time registers
+ */
+#define DT_100THS	0x00
+#define DT_SECS		0x01
+#define DT_MINUTES	0x02
+#define DT_HOURS	0x03
+#define DT_DAYS		0x04
+#define DT_WEEKDAYS	0x05
+#define DT_MONTHS	0x06
+#define DT_YEARS	0x07
+
+/*
+ * control registers
+ */
+#define CTRL_STOP_EN	0x2e
+
+#define STOP_EN_STOP	BIT(0)
+
+#define RESET_CPR	0xa4
+
+struct pcf85363 {
+	struct rtc_device	rtc;
+	struct regmap		*regmap;
+};
+
+static inline struct pcf85363 *to_pcf85363_priv(struct rtc_device *rtcdev)
+{
+	return container_of(rtcdev, struct pcf85363, rtc);
+}
+
+static int pcf85363_rtc_read_time(struct rtc_device *rtcdev,
+					struct rtc_time *tm)
+{
+	struct device_d *dev = rtcdev->dev;
+	struct pcf85363 *pcf85363 = to_pcf85363_priv(rtcdev);
+	unsigned char buf[DT_YEARS + 1];
+	int ret, len = sizeof(buf);
+
+	/* read the RTC date and time registers all at once */
+	ret = regmap_bulk_read(pcf85363->regmap, DT_100THS, buf, len);
+	if (ret) {
+		dev_err(dev, "%s: error %d\n", __func__, ret);
+		return ret;
+	}
+
+	tm->tm_year = bcd2bin(buf[DT_YEARS]);
+	/* adjust for 1900 base of rtc_time */
+	tm->tm_year += 100;
+
+	tm->tm_wday = buf[DT_WEEKDAYS] & 7;
+	buf[DT_SECS] &= 0x7F;
+	tm->tm_sec = bcd2bin(buf[DT_SECS]);
+	buf[DT_MINUTES] &= 0x7F;
+	tm->tm_min = bcd2bin(buf[DT_MINUTES]);
+	tm->tm_hour = bcd2bin(buf[DT_HOURS]);
+	tm->tm_mday = bcd2bin(buf[DT_DAYS]);
+	tm->tm_mon = bcd2bin(buf[DT_MONTHS]) - 1;
+
+	return 0;
+}
+
+static int pcf85363_rtc_set_time(struct rtc_device *rtcdev, struct rtc_time *tm)
+{
+	struct pcf85363 *pcf85363 = to_pcf85363_priv(rtcdev);
+	unsigned char tmp[11];
+	unsigned char *buf = &tmp[2];
+	int ret;
+
+	tmp[0] = STOP_EN_STOP;
+	tmp[1] = RESET_CPR;
+
+	buf[DT_100THS] = 0;
+	buf[DT_SECS] = bin2bcd(tm->tm_sec);
+	buf[DT_MINUTES] = bin2bcd(tm->tm_min);
+	buf[DT_HOURS] = bin2bcd(tm->tm_hour);
+	buf[DT_DAYS] = bin2bcd(tm->tm_mday);
+	buf[DT_WEEKDAYS] = tm->tm_wday;
+	buf[DT_MONTHS] = bin2bcd(tm->tm_mon + 1);
+	buf[DT_YEARS] = bin2bcd(tm->tm_year % 100);
+
+	ret = regmap_bulk_write(pcf85363->regmap, CTRL_STOP_EN,
+				tmp, 2);
+	if (ret)
+		return ret;
+
+	ret = regmap_bulk_write(pcf85363->regmap, DT_100THS,
+				buf, sizeof(tmp) - 2);
+	if (ret)
+		return ret;
+
+	return regmap_write(pcf85363->regmap, CTRL_STOP_EN, 0);
+}
+
+static const struct rtc_class_ops rtc_ops = {
+	.read_time	= pcf85363_rtc_read_time,
+	.set_time	= pcf85363_rtc_set_time,
+};
+
+static const struct regmap_config pcf85363_regmap_i2c_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0x7f,
+};
+
+static int pcf85363_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct pcf85363 *pcf85363;
+	struct regmap *regmap;
+	int ret;
+
+	regmap = regmap_init_i2c(client,
+				&pcf85363_regmap_i2c_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	pcf85363 = xzalloc(sizeof(struct pcf85363));
+
+	pcf85363->regmap = regmap;
+
+	i2c_set_clientdata(client, pcf85363);
+
+	pcf85363->rtc.ops = &rtc_ops;
+	pcf85363->rtc.dev = dev;
+
+	ret = rtc_register(&pcf85363->rtc);
+
+	return ret;
+}
+
+static struct platform_device_id dev_ids[] = {
+	{ .name = "pcf85363" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d pcf85363_driver = {
+	.name		= "pcf85363",
+	.probe		= pcf85363_probe,
+	.id_table	= dev_ids,
+};
+device_i2c_driver(pcf85363_driver);
+
+MODULE_AUTHOR("Eric Nelson");
+MODULE_DESCRIPTION("pcf85363 I2C RTC driver");
+MODULE_LICENSE("GPL");
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

