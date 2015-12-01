Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x229.google.com ([2a00:1450:400c:c09::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3mpT-0004Gc-Kh
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 15:26:57 +0000
Received: by wmec201 with SMTP id c201so18560590wme.1
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 07:26:34 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 16:26:24 +0100
Message-Id: <1448983584-14939-3-git-send-email-fvallee@eukrea.fr>
In-Reply-To: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
References: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 2/2] drivers: imx_adc: repurpose driver as pure ADC
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

  add ts channels and remove references to touch function

  return converted values and implement a command to query these
---
 drivers/misc/imx_adc.c | 150 ++++++++++++++++++++++++++++++-------------------
 drivers/misc/imx_adc.h |   8 ++-
 2 files changed, 97 insertions(+), 61 deletions(-)

diff --git a/drivers/misc/imx_adc.c b/drivers/misc/imx_adc.c
index 3e5ee88..e7544d4 100644
--- a/drivers/misc/imx_adc.c
+++ b/drivers/misc/imx_adc.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <command.h>
 #include <mach/imx25-regs.h>
 
 #include "imx_adc.h"
@@ -31,7 +32,6 @@ enum IMX_ADC_STATUS imx_adc_read_general(unsigned short *result)
 				 GCQFIFO_ADCOUT_SHIFT;
 		data_num++;
 	}
-	printf("data_num = %x\n", data_num);
 
 	return IMX_ADC_SUCCESS;
 }
@@ -50,78 +50,50 @@ enum IMX_ADC_STATUS imx_adc_convert(enum t_channel channel,
 				    unsigned short *result)
 {
 	unsigned long reg;
+	unsigned long sel_in;
 	int lastitemid;
 
 	switch (channel) {
 	case GER_PURPOSE_ADC0:
-		lastitemid = 0;
-		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
-		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
-		__raw_writel(reg, tsc_base + GCQCR);
-
-		reg = TSC_GENERAL_ADC_GCC0;
-		reg |= (15 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC0);
-
-		imx_adc_read_general(result);
+		sel_in = TSC_GENERAL_ADC_GCC0;
 		break;
-
 	case GER_PURPOSE_ADC1:
-		lastitemid = 0;
-		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
-		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
-		__raw_writel(reg, tsc_base + GCQCR);
-
-		reg = TSC_GENERAL_ADC_GCC1;
-		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC0);
-
-		imx_adc_read_general(result);
+		sel_in = TSC_GENERAL_ADC_GCC1;
 		break;
-
 	case GER_PURPOSE_ADC2:
-		lastitemid = 0;
-		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
-		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
-		__raw_writel(reg, tsc_base + GCQCR);
-
-		reg = TSC_GENERAL_ADC_GCC2;
-		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC0);
-
-		imx_adc_read_general(result);
+		sel_in = TSC_GENERAL_ADC_GCC2;
 		break;
-
-	case GER_PURPOSE_MULTICHNNEL:
-		reg = TSC_GENERAL_ADC_GCC0;
-		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC0);
-
-		reg = TSC_GENERAL_ADC_GCC1;
-		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC1);
-
-		reg = TSC_GENERAL_ADC_GCC2;
-		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
-		__raw_writel(reg, tsc_base + GCC2);
-
-		reg = (GCQ_ITEM_GCC2 << GCQ_ITEM2_SHIFT) |
-		      (GCQ_ITEM_GCC1 << GCQ_ITEM1_SHIFT) |
-		      (GCQ_ITEM_GCC0 << GCQ_ITEM0_SHIFT);
-		__raw_writel(reg, tsc_base + GCQ_ITEM_7_0);
-
-		lastitemid = 2;
-		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
-		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
-		__raw_writel(reg, tsc_base + GCQCR);
-
-		imx_adc_read_general(result);
+	case WIPER_ADC:
+		sel_in = TSC_GENERAL_ADC_WIPER;
+		break;
+	case TOUCH_XP_ADC:
+		sel_in = TSC_GENERAL_ADC_XP;
+		break;
+	case TOUCH_XN_ADC:
+		sel_in = TSC_GENERAL_ADC_XN;
+		break;
+	case TOUCH_YP_ADC:
+		sel_in = TSC_GENERAL_ADC_YP;
+		break;
+	case TOUCH_YN_ADC:
+		sel_in = TSC_GENERAL_ADC_YN;
 		break;
 	default:
 		printf("%s: bad channel number\n", __func__);
 		return IMX_ADC_ERROR;
 	}
 
+	lastitemid = 0;
+	reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
+	      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
+	__raw_writel(reg, tsc_base + GCQCR);
+
+	reg = sel_in;
+	reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+	__raw_writel(reg, tsc_base + GCC0);
+
+	imx_adc_read_general(result);
+
 	return IMX_ADC_SUCCESS;
 }
 
@@ -212,3 +184,65 @@ enum IMX_ADC_STATUS imx_adc_deinit(void)
 }
 
 device_initcall(imx_adc_init);
+
+/*!
+ * Barebox command to read ADC values
+ */
+static int do_imx_adc(int argc, char * argv[])
+{
+	unsigned short result[16];
+	int conversion;
+
+	int channel;
+	enum t_channel channel_name;
+
+	if (argc != 2)
+		return -1;
+	else
+		channel = simple_strtoul(argv[1], NULL, 0);
+
+	switch (channel) {
+	case 0:
+		channel_name = GER_PURPOSE_ADC0;
+		break;
+	case 1:
+		channel_name = GER_PURPOSE_ADC1;
+		break;
+	case 2:
+		channel_name = GER_PURPOSE_ADC2;
+		break;
+	case 3:
+		channel_name = WIPER_ADC;
+		break;
+	case 4:
+		channel_name = TOUCH_XP_ADC;
+		break;
+	case 5:
+		channel_name = TOUCH_XN_ADC;
+		break;
+	case 6:
+		channel_name = TOUCH_YP_ADC;
+		break;
+	case 7:
+		channel_name = TOUCH_YN_ADC;
+		break;
+	default:
+		printf("Invalid channel number\n");
+		return -2;
+	}
+
+	imx_adc_convert(channel_name, result);
+
+	conversion = result[0] * 3300 / (0xFFF);
+	printf("Value from ADC: %d\n", conversion);
+
+	return conversion;
+}
+
+
+BAREBOX_CMD_START(imx_adc)
+	.cmd            = do_imx_adc,
+	BAREBOX_CMD_DESC("Read ADC channel data")
+	BAREBOX_CMD_OPTS("[channel]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+BAREBOX_CMD_END
diff --git a/drivers/misc/imx_adc.h b/drivers/misc/imx_adc.h
index 7cc59ff..33cbbfc 100644
--- a/drivers/misc/imx_adc.h
+++ b/drivers/misc/imx_adc.h
@@ -70,12 +70,14 @@ enum IMX_ADC_STATUS {
  */
 
 enum t_channel {
-	TS_X_POS,
-	TS_Y_POS,
 	GER_PURPOSE_ADC0,
 	GER_PURPOSE_ADC1,
 	GER_PURPOSE_ADC2,
-	GER_PURPOSE_MULTICHNNEL,
+	WIPER_ADC,
+	TOUCH_XP_ADC,
+	TOUCH_XN_ADC,
+	TOUCH_YP_ADC,
+	TOUCH_YN_ADC,
 };
 
 /* EXPORTED FUNCTIONS */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
