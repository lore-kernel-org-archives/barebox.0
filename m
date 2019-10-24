Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaKX-0004Av-7r
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 10:26:58 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 24 Oct 2019 10:26:51 +0000
Message-ID: <1571912781-17152-3-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] firmware-zynqmp: extend driver with fpga relavant
 functions
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Port functions from xlnx-linux to get FPGA status and invoke bitstream
loading.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c             | 47 ++++++++++++++++++++++
 .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  8 ++++
 2 files changed, 55 insertions(+)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index f2187e9..18a1a51 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -508,6 +508,51 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
 				   arg1, arg2, out);
 }
 
+/**
+ * zynqmp_pm_fpga_load - Perform the fpga load
+ * @address:	Address to write to
+ * @size:	pl bitstream size
+ * @flags:	Flags are used to specify the type of Bitstream file -
+ * 		defined in ZYNQMP_FPGA_BIT_*-macros
+ *
+ * This function provides access to xilfpga library to transfer
+ * the required bitstream into PL.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+static int zynqmp_pm_fpga_load(u64 address, u32 size, u32 flags)
+{
+	if (!address || !size)
+		return -EINVAL;
+
+	return zynqmp_pm_invoke_fn(PM_FPGA_LOAD,
+			lower_32_bits(address),	upper_32_bits(address),
+			size, flags, NULL);
+}
+
+/**
+ * zynqmp_pm_fpga_get_status - Read value from PCAP status register
+ * @value:	Value to read
+ *
+ * This function provides access to the xilfpga library to get
+ * the PCAP status
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+static int zynqmp_pm_fpga_get_status(u32 *value)
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret = 0;
+
+	if (!value)
+		return -EINVAL;
+
+	ret = zynqmp_pm_invoke_fn(PM_FPGA_GET_STATUS, 0, 0, 0, 0, ret_payload);
+	*value = ret_payload[1];
+
+	return ret;
+}
+
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.get_api_version = zynqmp_pm_get_api_version,
 	.query_data = zynqmp_pm_query_data,
@@ -521,6 +566,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.clock_setparent = zynqmp_pm_clock_setparent,
 	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
+	.fpga_getstatus = zynqmp_pm_fpga_get_status,
+	.fpga_load = zynqmp_pm_fpga_load,
 };
 
 /**
diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
index 9e7a2e3..f19d73d 100644
--- a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
+++ b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
@@ -17,6 +17,12 @@
 
 #define PAYLOAD_ARG_CNT         4
 
+#define ZYNQMP_FPGA_BIT_AUTH_DDR	BIT(1)
+#define ZYNQMP_FPGA_BIT_AUTH_OCM	BIT(2)
+#define ZYNQMP_FPGA_BIT_ENC_USR_KEY	BIT(3)
+#define ZYNQMP_FPGA_BIT_ENC_DEV_KEY	BIT(4)
+#define ZYNQMP_FPGA_BIT_ONLY_BIN	BIT(5)
+
 enum pm_ioctl_id {
 	IOCTL_SET_PLL_FRAC_MODE = 8,
 	IOCTL_GET_PLL_FRAC_MODE,
@@ -61,6 +67,8 @@ struct zynqmp_eemi_ops {
 	int (*clock_setparent)(u32 clock_id, u32 parent_id);
 	int (*clock_getparent)(u32 clock_id, u32 *parent_id);
 	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
+	int (*fpga_getstatus)(u32 *status);
+	int (*fpga_load)(u64 address, u32 size, u32 flags);
 };
 
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
