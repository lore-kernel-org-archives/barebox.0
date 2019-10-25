Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz88-0000Mm-AA
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 12:55:49 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Fri, 25 Oct 2019 12:55:41 +0000
Message-ID: <1572008129-24020-3-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
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
Subject: [PATCH v2 2/4] firmware-zynqmp: extend driver with fpga relavant
 functions
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Port functions from xlnx-linux to get FPGA status and invoke bitstream
loading.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c             | 48 +++++++++++++++++++++-
 .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h | 14 ++++++-
 2 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index d91dcb0..6123aa1 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -18,7 +18,6 @@
 
 #include <mach/firmware-zynqmp.h>
 
-#define ZYNQMP_PM_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
 #define ZYNQMP_TZ_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
 
 #define ZYNQMP_PM_VERSION_MAJOR		1
@@ -504,6 +503,51 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
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
@@ -517,6 +561,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.clock_setparent = zynqmp_pm_clock_setparent,
 	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
+	.fpga_getstatus = zynqmp_pm_fpga_get_status,
+	.fpga_load = zynqmp_pm_fpga_load,
 };
 
 /**
diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
index 9e7a2e3..a044822 100644
--- a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
+++ b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
@@ -15,7 +15,17 @@
 #ifndef FIRMWARE_ZYNQMP_H_
 #define FIRMWARE_ZYNQMP_H_
 
-#define PAYLOAD_ARG_CNT         4
+#define PAYLOAD_ARG_CNT			4
+
+#define ZYNQMP_PM_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
+
+#define ZYNQMP_FPGA_BIT_AUTH_DDR	BIT(1)
+#define ZYNQMP_FPGA_BIT_AUTH_OCM	BIT(2)
+#define ZYNQMP_FPGA_BIT_ENC_USR_KEY	BIT(3)
+#define ZYNQMP_FPGA_BIT_ENC_DEV_KEY	BIT(4)
+#define ZYNQMP_FPGA_BIT_ONLY_BIN	BIT(5)
+
+#define ZYNQMP_PCAP_STATUS_FPGA_DONE	BIT(3)
 
 enum pm_ioctl_id {
 	IOCTL_SET_PLL_FRAC_MODE = 8,
@@ -61,6 +71,8 @@ struct zynqmp_eemi_ops {
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
