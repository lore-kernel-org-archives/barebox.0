Delivery-date: Fri, 15 Mar 2024 15:02:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88u-007x4o-0u
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88s-0001Ua-JO
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ycvV8H6KEOm5EI8sT66e/MQodjSMpr14U12subN/l0M=; b=wXM8LQX/PUpUkddGvH3pt/jj7+
	BSASiZBYwNIDQ0rbcL+gZB8L+UMl/qqPMVBMS35tKgY9P9n1I3VRWA9kVcCj7uLcooTlJOFFNJAHR
	np+UIfn4/igpvv8n9LiFjgvw7kDy9wVkH34WBS/01l1zJ4/WPhjIICnSUS+E6WR5CVQurIrn/Q1qZ
	T+Dc57SBQKDGTTiQ6W5hnEYZiYkacO4kAxvlS29CLJ4NnwLSK+mmhv+9oUkGgLIORIc9/+dwZ1qbC
	d/uIhe4z94UkH15rXxKPv//NczJEf4l5Efbo5l3XarA2z04C+MBcm5dH4ENj6/JDCx2g8EG8Zapwz
	ovjMr4Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl887-00000000OpR-2r0d;
	Fri, 15 Mar 2024 14:01:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl87z-00000000OjR-0O4m
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl87x-000817-S9; Fri, 15 Mar 2024 15:01:41 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-2-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3959;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=jy/PmULWP5AxETaka65OZE7xEbcqJVHPuNqE4ko/snU=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hMxmE1TNPHJht1Va+ZPluuvzTdYWbxDusHywlvPVX
 LOSM33bO0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBEDn5lZNgol55T7XpPMDJU
 6mG8t82M/Bk2Ho+M9k1U+h3mu0491Z3hv2ubGsPls7tPvqi636sS9WPX0pUtjz87Llb4F2H6d5+
 7HzcA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070143_148144_A90B4112 
X-CRM114-Status: GOOD (  14.95  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 02/14] zynqmp: firmware: add functions to set tap delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a function to set the tap delay for the clk phase of the sd host
controller.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 42 ++++++++++++++++++++++++++++++++++
 include/mach/zynqmp/firmware-zynqmp.h  | 23 +++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index b383ed6f00..039a46e767 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -48,6 +48,7 @@ enum pm_ret_status {
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_MMIO_WRITE = 19,
 	PM_FPGA_LOAD = 22,
 	PM_FPGA_GET_STATUS,
 	PM_IOCTL = 34,
@@ -511,6 +512,47 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
 				   arg1, arg2, out);
 }
 
+/**
+ * zynqmp_pm_set_sd_tapdelay() -  Set tap delay for the SD device
+ *
+ * @node_id:	Node ID of the device
+ * @type:	Type of tap delay to set (input/output)
+ * @value:	Value to set fot the tap delay
+ *
+ * This function sets input/output tap delay for the SD device.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value)
+{
+	u32 reg = (type == PM_TAPDELAY_INPUT) ? SD_ITAPDLY : SD_OTAPDLYSEL;
+	u32 mask = (node_id == NODE_SD_0) ? GENMASK(15, 0) : GENMASK(31, 16);
+
+	if (value) {
+		return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
+					   IOCTL_SET_SD_TAPDELAY,
+					   type, value, NULL);
+	}
+
+	/*
+	 * Work around completely misdesigned firmware API on Xilinx ZynqMP.
+	 * The IOCTL_SET_SD_TAPDELAY firmware call allows the caller to only
+	 * ever set IOU_SLCR SD_ITAPDLY Register SD0_ITAPDLYENA/SD1_ITAPDLYENA
+	 * bits, but there is no matching call to clear those bits. If those
+	 * bits are not cleared, SDMMC tuning may fail.
+	 *
+	 * Luckily, there are PM_MMIO_READ/PM_MMIO_WRITE calls which seem to
+	 * allow complete unrestricted access to all address space, including
+	 * IOU_SLCR SD_ITAPDLY Register and all the other registers, access
+	 * to which was supposed to be protected by the current firmware API.
+	 *
+	 * Use PM_MMIO_READ/PM_MMIO_WRITE to re-implement the missing counter
+	 * part of IOCTL_SET_SD_TAPDELAY which clears SDx_ITAPDLYENA bits.
+	 */
+	return zynqmp_pm_invoke_fn(PM_MMIO_WRITE, reg, mask, 0, 0, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_sd_tapdelay);
+
 /**
  * zynqmp_pm_sd_dll_reset() - Reset DLL logic
  *
diff --git a/include/mach/zynqmp/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
index 630677285f..00c63058f4 100644
--- a/include/mach/zynqmp/firmware-zynqmp.h
+++ b/include/mach/zynqmp/firmware-zynqmp.h
@@ -27,6 +27,10 @@
 
 #define ZYNQMP_PCAP_STATUS_FPGA_DONE	BIT(3)
 
+/* ZynqMP SD tap delay tuning */
+#define SD_ITAPDLY	0xFF180314
+#define SD_OTAPDLYSEL	0xFF180318
+
 enum pm_ioctl_id {
 	IOCTL_GET_RPU_OPER_MODE = 0,
 	IOCTL_SET_RPU_OPER_MODE = 1,
@@ -80,6 +84,22 @@ struct zynqmp_pm_query_data {
 	u32 arg3;
 };
 
+enum pm_node_id {
+	NODE_SD_0 = 39,
+	NODE_SD_1 = 40,
+};
+
+enum tap_delay_type {
+	PM_TAPDELAY_INPUT = 0,
+	PM_TAPDELAY_OUTPUT = 1,
+};
+
+enum dll_reset_type {
+	PM_DLL_RESET_ASSERT = 0,
+	PM_DLL_RESET_RELEASE = 1,
+	PM_DLL_RESET_PULSE = 2,
+};
+
 struct zynqmp_eemi_ops {
 	int (*get_api_version)(u32 *version);
 	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
@@ -99,6 +119,9 @@ struct zynqmp_eemi_ops {
 
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 
+int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
+int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
+
 int zynqmp_pm_write_ggs(u32 index, u32 value);
 int zynqmp_pm_read_ggs(u32 index, u32 *value);
 int zynqmp_pm_write_pggs(u32 index, u32 value);

-- 
2.40.1



