Delivery-date: Wed, 13 Sep 2023 15:26:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsh-00Do2Y-TN
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 15:26:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsf-0002DX-TO
	for lore@pengutronix.de; Wed, 13 Sep 2023 15:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f4AQPXTXJYYwrOqIvWLZxQeOvEp4RLOwpp7VDTYNVIk=; b=kdyGL07pcn1dslRh3jKqbCHKSj
	LCsdf/uetEPsCGhEgwu9EYTgKZhtLKG0WYS3t2VDCO7z8qsircpCS+KOMlmLFVoeInwUu2/9dVMCI
	we4jqjq8xxgxR0VAYttYZjyfHggthxGfaCe2ZP9RdeUXLjcFOzP9wA95ZF4qcqi8jqbiSwHIjJkga
	LN8taYs6QSwfwOOqep3kpd9pWWjeB74aqkziieZ2L+qDV9r+6/7NyRUt5iWQfsAXXSv36T99LkWgz
	nKfXaE901ZqOJAvx8+8IK70ZX0w9hRnpjY9WjrW2a/GTAGqslzeAdr7tfa/e50x/fWZ1EqtE0juYu
	okyED0vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrf-005yR2-09;
	Wed, 13 Sep 2023 13:25:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrY-005yOw-2G
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 13:25:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrX-0001wg-Ew; Wed, 13 Sep 2023 15:24:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-00651I-S8; Wed, 13 Sep 2023 15:24:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-009HTp-2d;
	Wed, 13 Sep 2023 15:24:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 15:24:56 +0200
Message-Id: <20230913132456.2211919-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
References: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_062500_846694_CDAC1FDE 
X-CRM114-Status: GOOD (  13.62  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] firmware-zynqmp: add device parameters for ggs/pggs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ZynqMP features eight 32-bit global storage registers that are
available for general use. Four of them have their values preserved
after software reboots and four are cleared on software reboots.

In Linux they are accessed as:

  /sys/firmware/zynqmp/ggs[0-4]
  /sys/firmware/zynqmp/pggs[0-4]

Allow reading and writing these parameters from barebox shell as well
via device parameters:

  echo ${firmware:zynqmp-firmware.of.ggs0}
  firmware:zynqmp-firmware.of.pggs0=4

Because the name is a bit unwieldy, use the recently added device alias
support to make the variables more compact:

  echo ${zynqmp_fw.ggs0}
  zynqmp_fw.pggs0=4

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 67 ++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 8d06c65b0ee0..a2b61efff413 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -14,10 +14,18 @@
 
 #include <common.h>
 #include <init.h>
+#include <driver.h>
+#include <param.h>
 #include <linux/arm-smccc.h>
 
 #include <mach/zynqmp/firmware-zynqmp.h>
 
+struct zynqmp_fw {
+	struct device *dev;
+	u32 ggs[4];
+	u32 pggs[4];
+};
+
 #define ZYNQMP_TZ_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
 
 #define ZYNQMP_PM_VERSION_MAJOR		1
@@ -642,11 +650,58 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 
+static bool parse_reg(const char *reg, unsigned *idx)
+{
+	bool pggs = reg[0] == 'p';
+	kstrtouint(reg + pggs + sizeof("ggs") - 1, 10, idx);
+	return pggs;
+}
+
+static int ggs_set(struct param_d *p, void *_val)
+{
+	u32 *val = _val;
+	unsigned idx;
+
+	if (parse_reg(p->name, &idx))
+		return zynqmp_pm_write_pggs(idx, *val);
+	else
+		return zynqmp_pm_write_ggs(idx, *val);
+}
+static int ggs_get(struct param_d *p, void *_val)
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	u32 *val = _val;
+	unsigned idx;
+	int ret;
+
+	if (parse_reg(p->name, &idx))
+		ret = zynqmp_pm_read_pggs(idx, ret_payload);
+	else
+		ret = zynqmp_pm_read_ggs(idx, ret_payload);
+
+	if (ret)
+		return ret;
+
+	*val = ret_payload[1];
+
+	return 0;
+}
+
+static inline void dev_add_param_ggs(struct zynqmp_fw *fw, const char *str, u32 *value)
+{
+	dev_add_param_uint32(fw->dev, str, ggs_set, ggs_get, value, "0x%x", value);
+}
 
 static int zynqmp_firmware_probe(struct device *dev)
 {
+
+	struct zynqmp_fw *fw;
 	int ret;
 
+	fw = xzalloc(sizeof(*fw));
+
+	dev_add_alias(dev, "zynqmp_fw");
+
 	ret = get_set_conduit_method(dev->of_node);
 	if (ret)
 		goto out;
@@ -686,6 +741,18 @@ static int zynqmp_firmware_probe(struct device *dev)
 			pm_tz_version >> 16, pm_tz_version & 0xFFFF);
 
 	of_platform_populate(dev->of_node, NULL, dev);
+
+	fw->dev = dev;
+
+	dev_add_param_ggs(fw, "ggs0", &fw->ggs[0]);
+	dev_add_param_ggs(fw, "ggs1", &fw->ggs[1]);
+	dev_add_param_ggs(fw, "ggs2", &fw->ggs[2]);
+	dev_add_param_ggs(fw, "ggs3", &fw->ggs[3]);
+
+	dev_add_param_ggs(fw, "pggs0", &fw->pggs[0]);
+	dev_add_param_ggs(fw, "pggs1", &fw->pggs[1]);
+	dev_add_param_ggs(fw, "pggs2", &fw->pggs[2]);
+	dev_add_param_ggs(fw, "pggs3", &fw->pggs[3]);
 out:
 	if (ret)
 		do_fw_call = do_fw_call_fail;
-- 
2.39.2



