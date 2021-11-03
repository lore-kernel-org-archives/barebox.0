Delivery-date: Wed, 03 Nov 2021 18:41:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKG6-00015w-Md
	for lore@lore.pengutronix.de; Wed, 03 Nov 2021 18:41:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKG5-0005hf-Eg
	for lore@pengutronix.de; Wed, 03 Nov 2021 18:41:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8+k71FKee12jaTxsfRC3OS9PrvBp8arHnVtQdCBh3o0=; b=QqkZl0+LQToUK+
	0tmTYanjO6hqbhvkIDbMSk11agqLDLwby5oQd+W1d3OD38D0BSfjIIr5SKE1+hEEhBq3GUn4N1Kz9
	0KuJOp9IjZoeu1HIHwhiN1weAIEOlmo3dhZy1RmigOonZqbpCJFuyw+uq9WqTDRrU8RUj1D/Dggp3
	wdSNQDur+jwdwl9i/fnXR1mloH5X8NTMeM/x2DVIpZgv23pp7JEWkvmn7DQnDdzn7En6BVDPIesWL
	RNuWaOx+k/YQjdGhT7VKSeHR5Iuyoz0Uw6jy9yTTwQUgYmioPV6iZgxqg3q7G9UzGYAfposjdRjTF
	ZN9HcHvxULSIHV2eskJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miKEv-005yKt-8b; Wed, 03 Nov 2021 17:39:57 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miKEq-005yK3-0c
 for barebox@lists.infradead.org; Wed, 03 Nov 2021 17:39:53 +0000
Received: by mail-lf1-x131.google.com with SMTP id d21so6681077lfg.7
 for <barebox@lists.infradead.org>; Wed, 03 Nov 2021 10:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lBqnBqtLUj5AWRrPS3E+aZd8uN2o1ev/+4oYd3+GHQ4=;
 b=oqRY5lXbc9sy8TAxgnHkjhwH8Czn9OUFcrcN++aUbP6rI0YvtRsebwRIFaki06XG7f
 LK4ccimEtTqXJYlMu7Iv6ZKXMNTxLQwRx0j9vvqj4EpcLabsMikZ+4gjlEtb+jXrQKBw
 q55l9NGpkPbJ3JPf41Dy0iHRXnOP9Zaxzk8WmRlPw36vHFnp27TpMdcBQS2H6pGUeVsf
 rAXnHYfSj8h07o96LvcrK0q/4XGD+n/H5dm9j+E9Zv3bU/n+hWrpAP0QmCoNDDtmLQbt
 tzcZI46kuYRpO6BeIzldRw5j2OnSKqgaaES/tisuH4SgjPbDFsIbbzEzKsMy+qXNtc7w
 uNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lBqnBqtLUj5AWRrPS3E+aZd8uN2o1ev/+4oYd3+GHQ4=;
 b=DRmlhHGzfV8daHr8DvlRCWznQNapC+AfpSLTmMdo5c5bS2sjGfXJisf1WCm3s15lXb
 X28gygfoIwd/BjqCQBngD9oSYvyJXtFfcE02I6k4YEFFNfKMQp2XDy5AR/XxPEdDFLF3
 MhmiVK8jUBIE32x10aTzdVMsoqIFfv3MrNe1oJp7SfDgKEr4DcFOesrTf+lVA64UXVsg
 infd+jim7/kaf3AlVmnx9ZzzCI21YMExuv8iF7iZVN3stlnIuFi/Wmg+7mSScn02gzjn
 IaI7J9eiHMBYbFz3KPmCcW2vniegUOVSJdoeAd2Ay/e3BPBsdPTTuQ1hVaYgYwu85EHS
 5+tg==
X-Gm-Message-State: AOAM530gmSKqiPVA7vxMNrcIQCxopYeRBFcy4PBteXQYEKkSrNM/rsUN
 JD4eWjaUVz+rxkP26Zrc89x+IhoVEYHb+s/JxW0=
