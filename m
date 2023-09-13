Delivery-date: Wed, 13 Sep 2023 15:26:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsm-00Do3x-99
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 15:26:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsk-0002GR-Bc
	for lore@pengutronix.de; Wed, 13 Sep 2023 15:26:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TO9C9Lf7UuhwULpD6Tl3hsZc56q7vFKUioIIWjj7Nkk=; b=r9Gb7FtfPnLn5AjGnpkHpkAn9y
	/duosZHR5DkjGagacsn4NDpgl7Yw/0qllSokw8gQk/Hex1XICGFhru8zG82cXC57ieg7a/5gBBmyK
	mtBpvraqudDX0tG9tKE3bA6pVVnfUL4/zGcga1VHdCuCeXQRnYskPeTL4niJQqW25ehXDFh8u7Ez0
	GnLaeVWfBRgOty8HVoHnjIow3mBjoyPQF102X+ATWq9fGcaxQI/5dPcgN92bRVhqrrN/1Kmmk+4CH
	2rpeDnzcRyn1WwdHtuPOuEQhb36pvce6ksigL+wQRBUUuSBIwmQ/dDuxFhl0fAaRs019ho5vK0JQ4
	dwTSlNew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPre-005yQr-0o;
	Wed, 13 Sep 2023 13:25:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrY-005yOv-2H
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 13:25:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrX-0001wf-EQ; Wed, 13 Sep 2023 15:24:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-00651H-Rc; Wed, 13 Sep 2023 15:24:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-009HTl-2a;
	Wed, 13 Sep 2023 15:24:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 15:24:55 +0200
Message-Id: <20230913132456.2211919-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
References: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_062500_848362_2B28B21F 
X-CRM114-Status: GOOD (  13.39  )
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
Subject: [PATCH 2/3] firmware-zynqmp: export functions for setting GGS/PGGS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ZynqMP features eight 32-bit global storage registers that are available
for general use. Four of them have their values preserved after software
reboots and four are cleared on software reboots.

Import the Linux API used to read and write these registers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 66 ++++++++++++++++++++++++++
 include/mach/zynqmp/firmware-zynqmp.h  | 33 +++++++++++--
 2 files changed, 96 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 128f042ddc4c..8d06c65b0ee0 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -503,6 +503,72 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
 				   arg1, arg2, out);
 }
 
+/*
+ * zynqmp_pm_write_ggs() - PM API for writing global general storage (ggs)
+ * @index:	GGS register index
+ * @value:	Register value to be written
+ *
+ * This function writes value to GGS register.
+ *
+ * Return:      Returns status, either success or error+reason
+ */
+int zynqmp_pm_write_ggs(u32 index, u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_WRITE_GGS,
+				   index, value, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_write_ggs);
+
+/**
+ * zynqmp_pm_read_ggs() - PM API for reading global general storage (ggs)
+ * @index:	GGS register index
+ * @value:	Register value to be written
+ *
+ * This function returns GGS register value.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_read_ggs(u32 index, u32 *value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_READ_GGS,
+				   index, 0, value);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_read_ggs);
+
+/**
+ * zynqmp_pm_write_pggs() - PM API for writing persistent global general
+ *			     storage (pggs)
+ * @index:	PGGS register index
+ * @value:	Register value to be written
+ *
+ * This function writes value to PGGS register.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_write_pggs(u32 index, u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_WRITE_PGGS, index, value,
+				   NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_write_pggs);
+
+/**
+ * zynqmp_pm_read_pggs() - PM API for reading persistent global general
+ *			     storage (pggs)
+ * @index:	PGGS register index
+ * @value:	Register value to be written
+ *
+ * This function returns PGGS register value.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_read_pggs(u32 index, u32 *value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_READ_PGGS, index, 0,
+				   value);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_read_pggs);
+
 /**
  * zynqmp_pm_fpga_load - Perform the fpga load
  * @address:	Address to write to
diff --git a/include/mach/zynqmp/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
index ddccfe3d6f9a..482a7ebf994f 100644
--- a/include/mach/zynqmp/firmware-zynqmp.h
+++ b/include/mach/zynqmp/firmware-zynqmp.h
@@ -74,10 +74,32 @@ struct fpgamgr {
 };
 
 enum pm_ioctl_id {
+	IOCTL_GET_RPU_OPER_MODE = 0,
+	IOCTL_SET_RPU_OPER_MODE = 1,
+	IOCTL_RPU_BOOT_ADDR_CONFIG = 2,
+	IOCTL_TCM_COMB_CONFIG = 3,
+	IOCTL_SET_TAPDELAY_BYPASS = 4,
+	IOCTL_SD_DLL_RESET = 6,
+	IOCTL_SET_SD_TAPDELAY = 7,
 	IOCTL_SET_PLL_FRAC_MODE = 8,
-	IOCTL_GET_PLL_FRAC_MODE,
-	IOCTL_SET_PLL_FRAC_DATA,
-	IOCTL_GET_PLL_FRAC_DATA,
+	IOCTL_GET_PLL_FRAC_MODE = 9,
+	IOCTL_SET_PLL_FRAC_DATA = 10,
+	IOCTL_GET_PLL_FRAC_DATA = 11,
+	IOCTL_WRITE_GGS = 12,
+	IOCTL_READ_GGS = 13,
+	IOCTL_WRITE_PGGS = 14,
+	IOCTL_READ_PGGS = 15,
+	/* Set healthy bit value */
+	IOCTL_SET_BOOT_HEALTH_STATUS = 17,
+	IOCTL_OSPI_MUX_SELECT = 21,
+	/* Register SGI to ATF */
+	IOCTL_REGISTER_SGI = 25,
+	/* Runtime feature configuration */
+	IOCTL_SET_FEATURE_CONFIG = 26,
+	IOCTL_GET_FEATURE_CONFIG = 27,
+	/* Dynamic SD/GEM configuration */
+	IOCTL_SET_SD_CONFIG = 30,
+	IOCTL_SET_GEM_CONFIG = 31,
 };
 
 enum pm_query_id {
@@ -123,4 +145,9 @@ struct zynqmp_eemi_ops {
 
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 
+int zynqmp_pm_write_ggs(u32 index, u32 value);
+int zynqmp_pm_read_ggs(u32 index, u32 *value);
+int zynqmp_pm_write_pggs(u32 index, u32 value);
+int zynqmp_pm_read_pggs(u32 index, u32 *value);
+
 #endif /* FIRMWARE_ZYNQMP_H_ */
-- 
2.39.2