X-Google-Smtp-Source: ABdhPJyKEs9Pnd+v3a12u6ouEUMrynLK8Dj7ozP41IsHI2nh7FXUpwM/jvItR1wrs0URpbJKT4kZeg==
X-Received: by 2002:a05:6512:c18:: with SMTP id
 z24mr42687207lfu.193.1635961190370; 
 Wed, 03 Nov 2021 10:39:50 -0700 (PDT)
Received: from localhost.localdomain ([176.59.15.217])
 by smtp.gmail.com with ESMTPSA id c16sm231107lfv.298.2021.11.03.10.39.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Nov 2021 10:39:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  3 Nov 2021 20:39:46 +0300
Message-Id: <20211103173946.4589-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_103952_101874_9D794959 
X-CRM114-Status: GOOD (  18.46  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [just draft RFC] rtc: add simple pcf85363 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/rtc/Kconfig        |   7 ++
 drivers/rtc/Makefile       |   1 +
 drivers/rtc/rtc-pcf85363.c | 195 +++++++++++++++++++++++++++++++++++++
 3 files changed, 203 insertions(+)
 create mode 100644 drivers/rtc/rtc-pcf85363.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 9d2c6e614b..50f352f422 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -36,6 +36,13 @@ config RTC_DRV_DS1307
 config RTC_DRV_ABRACON
 	tristate "Abracon RTCs"
 
+config RTC_DRV_PCF85363
+	tristate "NXP PCF85363"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  If you say yes here you get support for the PCF85363 RTC chip.
+
 endif # I2C
 
 config RTC_DRV_IMXDI
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 1308beff38..163264a8c6 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_RTC_DRV_ABRACON)   += rtc-abracon.o
 obj-$(CONFIG_RTC_DRV_DS1307)    += rtc-ds1307.o
 obj-$(CONFIG_RTC_DRV_IMXDI)	+= rtc-imxdi.o
 obj-$(CONFIG_RTC_DRV_JZ4740)	+= rtc-jz4740.o
+obj-$(CONFIG_RTC_DRV_PCF85363)	+= rtc-pcf85363.o
diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
new file mode 100644
index 0000000000..3c4da5a536
--- /dev/null
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * drivers/rtc/rtc-pcf85363.c
+ *
+ * Driver for NXP PCF85363 real-time clock.
+ *
+ * Copyright (C) 2017 Eric Nelson
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
+
+	struct i2c_client	*client;
+};
+
+
+static int pcf85363_i2c_reg_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct pcf85363 *pcf85363 = ctx;
+	u8 buf[1];
+	int ret;
+
+	ret = i2c_read_reg(pcf85363->client, reg, buf, 1);
+	*val = buf[0];
+
+	return ret == 1 ? 0 : ret;
+}
+
+static int pcf85363_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	struct pcf85363 *pcf85363 = ctx;
+	u8 buf[] = {
+		val & 0xff,
+	};
+	int ret;
+
+	ret = i2c_write_reg(pcf85363->client, reg, buf, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static struct regmap_bus regmap_pcf85363_i2c_bus = {
+	.reg_write = pcf85363_i2c_reg_write,
+	.reg_read = pcf85363_i2c_reg_read,
+};
+
+static inline struct pcf85363 *to_pcf85363_priv(struct rtc_device *rtcdev)
+{
+	return container_of(rtcdev, struct pcf85363, rtc);
+}
+
+static int pcf85363_rtc_read_time(struct rtc_device *rtcdev, struct rtc_time *tm)
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
+
+static int pcf85363_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct pcf85363 *pcf85363;
+	int ret;
+
+	pcf85363 = xzalloc(sizeof(struct pcf85363));
+
+	pcf85363->regmap = regmap_init(dev, &regmap_pcf85363_i2c_bus,
+			     pcf85363, &pcf85363_regmap_i2c_config);
+
+	pcf85363->client = client;
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

