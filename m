Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZTq1Y-0005Lc-5I
 for barebox@lists.infradead.org; Mon, 24 Aug 2015 11:34:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6B113A002DC
 for <barebox@lists.infradead.org>; Mon, 24 Aug 2015 13:36:19 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 24 Aug 2015 13:32:13 +0200
Message-Id: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/3] commands: Add MMC ext. CSD register tool
To: barebox@lists.infradead.org

This tools can read/write to the extended CSD register of MMC devices.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 commands/Kconfig  |   16 +
 commands/Makefile |    1 +
 commands/extcsd.c | 2105 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 2122 insertions(+)
 create mode 100644 commands/extcsd.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 133dcbf..293d685 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -242,6 +242,22 @@ config CMD_VERSION
 
 	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
 
+config CMD_EXTCSD
+	tristate
+	prompt "read/write eMMC ext. CSD register"
+	depends on MCI
+	help
+	  Read or write the extended CSD register of a MMC device.
+
+	  Usage: extcsd dev [-r | -i index [-r | -v value -y]]
+
+	  Options:
+		  -i      field index of the register
+		  -r      print the register as raw data
+		  -v      value which will be written
+		  -y      don't request when writing to one time programmable fields
+		  __CAUTION__: this could damage the device!
+
 # end Information commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 3d594c3..f2b1820 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -114,3 +114,4 @@ obj-$(CONFIG_CMD_STATE)		+= state.o
 obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
 obj-$(CONFIG_CMD_DHRYSTONE)	+= dhrystone.o
 obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
+obj-$(CONFIG_CMD_EXTCSD)	+= extcsd.o
diff --git a/commands/extcsd.c b/commands/extcsd.c
new file mode 100644
index 0000000..79d1e97
--- /dev/null
+++ b/commands/extcsd.c
@@ -0,0 +1,2105 @@
+/*
+ *
+ * (C) Copyright 2015 Phytec Messtechnik GmbH
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * This program is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation, either version 3 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <driver.h>
+#include <stdio.h>
+#include <mci.h>
+#include <getopt.h>
+
+#define EXT_CSD_BLOCKSIZE	512
+
+/* Access types */
+#define R		"R"
+#define RW		"R/W"
+#define RWaR		"R/W & R"
+#define RWaRWE		"R/W & R/W/E"
+#define RWaRWC_P	"R/W & R/W/C_P"
+#define RWaRWC_PaRWE_P	"R/W, R/W/C_P & R/W/E_P"
+#define WE		"W/E"
+#define RWE		"R/W/E"
+#define RWEaR		"R/W/E & R"
+#define RWEaRWE_P	"R/W/E & R/W/E_P"
+#define RWC_P		"R/W/C_P"
+#define RWE_P		"R/W/E_P"
+#define WE_P		"W/E_P"
+
+#define print_field_caption(reg_name, access_mode)			       \
+	do {								       \
+		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name);		       \
+		printf("\tValue: %#02x\n", reg[index]);			       \
+		printf("\tAccess: "access_mode"\n");			       \
+	} while (false);
+
+#define print_field_caption_with_offset(reg_name, offset, access_mode)	       \
+	do {								       \
+		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name + offset);       \
+		printf("\tValue: %#02x\n", reg[index]);			       \
+		printf("\tAccess: "access_mode"\n");			       \
+	} while (false);
+
+#define get_field_val(reg_name, offset, mask)				       \
+	((reg[EXT_CSD_##reg_name] >> offset) & mask)
+
+#define get_field_val_with_index(index, offset, mask)			       \
+	((reg[index] >> offset) & mask)
+
+static void print_access_type_key(void)
+{
+	printf("\nR:       Read only.\n");
+	printf("W:       One time programmable and not readable.\n");
+	printf("R/W:     One time programmable and readable.\n");
+	printf("W/E:     Multiple writable with value kept after power failure, H/W reset assertion and any CMD0 reset and not readable.\n");
+	printf("R/W/E:   Multiple writable with value kept after power failure, H/W reset assertion and any CMD0 reset and readable.\n");
+	printf("R/W/C_P: Writable after value cleared by power failure and HW/rest assertion (the value not cleared by CMD0 reset) and readable.\n");
+	printf("R/W/E_P: Multiple writable with value reset after power failure, H/W reset assertion and any CMD0 reset and readable.\n");
+	printf("W/E_P:   Multiple writable with value reset after power failure, H/W reset assertion and any CMD0 reset and not readable.\n\n");
+}
+
+static int print_field(u8 *reg, int index)
+{
+	int rev;
+	u32 val;
+	u32 tmp;
+	u64 tmp64;
+
+	rev = reg[EXT_CSD_REV];
+
+	if (rev >= 7)
+		switch (index) {
+		case EXT_CSD_CMDQ_MODE_EN:
+			print_field_caption(CMDQ_MODE_EN, RWE_P);
+			val = get_field_val(CMDQ_MODE_EN, 0, 0x1);
+			if (val)
+				printf("\tCommand queuing is enabled\n");
+			else
+				printf("\tCommand queuing is disabled\n");
+			return 1;
+
+		case EXT_CSD_SECURE_REMOVAL_TYPE:
+			print_field_caption(SECURE_REMOVAL_TYPE, RWaR);
+			val = get_field_val(SECURE_REMOVAL_TYPE, 0, 0xF);
+			switch (val) {
+			case 0x0:
+				printf("\t[3-0] Supported Secure Removal Type: information removed by an erase of the physical memory\n");
+				break;
+			case 0x1:
+				printf("\t[3-0] Supported Secure Removal Type: information removed by an overwriting the addressed locations with a character followed by an erase\n");
+				break;
+			case 0x2:
+				printf("\t[3-0] Supported Secure Removal Type: information removed by an overwriting the addressed locations with a character, its complement, then a random character\n");
+				break;
+			case 0x3:
+				printf("\t[3-0] Supported Secure Removal Type: information removed using a vendor defined\n");
+				break;
+			}
+			val = get_field_val(SECURE_REMOVAL_TYPE, 4, 0xF);
+			switch (val) {
+			case 0x0:
+				printf("\t[7-4] Configure Secure Removal Type: information removed by an erase of the physical memory\n");
+				break;
+			case 0x1:
+				printf("\t[7-4] Configure Secure Removal Type: information removed by an overwriting the addressed locations with a character followed by an erase\n");
+				break;
+			case 0x2:
+				printf("\t[7-4] Configure Secure Removal Type: information removed by an overwriting the addressed locations with a character, its complement, then a random character\n");
+				break;
+			case 0x3:
+				printf("\t[7-4] Configure Secure Removal Type: information removed using a vendor defined\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT:
+			print_field_caption(PRODUCT_ST8_AWARENSS_ENABLEMENT,
+				RWEaR);
+			val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 0,
+				0x1);
+			if (val)
+				printf("\t[0] Manual mode is supported\n");
+			else
+				printf("\t[0] Manual mode is not supported\n");
+			val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 1,
+				0x1);
+			if (val)
+				printf("\t[1] Auto mode is supported\n");
+			else
+				printf("\t[1] Auto mode is not supported\n");
+			val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 4,
+				0x1);
+			if (val)
+				printf("\t[4] Production State Awareness is enabled\n");
+			else
+				printf("\t[4] Production State Awareness is disabled\n");
+			val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 5,
+				0x1);
+			if (val)
+				printf("\t[5] Auto mode is enabled\n");
+			else
+				printf("\t[5] Manual mode is enabled\n");
+			return 1;
+
+		/*   EXT_CSD_MAX_PRE_LOADING_DATA_SIZE */
+		case 25:
+		case 24:
+		case 23:
+		case 22:
+			print_field_caption_with_offset(
+				MAX_PRE_LOADING_DATA_SIZE,
+				index - EXT_CSD_MAX_PRE_LOADING_DATA_SIZE, R);
+			tmp64 = get_field_val(MAX_PRE_LOADING_DATA_SIZE, 0,
+				0xFF);
+			tmp64 = tmp64 | get_field_val(
+				MAX_PRE_LOADING_DATA_SIZE + 1, 0, 0xFF) << 8;
+			tmp64 = tmp64 | get_field_val(
+				MAX_PRE_LOADING_DATA_SIZE + 2, 0, 0xFF) << 16;
+			tmp64 = tmp64 | get_field_val(
+				MAX_PRE_LOADING_DATA_SIZE + 3, 0, 0xFF) << 24;
+			tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
+			if (tmp64 == 0xffffffff)
+				if (tmp)
+					printf("\tMax_Pre_Loading_Data_Size: 16 TB\n");
+				else
+					printf("\tMax_Pre_Loading_Data_Size: 2 TB\n");
+			else
+				if (tmp)
+					printf("\tMax_Pre_Loading_Data_Size: %llu B\n",
+						tmp64 * 4096);
+				else
+					printf("\tMax_Pre_Loading_Data_Size: %llu B\n",
+						tmp64 * 512);
+			return 1;
+
+		/*   EXT_CSD_PRE_LOADING_DATA_SIZE */
+		case 21:
+		case 20:
+		case 19:
+		case 18:
+			print_field_caption_with_offset(PRE_LOADING_DATA_SIZE,
+				index - EXT_CSD_PRE_LOADING_DATA_SIZE, RWE_P);
+			tmp64 = get_field_val(PRE_LOADING_DATA_SIZE, 0, 0xFF);
+			tmp64 = tmp64 | get_field_val(
+				PRE_LOADING_DATA_SIZE + 1, 0, 0xFF) << 8;
+			tmp64 = tmp64 | get_field_val(
+				PRE_LOADING_DATA_SIZE + 2, 0, 0xFF) << 16;
+			tmp64 = tmp64 | get_field_val(
+				PRE_LOADING_DATA_SIZE + 3, 0, 0xFF) << 24;
+			tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
+			if (tmp64 == 0xffffffff)
+				if (tmp)
+					printf("\tPre_Loading_Data_Size: 16 TB\n");
+				else
+					printf("\tPre_Loading_Data_Size: 2 TB\n");
+			else
+				if (tmp)
+					printf("\tPre_Loading_Data_Size: %llu B\n",
+						tmp64 * 4096);
+				else
+					printf("\tPre_Loading_Data_Size: %llu B\n",
+						tmp64 * 512);
+			return 1;
+
+		case EXT_CSD_FFU_STATUS:
+			print_field_caption(FFU_STATUS, R);
+			val = get_field_val(FFU_STATUS, 0, 0x13);
+			switch (val) {
+			case 0x0:
+				printf("\t[5-0] Code: Success\n");
+				break;
+			case 0x10:
+				printf("\t[5-0] Code: General error\n");
+				break;
+			case 0x11:
+				printf("\t[5-0] Code: Firmware install error\n");
+				break;
+			case 0x12:
+				printf("\t[5-0] Code: Error in downloading firmware\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_MODE_CONFIG:
+			print_field_caption(MODE_CONFIG, RWE_P);
+			val = get_field_val(MODE_CONFIG, 0, 0xFF);
+			switch (val) {
+			case 0x0:
+				printf("\t[7-0] Value: Normal Mode\n");
+				break;
+			case 0x1:
+				printf("\t[7-0] Value: FFU Mode\n");
+				break;
+			case 0x10:
+				printf("\t[7-0] Value: Vendor Specific Mode\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_BARRIER_CTRL:
+			print_field_caption(BARRIER_CTRL, RW);
+			val = get_field_val(BARRIER_CTRL, 0, 0x1);
+			if (val)
+				printf("\t[0] BARRIER_EN: ON\n");
+			else
+				printf("\t[0] BARRIER_EN: OFF\n");
+			return 1;
+
+		case EXT_CSD_OUT_OF_INTERRUPT_TIME:
+			print_field_caption(OUT_OF_INTERRUPT_TIME, R);
+			val = get_field_val(OUT_OF_INTERRUPT_TIME, 0, 0xFF);
+			val = val * 10;
+			if (val)
+				printf("\tOut-of-interrupt timeout definition: %u ms\n",
+					val);
+			else
+				printf("\tNot Defined\n");
+			return 1;
+
+		case EXT_CSD_PARTITION_SWITCH_TIME:
+			print_field_caption(PARTITION_SWITCH_TIME, R);
+			val = get_field_val(PARTITION_SWITCH_TIME, 0, 0xFF);
+			val = val * 10;
+			if (val)
+				printf("\tPartition switch timeout definition: %u ms\n",
+					val);
+			else
+				printf("\tNot Defined\n");
+			return 1;
+
+		case EXT_CSD_DRIVER_STRENGTH:
+			print_field_caption(DRIVER_STRENGTH, R);
+			val = get_field_val(DRIVER_STRENGTH, 0, 0x1);
+			if (val)
+				printf("\t[0] Type 0: supported\n");
+			else
+				printf("\t[0] Type 0: not supported\n");
+			val = get_field_val(DRIVER_STRENGTH, 1, 0x1);
+			if (val)
+				printf("\t[1] Type 1: supported\n");
+			else
+				printf("\t[1] Type 1: not supported\n");
+			val = get_field_val(DRIVER_STRENGTH, 2, 0x1);
+			if (val)
+				printf("\t[2] Type 2: supported\n");
+			else
+				printf("\t[2] Type 2: not supported\n");
+			val = get_field_val(DRIVER_STRENGTH, 3, 0x1);
+			if (val)
+				printf("\t[3] Type 3: supported\n");
+			else
+				printf("\t[3] Type 3: not supported\n");
+			val = get_field_val(DRIVER_STRENGTH, 4, 0x1);
+			if (val)
+				printf("\t[4] Type 4: supported\n");
+			else
+				printf("\t[4] Type 4: not supported\n");
+			return 1;
+
+		case EXT_CSD_CACHE_FLUSH_POLICY:
+			print_field_caption(CACHE_FLUSH_POLICY, R);
+			val = get_field_val(CACHE_FLUSH_POLICY, 0, 0x1);
+			if (val)
+				printf("\t[0] Device is using a FIFO policy for cache flushing\n");
+			else
+				printf("\t[0] Device flushing policy is not provided by the device\n");
+			return 1;
+
+		case EXT_CSD_OPTIMAL_READ_SIZE:
+			print_field_caption(OPTIMAL_READ_SIZE, R);
+			val = get_field_val(OPTIMAL_READ_SIZE, 0, 0xFF);
+			val = val * 4048;
+			printf("\t[7-0] Minimum optimal read unit size: %u\n",
+				val);
+			return 1;
+
+		case EXT_CSD_OPTIMAL_WRITE_SIZE:
+			print_field_caption(OPTIMAL_WRITE_SIZE, R);
+			val = get_field_val(OPTIMAL_WRITE_SIZE, 0, 0xFF);
+			val = val * 4048;
+			printf("\t[7-0] Minimum optimal write unit size: %u\n",
+				val);
+			return 1;
+
+		case EXT_CSD_PRE_EOL_INFO:
+			print_field_caption(PRE_EOL_INFO, R);
+			val = get_field_val(PRE_EOL_INFO, 0, 0x3);
+			switch (val) {
+			case 1:
+				printf("\t[1-0] Device life time reflected by average reserved blocks: Normal\n");
+				break;
+			case 2:
+				printf("\t[1-0] Device life time reflected by average reserved blocks: Warning\n");
+				break;
+			case 3:
+				printf("\t[1-0] Device life time reflected by average reserved blocks: Urgent\n");
+				break;
+			default:
+				printf("\t[1-0] Not Defined\n");
+			}
+			return 1;
+
+		case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A:
+			print_field_caption(DEVICE_LIFE_TIME_EST_TYP_A, R);
+			val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_A, 0,
+				0xFF);
+			val = val * 10;
+			if (val == 0)
+				printf("\tDevice life time estimation type A value: not defined\n");
+			else if (val == 0xb)
+				printf("\tDevice life time estimation type A value : maximum\n");
+			else
+				printf("\tDevice life time estimation type A value: %u%% - %u%%\n",
+				(val-10), val);
+			return 1;
+
+		case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B:
+			print_field_caption(DEVICE_LIFE_TIME_EST_TYP_B, R);
+			val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_B, 0,
+				0xFF);
+			val = val * 10;
+			if (val == 0)
+				printf("\tDevice life time estimation type B value: not defined\n");
+			else if (val == 0xb)
+				printf("\tDevice life time estimation type B value : maximum\n");
+			else
+				printf("\tDevice life time estimation type B value: %u%% - %u%%\n",
+					 (val-10), val);
+			return 1;
+
+		/*   EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD */
+		case 305:
+		case 304:
+		case 303:
+		case 302:
+			print_field_caption_with_offset(
+				NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD,
+				index - EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD,
+				 R);
+			return 1;
+
+		case EXT_CSD_CMDQ_DEPTH:
+			print_field_caption(CMDQ_DEPTH, R);
+			val = get_field_val(CMDQ_DEPTH, 0, 0xF);
+			++val;
+			printf("\t[3-0] Queue Depth: %u", val);
+			return 1;
+
+		case EXT_CSD_CMDQ_SUPPORT:
+			print_field_caption(CMDQ_SUPPORT, R);
+			val = get_field_val(CMDQ_SUPPORT, 0, 0x1);
+			if (val)
+				printf("\t[0] Command queuing: supported\n");
+			else
+				printf("\t[0] Command queuing: not supported\n");
+			return 1;
+
+		case EXT_CSD_BARRIER_SUPPORT:
+			print_field_caption(BARRIER_SUPPORT, R);
+			val = get_field_val(BARRIER_SUPPORT, 0, 0x1);
+			if (val)
+				printf("\t[0] Barrier command: supported\n");
+			else
+				printf("\t[0] Barrier command: not supported\n");
+			return 1;
+
+		/*   EXT_CSD_FFU_ARG */
+		case 490:
+		case 489:
+		case 488:
+		case 487:
+			print_field_caption_with_offset(FFU_ARG,
+				index - EXT_CSD_FFU_ARG, R);
+			return 1;
+
+		case EXT_CSD_OPERATION_CODES_TIMEOUT:
+			print_field_caption(OPERATION_CODES_TIMEOUT, R);
+			val = get_field_val(OPERATION_CODES_TIMEOUT, 0, 0xFF);
+			printf("\t[7-0] Timeout Values: %#02x\n", val);
+			return 1;
+
+		case EXT_CSD_FFU_FEATURES:
+			print_field_caption(FFU_FEATURES, R);
+			val = get_field_val(FFU_FEATURES, 0, 0x1);
+			if (val)
+				printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED: supported\n");
+			else
+				printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED: not supported\n");
+			return 1;
+
+		case EXT_CSD_SUPPORTED_MODES:
+			print_field_caption(SUPPORTED_MODES, R);
+			val = get_field_val(SUPPORTED_MODES, 0, 0x1);
+			if (val)
+				printf("\t[0] FFU: supported\n");
+			else
+				printf("\t[0] FFU: not supported\n");
+			val = get_field_val(SUPPORTED_MODES, 1, 0x1);
+			if (val)
+				printf("\t[1] VSM: supported\n");
+			else
+				printf("\t[1] VSM: not supported\n");
+			return 1;
+
+		}
+	if (rev >= 6)
+		switch (index) {
+		case EXT_CSD_CACHE_CTRL:
+			print_field_caption(CACHE_CTRL, RWE_P);
+			val = get_field_val(CACHE_CTRL, 0, 0x1);
+			if (val)
+				printf("\t[0] CACHE_EN: ON\n");
+			else
+				printf("\t[0] CACHE_EN: OFF\n");
+			return 1;
+
+		case EXT_CSD_POWER_OFF_NOTIFICATION:
+			print_field_caption(POWER_OFF_NOTIFICATION, RWE_P);
+			val = get_field_val(POWER_OFF_NOTIFICATION, 0, 0x7);
+			switch (val) {
+			case 0x0:
+				printf("\t[2-0] NO_POWER_NOTIFICATION\n");
+				break;
+			case 0x1:
+				printf("\t[2-0] POWERED_ON\n");
+				break;
+			case 0x2:
+				printf("\t[2-0] POWER_OFF_SHORT\n");
+				break;
+			case 0x3:
+				printf("\t[2-0] POWER_OFF_LONG\n");
+				break;
+			case 0x4:
+				printf("\t[2-0] SLEEP_NOTIFICATION\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_PACKED_FAILURE_INDEX:
+			print_field_caption(PACKED_FAILURE_INDEX, R);
+			val = get_field_val(PACKED_FAILURE_INDEX, 0, 0xFF);
+			printf("\t[7-0] PACKED_FAILURE_INDEX: %u\n", val);
+			return 1;
+
+		case EXT_CSD_PACKED_COMMAND_STATUS:
+			print_field_caption(PACKED_COMMAND_STATUS, R);
+			val = get_field_val(PACKED_COMMAND_STATUS, 0, 0x1);
+			printf("\t[0] Error: %u\n", val);
+			val = get_field_val(PACKED_COMMAND_STATUS, 1, 0x1);
+			printf("\t[1] Indexed Error: %u\n", val);
+			return 1;
+
+		/* EXT_CSD_CONTEXT_CONF */
+		case 51:
+		case 50:
+		case 49:
+		case 48:
+		case 47:
+		case 46:
+		case 45:
+		case 44:
+		case 43:
+		case 42:
+		case 41:
+		case 40:
+		case 39:
+		case 38:
+		case 37:
+			print_field_caption_with_offset(CONTEXT_CONF,
+				index - EXT_CSD_CONTEXT_CONF, RWE_P);
+			val = get_field_val_with_index(index, 0, 0x3);
+			switch (val) {
+			case 0x0:
+				printf("\t[1-0] Activation and direction selection: Context is closed and is no longer active\n");
+				break;
+			case 0x1:
+				printf("\t[1-0] Activation and direction selection: Context is configured and activated as a write-only context and according to the rest of the bits in this configuration register\n");
+				break;
+			case 0x2:
+				printf("\t[1-0] Activation and direction selection: Context is configured and activated as a read-only context and according to the rest of the bits in this configuration register\n");
+				break;
+			case 0x3:
+				printf("\t[1-0] Activation and direction selection: Context is configured and activated as a read/write context and according to the rest of the bits in this configuration register\n");
+				break;
+			}
+			val = get_field_val_with_index(index, 2, 0x1);
+			if (val)
+				printf("\t[2]   Large Unit context: Context follows Large Unit rules\n");
+			else
+				printf("\t[2]   Large Unit context: Context is not following Large Unit rules\n");
+			val = get_field_val_with_index(index, 3, 0x3);
+			printf("\t[5-3] Large Unit multiplier: %u\n", val);
+			val = get_field_val_with_index(index, 0, 0x3);
+			switch (val) {
+			case 0x0:
+				printf("\t[7-6] Reliability mode: MODE0\n");
+				break;
+			case 0x1:
+				printf("\t[7-6] Reliability mode: MODE1\n");
+				break;
+			case 0x2:
+				printf("\t[7-6] Reliability mode: MODE2\n");
+				break;
+			}
+			return 1;
+
+		/*   EXT_CSD_EXT_PARTITIONS_ATTRIBUTE */
+		case 52:
+			print_field_caption_with_offset(
+				EXT_PARTITIONS_ATTRIBUTE,
+				index - EXT_CSD_EXT_PARTITIONS_ATTRIBUTE, RW);
+			printf("\t[3-0] EXT_1\n");
+			printf("\t[7-4] EXT_2\n");
+			return 1;
+		case 53:
+			print_field_caption_with_offset(
+				EXT_PARTITIONS_ATTRIBUTE,
+				index - EXT_CSD_EXT_PARTITIONS_ATTRIBUTE, RW);
+			printf("\t[11-8]  EXT_3\n");
+			printf("\t[15-12] EXT_4\n");
+			return 1;
+
+		/*   EXT_CSD_EXCEPTION_EVENTS_STATUS */
+		case 54:
+			print_field_caption_with_offset(
+				EXCEPTION_EVENTS_STATUS,
+				index - EXT_CSD_EXCEPTION_EVENTS_STATUS, R);
+			val = get_field_val(EXCEPTION_EVENTS_STATUS, 0, 0x1);
+			printf("\t[0] URGENT_BKOPS: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_STATUS, 1, 0x1);
+			printf("\t[1] DYNCAP_NEEDED: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_STATUS, 2, 0x1);
+			printf("\t[2] SYSPOOL_EXHAUSTED: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_STATUS, 3, 0x1);
+			printf("\t[3] PACKED_FAILURE: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_STATUS, 4, 0x1);
+			printf("\t[4] EXTENDED_SECURITY_FAILURE: %i\n", val);
+			return 1;
+		case 55:
+			print_field_caption_with_offset(
+				EXCEPTION_EVENTS_STATUS,
+				index - EXT_CSD_EXCEPTION_EVENTS_STATUS, R);
+			return 1;
+
+		/*   EXT_CSD_EXCEPTION_EVENTS_CTRL */
+		case 56:
+			print_field_caption_with_offset(EXCEPTION_EVENTS_CTRL,
+				index - EXT_CSD_EXCEPTION_EVENTS_CTRL, RWE_P);
+			val = get_field_val(EXCEPTION_EVENTS_CTRL, 1, 0x1);
+			printf("\t[1] DYNCAP_EVENT_EN: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_CTRL, 2, 0x1);
+			printf("\t[2] SYSPOOL_EVENT_EN: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_CTRL, 3, 0x1);
+			printf("\t[3] PACKED_EVENT_EN: %i\n", val);
+			val = get_field_val(EXCEPTION_EVENTS_CTRL, 4, 0x1);
+			printf("\t[4] EXTENDED_SECURITY_EN: %i\n", val);
+			return 1;
+		case 57:
+			print_field_caption(EXCEPTION_EVENTS_CTRL, RWE_P);
+			printf("\tR/W/E_P\n");
+			printf("\tValue: %#02x\n", reg[index]);
+			return 1;
+
+		case EXT_CSD_CLASS_6_CTRL:
+			print_field_caption(CLASS_6_CTRL, RWE_P);
+			val = get_field_val(CLASS_6_CTRL, 0, 0x1);
+			if (val)
+				printf("\t[0] Dynamic Capacity\n");
+			else
+				printf("\t[0] Write Protect\n");
+			return 1;
+
+		case EXT_CSD_INI_TIMEOUT_EMU:
+			print_field_caption(INI_TIMEOUT_EMU, R);
+			val = get_field_val(INI_TIMEOUT_EMU, 0, 0xFF);
+			val = val * 100;
+			printf("\tInitialization Time out value: %u ms\n", val);
+			return 1;
+
+		case EXT_CSD_DATA_SECTOR_SIZE:
+			print_field_caption(DATA_SECTOR_SIZE, R);
+			val = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
+			if (val)
+				printf("\t[0] Data sector size is 4KB\n");
+			else
+				printf("\t[0] Data sector size is 512B\n");
+			return 1;
+
+		case EXT_CSD_USE_NATIVE_SECTOR:
+			print_field_caption(USE_NATIVE_SECTOR, RW);
+			val = get_field_val(USE_NATIVE_SECTOR, 0, 0x1);
+			if (val)
+				printf("\t[0] Device is using the larger than 512B native sector size\n");
+			else
+				printf("\t[0] Device is emulating a 512B sector size or uses a native 512B sector size\n");
+			return 1;
+
+		case EXT_CSD_NATIVE_SECTOR_SIZE:
+			print_field_caption(NATIVE_SECTOR_SIZE, R);
+			val = get_field_val(NATIVE_SECTOR_SIZE, 0, 0x1);
+			if (val)
+				printf("\t[0] Native sector size is 4KB\n");
+			else
+				printf("\t[0] Native sector size is 512B\n");
+			return 1;
+
+		case EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT:
+			print_field_caption(PROGRAM_CID_CSD_DDR_SUPPORT, R);
+			val = get_field_val(PROGRAM_CID_CSD_DDR_SUPPORT, 0,
+				0x1);
+			if (val)
+				printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27 are considered legal in both single data rate and dual data rate mode\n");
+			else
+				printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27 must be used in single data rate mode\n");
+			return 1;
+
+		case EXT_CSD_PERIODIC_WAKEUP:
+			print_field_caption(PERIODIC_WAKEUP, RWE);
+			val = get_field_val(PERIODIC_WAKEUP, 0, 0x1F);
+			printf("\t[5-0] WAKEUP_PERIOD: %u\n", val);
+			val = get_field_val(PERIODIC_WAKEUP, 5, 0x7);
+			switch (val) {
+			case 0x0:
+				printf("\t[7-5] WAKEUP_UNIT: infinity\n");
+				break;
+			case 0x1:
+				printf("\t[7-5] WAKEUP_UNIT: months\n");
+				break;
+			case 0x2:
+				printf("\t[7-5] WAKEUP_UNIT: weeks\n");
+				break;
+			case 0x3:
+				printf("\t[7-5] WAKEUP_UNIT: days\n");
+				break;
+			case 0x4:
+				printf("\t[7-5] WAKEUP_UNIT: hours\n");
+				break;
+			case 0x5:
+				printf("\t[7-5] WAKEUP_UNIT: minutes\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_PWR_CL_200_195:
+			print_field_caption(PWR_CL_200_195, R);
+			val = get_field_val(PWR_CL_200_195, 0, 0xFF);
+			printf("\tPower class for 200MHz, at 1.95V %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_PWR_CL_200_360:
+			print_field_caption(PWR_CL_200_360, R);
+			val = get_field_val(PWR_CL_200_360, 0, 0xFF);
+			printf("\tPower class for 200MHz, at 3.6V %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_POWER_OFF_LONG_TIME:
+			print_field_caption(POWER_OFF_LONG_TIME, R);
+			val = get_field_val(POWER_OFF_LONG_TIME, 0, 0xFF);
+			val = val * 10;
+			printf("\tGeneric Switch Timeout Definition: %u ms\n",
+				val);
+			return 1;
+
+		case EXT_CSD_GENERIC_CMD6_TIME:
+			print_field_caption(GENERIC_CMD6_TIME, R);
+			val = get_field_val(GENERIC_CMD6_TIME, 0, 0xFF);
+			val = val * 10;
+			printf("\tGeneric Switch Timeout Definition: %u ms\n",
+				val);
+			return 1;
+
+		/*   EXT_CSD_CACHE_SIZE */
+		case 252:
+		case 251:
+		case 250:
+		case 249:
+			print_field_caption_with_offset(CACHE_SIZE,
+				index - EXT_CSD_CACHE_SIZE, R);
+			val = get_field_val(CACHE_SIZE, 0, 0xFF);
+			val = val | get_field_val(CACHE_SIZE + 1, 0, 0xFF) << 8;
+			val = val | get_field_val(CACHE_SIZE + 2, 0, 0xFF)
+				<< 16;
+			val = val | get_field_val(CACHE_SIZE + 3, 0, 0xFF)
+				<< 24;
+			printf("\tCache Size: %u KiB\n", val);
+			return 1;
+
+		case EXT_CSD_EXT_SUPPORT:
+			print_field_caption(EXT_SUPPORT, R);
+			val = get_field_val(EXT_SUPPORT, 0, 0x1);
+			if (val)
+				printf("\t[0] System code: supported\n");
+			else
+				printf("\t[0] System code: supported\n");
+			val = get_field_val(EXT_SUPPORT, 1, 0x1);
+			if (val)
+				printf("\t[1] Non-persistent: supported\n");
+			else
+				printf("\t[1] Non-persistent: supported\n");
+			return 1;
+
+		case EXT_CSD_LARGE_UNIT_SIZE_M1:
+			print_field_caption(LARGE_UNIT_SIZE_M1, R);
+			val = get_field_val(LARGE_UNIT_SIZE_M1, 0, 0xFF);
+			printf("\tLarge Unit size: %#02x\n", val);
+			return 1;
+
+		case EXT_CSD_CONTEXT_CAPABILITIES:
+			print_field_caption(CONTEXT_CAPABILITIES, R);
+			val = get_field_val(CONTEXT_CAPABILITIES, 0, 0xF);
+			printf("\t[3-0] MAX_CONTEXT_ID: %#02x\n", val);
+			val = get_field_val(CONTEXT_CAPABILITIES, 4, 0x7);
+			printf("\t[6-4] LARGE_UNIT_MAX_MULTIPLIER_M1: %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_TAG_RES_SIZE:
+			print_field_caption(TAG_RES_SIZE, R);
+			val = get_field_val(TAG_RES_SIZE, 0, 0xFF);
+			printf("\tSystem Data Tag Resources Size: %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_TAG_UNIT_SIZE:
+			print_field_caption(TAG_UNIT_SIZE, R);
+			tmp = get_field_val(NATIVE_SECTOR_SIZE, 0, 0x1);
+			tmp = (tmp == 0) ? 512 : 4048;
+			val = 2 << (1 - get_field_val(TAG_UNIT_SIZE, 0, 0xFF));
+			val = val * tmp;
+			printf("\tTag Unit Size: %u\n", val);
+			return 1;
+
+		case EXT_CSD_DATA_TAG_SUPPORT:
+			print_field_caption(DATA_TAG_SUPPORT, R);
+			val = get_field_val(DATA_TAG_SUPPORT, 0, 0x1);
+			printf("\t[0] SYSTEM_DATA_TAG_SUPPORT: %u\n", val);
+			return 1;
+
+		case EXT_CSD_MAX_PACKED_WRITES:
+			print_field_caption(MAX_PACKED_WRITES, R);
+			val = get_field_val(MAX_PACKED_WRITES, 0, 0xFF);
+			printf("\tmaximum number of commands in write command: %u\n",
+				val);
+			return 1;
+
+		case EXT_CSD_MAX_PACKED_READS:
+			print_field_caption(MAX_PACKED_READS, R);
+			val = get_field_val(MAX_PACKED_READS, 0, 0xFF);
+			printf("\tmaximum number of commands in read command: %u\n",
+				val);
+			return 1;
+
+		}
+	if (rev >= 5)
+		switch (index) {
+		case EXT_CSD_TCASE_SUPPORT:
+			print_field_caption(TCASE_SUPPORT, WE_P);
+			val = get_field_val(TCASE_SUPPORT, 0, 0xFF);
+			printf("\t[7-0] TCASE_SUPPORT: %#02x\n", val);
+			return 1;
+
+		case EXT_CSD_PRODUCTION_STATE_AWARENESS:
+			print_field_caption(PRODUCTION_STATE_AWARENESS,
+				RWE);
+			val = get_field_val(PRODUCTION_STATE_AWARENESS,
+				0, 0xFF);
+			switch (val) {
+			case 0x0:
+				printf("\t[7-0] State: NORMAL\n");
+				break;
+			case 0x1:
+				printf("\t[7-0] State: PRE_SOLDERING_WRITES\n");
+				break;
+			case 0x2:
+				printf("\t[7-0] State: PRE_SOLDERING_POST_WRITES\n");
+				break;
+			case 0x3:
+				printf("\t[7-0] State: AUTO_PRE_SOLDERING\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_SEC_BAD_BLK_MGMNT:
+			print_field_caption(SEC_BAD_BLK_MGMNT, RW);
+			val = get_field_val(SEC_BAD_BLK_MGMNT, 0, 0x1);
+			if (val)
+				printf("\t[0] SEC_BAD_BLK: All data must be erased from defective memory array regions before they are retired from use. SEC_BD_BLK_EN (EXT_CSD[231] bit 2) must be set in order to use this bit\n");
+			else
+				printf("\t[0] SEC_BAD_BLK: Feature disabled\n");
+			return 1;
+
+		/*   EXT_CSD_ENH_START_ADDR */
+		case 139:
+		case 138:
+		case 137:
+		case 136:
+			print_field_caption_with_offset(ENH_START_ADDR,
+				index - EXT_CSD_ENH_START_ADDR, RW);
+			val = get_field_val(ENH_START_ADDR, 0, 0xFF);
+			val = val | get_field_val(ENH_START_ADDR + 1,
+				0, 0xFF) << 8;
+			val = val | get_field_val(ENH_START_ADDR + 2,
+				0, 0xFF) << 16;
+			val = val | get_field_val(ENH_START_ADDR + 3,
+				0, 0xFF) << 24;
+			printf("\tEnhanced User Data Start Address: 0x%x\n",
+				val);
+			return 1;
+
+		/*   EXT_CSD_ENH_SIZE_MULT */
+		case 142:
+		case 141:
+		case 140:
+			print_field_caption_with_offset(ENH_SIZE_MULT,
+				index - EXT_CSD_ENH_SIZE_MULT, RW);
+			val = get_field_val(ENH_SIZE_MULT, 0, 0xFF);
+			val = val | get_field_val(
+				ENH_SIZE_MULT + 1, 0, 0xFF) << 8;
+			val = val | get_field_val(
+				ENH_SIZE_MULT + 2, 0, 0xFF) << 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tEnhanced User Data Area %i Size: %llu B\n",
+					index - EXT_CSD_ENH_SIZE_MULT, tmp64);
+			return 1;
+
+		/*   EXT_CSD_GP_SIZE_MULT_GPX */
+		case 154:
+		case 153:
+		case 152:
+			tmp = index - EXT_CSD_GP_SIZE_MULT;
+			print_field_caption_with_offset(GP_SIZE_MULT,
+				tmp, RW);
+			val = get_field_val_with_index(tmp, 0, 0xFF);
+			val = val | get_field_val_with_index(tmp + 1, 0, 0xFF)
+				<< 8;
+			val = val | get_field_val_with_index(tmp + 2, 0, 0xFF)
+				<< 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
+					index - EXT_CSD_GP_SIZE_MULT, tmp64);
+			return 1;
+		case 151:
+		case 150:
+		case 149:
+			tmp = index - EXT_CSD_GP_SIZE_MULT;
+			print_field_caption_with_offset(GP_SIZE_MULT,
+				tmp, RW);
+			val = get_field_val_with_index(tmp, 0, 0xFF);
+			val = val | get_field_val_with_index(tmp + 1, 0, 0xFF)
+				<< 8;
+			val = val | get_field_val_with_index(tmp + 2, 0, 0xFF)
+				<< 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
+					index - EXT_CSD_GP_SIZE_MULT, tmp64);
+			return 1;
+		case 148:
+		case 147:
+		case 146:
+			tmp = index - EXT_CSD_GP_SIZE_MULT;
+			print_field_caption_with_offset(GP_SIZE_MULT,
+				tmp, RW);
+			val = get_field_val_with_index(tmp, 0, 0xFF);
+			val = val | get_field_val_with_index(tmp + 1, 0, 0xFF)
+				<< 8;
+			val = val | get_field_val_with_index(tmp + 2, 0, 0xFF)
+				<< 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
+					index - EXT_CSD_GP_SIZE_MULT, tmp64);
+			return 1;
+		case 145:
+		case 144:
+		case 143:
+			tmp = index - EXT_CSD_GP_SIZE_MULT;
+			print_field_caption_with_offset(GP_SIZE_MULT,
+				tmp, RW);
+			val = get_field_val_with_index(tmp, 0, 0xFF);
+			val = val | get_field_val_with_index(tmp + 1, 0, 0xFF)
+				<< 8;
+			val = val | get_field_val_with_index(tmp + 2, 0, 0xFF)
+				<< 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
+					index - EXT_CSD_GP_SIZE_MULT, tmp64);
+			return 1;
+
+		case EXT_CSD_PARTITION_SETTING_COMPLETED:
+			print_field_caption(
+				PARTITION_SETTING_COMPLETED, RW);
+			val = get_field_val(PARTITION_SETTING_COMPLETED,
+				0, 0x1);
+			printf("\t[0] PARTITION_SETTING_COMPLETED: %u\n", val);
+			return 1;
+
+		case EXT_CSD_PARTITIONS_ATTRIBUTE:
+			print_field_caption(PARTITIONS_ATTRIBUTE, RW);
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 0, 0x1);
+			if (val)
+				printf("\t[0] ENH_USR: Set Enhanced attribute in User Data Area\n");
+			else
+				printf("\t[0] ENH_USR: Default\n");
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 1, 0x1);
+			if (val)
+				printf("\t[1] ENH_1: Set Enhanced attribute in General Purpose partition 1\n");
+			else
+				printf("\t[1] ENH_1: Default\n");
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 2, 0x1);
+			if (val)
+				printf("\t[2] ENH_2: Set Enhanced attribute in General Purpose partition 2\n");
+			else
+				printf("\t[2] ENH_2: Default\n");
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 3, 0x1);
+			if (val)
+				printf("\t[3] ENH_3: Set Enhanced attribute in General Purpose partition 3\n");
+			else
+				printf("\t[3] ENH_3: Default\n");
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 4, 0x1);
+			if (val)
+				printf("\t[4] ENH_4: Set Enhanced attribute in General Purpose partition 4\n");
+			else
+				printf("\t[4] ENH_4: Default\n");
+			val = get_field_val(PARTITIONS_ATTRIBUTE, 5, 0x1);
+			if (val)
+				printf("\t[5] ENH_5: Set Enhanced attribute in General Purpose partition 5\n");
+			else
+				printf("\t[5] ENH_5: Default\n");
+			return 1;
+
+		/*   EXT_CSD_MAX_ENH_SIZE_MULT */
+		case 159:
+		case 158:
+		case 157:
+			print_field_caption_with_offset(MAX_ENH_SIZE_MULT,
+				index - EXT_CSD_MAX_ENH_SIZE_MULT, R);
+			val = get_field_val(MAX_ENH_SIZE_MULT, 0, 0xFF);
+			val = val | get_field_val(MAX_ENH_SIZE_MULT + 1,
+				0, 0xFF) << 8;
+			val = val | get_field_val(MAX_ENH_SIZE_MULT + 2,
+				0, 0xFF) << 16;
+			tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+			tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0,
+				0xFF);
+			tmp64 = val * tmp * 524288;
+			printf("\tMax Enhanced Area: %llu B\n", tmp64);
+			return 1;
+
+		case EXT_CSD_PARTITIONING_SUPPORT:
+			print_field_caption(PARTITIONING_SUPPORT, R);
+			val = get_field_val(PARTITIONING_SUPPORT, 0,
+				0x1);
+			if (val)
+				printf("\t[0] PARTITIONING_EN: Device supports partitioning features\n");
+			else
+				printf("\t[0] PARTITIONING_EN: obsolete\n");
+			val = get_field_val(PARTITIONING_SUPPORT, 1,
+				0x1);
+			if (val)
+				printf("\t[1] ENH_ATTRIBUTE_EN: Device can have enhanced technological features in partitions and user data area\n");
+			else
+				printf("\t[1] ENH_ATTRIBUTE_EN: obsolete\n");
+			val = get_field_val(PARTITIONING_SUPPORT, 2,
+				0x1);
+			if (val)
+				printf("\t[2] EXT_ATTRIBUTE_EN: Device can have extended partitions attribute\n");
+			else
+				printf("\t[2] EXT_ATTRIBUTE_EN: n/a\n");
+			return 1;
+
+		case EXT_CSD_HPI_MGMT:
+			print_field_caption(HPI_MGMT, R);
+			val = get_field_val(HPI_MGMT, 0, 0xFF);
+			if (val)
+				printf("\t[7-0] HPI_EN: HPI mechanism activated by the host\n");
+			else
+				printf("\t[7-0] HPI_EN: HPI mechanism not activated by the host\n");
+			return 1;
+
+		case EXT_CSD_RST_N_FUNCTION:
+			print_field_caption(RST_N_FUNCTION, R);
+			val = get_field_val(RST_N_FUNCTION, 0, 0x3);
+			switch (val) {
+			case 0x0:
+				printf("\t[1-0] RST_N_ENABLE: RST_n signal is temporarily disabled\n");
+				break;
+			case 0x1:
+				printf("\t[1-0] RST_N_ENABLE: RST_n signal is permanently enabled\n");
+				break;
+			case 0x2:
+				printf("\t[1-0] RST_N_ENABLE: RST_n signal is permanently disabled\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_BKOPS_EN:
+			print_field_caption(BKOPS_EN, RWaRWE);
+			val = get_field_val(BKOPS_EN, 0, 0x1);
+			if (val)
+				printf("\t[0] MANUAL_EN: Host is indicating that it shall periodically write to BKOPS_START field to manually start background operations\n");
+			else
+				printf("\t[0] MANUAL_EN: Host does not support background operations handling and is not expected to write to BKOPS_START field\n");
+			val = get_field_val(BKOPS_EN, 1, 0x1);
+			if (val)
+				printf("\t[1] AUTO_EN: Device may perform background operations while not servicing the host\n");
+			else
+				printf("\t[1] AUTO_EN: Device shall not perform background operations while not servicing the host\n");
+			return 1;
+
+		case EXT_CSD_BKOPS_START:
+			print_field_caption(BKOPS_START, WE_P);
+			printf("\t[7-0] Writing any value to this field shall manually start background operations. Device shall stay busy till no more background operations are needed\n");
+
+			print_field_caption(SANITIZE_START, WE_P);
+			printf("\tWriting any value to this field shall manually start a sanitize operation. Device shall stay busy until sanitize is complete\n");
+			return 1;
+
+		case EXT_CSD_WR_REL_PARAM:
+			print_field_caption(WR_REL_PARAM, R);
+			val = get_field_val(WR_REL_PARAM, 0, 0x1);
+			if (val)
+				printf("\t[0] HS_CTRL_REL: All the WR_DATA_REL parameters in the WR_REL_SET registers are R/W\n");
+			else
+				printf("\t[0] HS_CTRL_REL: obsolete\n");
+			val = get_field_val(WR_REL_PARAM, 2, 0x1);
+			if (val)
+				printf("\t[2] EN_REL_WR: The device supports the enhanced definition of reliable write\n");
+			else
+				printf("\t[2] EN_REL_WR: obsolete\n");
+			val = get_field_val(WR_REL_PARAM, 4, 0x1);
+			if (val)
+				printf("\t[4] EN_RPMB_REL_WR: RPMB transfer size is either 256B (single 512B frame), 512B (two 512B frame), or 8KB (Thirty two 512B frames)\n");
+			else
+				printf("\t[4] EN_RPMB_REL_WR: RPMB transfer size is either 256B (single 512B frame) or 512B (two 512B frame)\n");
+			return 1;
+
+		case EXT_CSD_WR_REL_SET:
+			print_field_caption(WR_REL_SET, RW);
+			val = get_field_val(WR_REL_SET, 0, 0x1);
+			if (val)
+				printf("\t[0] WR_DATA_REL_USR: In the main user area, the device protects previously written data if power failure occurs\n");
+			else
+				printf("\t[0] WR_DATA_REL_USR: In the main user area, write operations have been optimized for performance and existing data could be at risk if a power failure occurs\n");
+			val = get_field_val(WR_REL_SET, 1, 0x1);
+			if (val)
+				printf("\t[1] WR_DATA_REL_1: In general purpose partition 1, the device protects previously written data if power failure occurs\n");
+			else
+				printf("\t[1] WR_DATA_REL_1: In general purpose partition 1, write operations have been optimized for performance and existing data could be at risk if a power failure occurs\n");
+			val = get_field_val(WR_REL_SET, 2, 0x1);
+			if (val)
+				printf("\t[2] WR_DATA_REL_2: In general purpose partition 2, the device protects previously written data if power failure occurs\n");
+			else
+				printf("\t[2] WR_DATA_REL_2: In general purpose partition 2, write operations have been optimized for performance and existing data could be at risk if a power failure occurs\n");
+			val = get_field_val(WR_REL_SET, 3, 0x1);
+			if (val)
+				printf("\t[3] WR_DATA_REL_3: In general purpose partition 3, the device protects previously written data if power failure occurs\n");
+			else
+				printf("\t[3] WR_DATA_REL_3: In general purpose partition 3, write operations have been optimized for performance and existing data could be at risk if a power failure occurs\n");
+			val = get_field_val(WR_REL_SET, 4, 0x1);
+			if (val)
+				printf("\t[4] WR_DATA_REL_4: In general purpose partition 4, the device protects previously written data if power failure occurs\n");
+			else
+				printf("\t[4] WR_DATA_REL_4: In general purpose partition 4, write operations have been optimized for performance and existing data could be at risk if a power failure occurs\n");
+			return 1;
+
+		case EXT_CSD_RPMB_SIZE_MULT:
+			print_field_caption(RPMB_SIZE_MULT, R);
+			val = get_field_val(RPMB_SIZE_MULT, 0, 0xFF);
+			val = val * 131072;
+			printf("\t[7-0] RPMB Partition Size: %u KBytes\n", val);
+			return 1;
+
+		case EXT_CSD_FW_CONFIG:
+			print_field_caption(FW_CONFIG, RW);
+			val = get_field_val(FW_CONFIG, 0, 0x1);
+			if (val)
+				printf("\t[0] Update_Disable: FW update disabled permanently\n");
+			else
+				printf("\t[0] Update_Disable: FW updates enabled\n");
+			return 1;
+
+		case EXT_CSD_USER_WP:
+			print_field_caption(USER_WP, RWaRWC_PaRWE_P);
+			val = get_field_val(USER_WP, 0, 0x1);
+			if (val)
+				printf("\t[0] US_PWR_WP_EN: Apply Power-On Period protection to the protection group indicated by CMD28\n");
+			else
+				printf("\t[0] US_PWR_WP_EN: Power-on write protection is not applied when CMD28 is issued\n");
+			val = get_field_val(USER_WP, 2, 0x1);
+			if (val)
+				printf("\t[2] US_PERM_WP_EN: Apply permanent write protection to the protection group indicated by CMD28\n");
+			else
+				printf("\t[2] US_PERM_WP_EN: Permanent write protection is not applied when CMD28 is issued\n");
+			val = get_field_val(USER_WP, 3, 0x1);
+			if (val)
+				printf("\t[3] US_PWR_WP_DIS: Disable the use of power-on period write protection for write protection groups within all the partitions in the user area from the point this bit is set until power is removed or a hardware reset occurs. Setting this bit does not impact areas that are already protected\n");
+			else
+				printf("\t[3] US_PWR_WP_DIS: Power-on write protection can be applied to write protection groups\n");
+			val = get_field_val(USER_WP, 4, 0x1);
+			if (val)
+				printf("\t[4] US_PERM_WP_DIS: Permanently disable the use of permanent write protection for write protection groups within all the partitions in the user area from the point this bit is set forward. Setting this bit does not impact areas that are already protected\n");
+			else
+				printf("\t[4] US_PERM_WP_DIS: Permanent write protection can be applied to write protection groups\n");
+			val = get_field_val(USER_WP, 6, 0x1);
+			if (val)
+				printf("\t[6] CD_PERM_WP_DIS: DIsable the use of PERM_WRITE_PROTECT (CSD[13])\n");
+			else
+				printf("\t[6] CD_PERM_WP_DIS: Host is permitted to set PERM_WRITE_PROTECT (CSD[13])\n");
+			val = get_field_val(USER_WP, 7, 0x1);
+			if (val)
+				printf("\t[7] PERM_PSWD_DS: Password protection features are disabled permanently\n");
+			else
+				printf("\t[7] PERM_PSWD_DS: Password protection features are enabled\n");
+			return 1;
+
+		case EXT_CSD_BOOT_WP:
+			print_field_caption(BOOT_WP, RWaRWC_P);
+			val = get_field_val(BOOT_WP, 0, 0x1);
+			if (val)
+				printf("\t[0] B_PWR_WP_EN: Enable Power-On Period write protection to the boot area\n");
+			else
+				printf("\t[0] B_PWR_WP_EN: Boot region is not power-on write protected\n");
+			val = get_field_val(BOOT_WP, 1, 0x1);
+			if (val)
+				printf("\t[1] B_PWR_WP_SEC_SEL: B_PWR_WP_EN(Bit 0) applies to boot Area2 only, if B_SEC_WP_SEL (bit 7 is set)\n");
+			else
+				printf("\t[1] B_PWR_WP_SEC_SEL: B_PWR_WP_EN(Bit 0) applies to boot Area1 only, if B_SEC_WP_SEL (bit 7 is set)\n");
+			val = get_field_val(BOOT_WP, 2, 0x1);
+			if (val)
+				printf("\t[2] B_PERM_WP_EN: Boot region is permanently write protected\n");
+			else
+				printf("\t[2] B_PERM_WP_EN: Boot region is not permanently write protected\n");
+			val = get_field_val(BOOT_WP, 3, 0x1);
+			if (val)
+				printf("\t[3] B_PERM_WP_SEC_SEL: B_PERM_WP_EN(Bit 2) applies to boot Area2 only, if B_SEC_WP_SEL (bit 7 is set)\n");
+			else
+				printf("\t[3] B_PERM_WP_SEC_SEL: B_PERM_WP_EN(Bit 2) applies to boot Area1 only, if B_SEC_WP_SEL (bit 7 is set)\n");
+			val = get_field_val(BOOT_WP, 4, 0x1);
+			if (val)
+				printf("\t[4] B_PERM_WP_DIS: Permanently disable the use of B_PERM_WP_EN(bit 2)\n");
+			else
+				printf("\t[4] B_PERM_WP_DIS: Master is permitted to set B_PERM_WP_EN(bit 2)\n");
+			val = get_field_val(BOOT_WP, 6, 0x1);
+			if (val)
+				printf("\t[5] B_PWR_WP_DIS: Disable the use of B_PWR_WP_EN(bit 0)\n");
+			else
+				printf("\t[5] B_PWR_WP_DIS: Master is permitted to set B_PWR_WP_EN(bit 0)\n");
+			val = get_field_val(BOOT_WP, 7, 0x1);
+			if (val)
+				printf("\t[6] B_SEC_WP_SEL: B_PERM_WP_EN(bit2) and B_PWR_WP_EN (bit 0) apply to only boot partition selected by B_PERM_WP_SEC_SEL (bit 3) and B_PWR_WP_SEC_SEL (bit 1) respectively\n");
+			else
+				printf("\t[6] B_SEC_WP_SEL: B_PERM_WP_EN(bit2) and B_PWR_WP_EN (bit 0) apply to both boot partitions and B_PERM_WP_SEC_SEL (bit 3) and B_PWR_WP_SEC_SEL (bit 1) have no impact\n");
+			return 1;
+
+		case EXT_CSD_BOOT_WP_STATUS:
+			print_field_caption(BOOT_WP_STATUS, R);
+			val = get_field_val(BOOT_WP_STATUS, 0, 0x3);
+			switch (val) {
+			case 0x0:
+				printf("\t[1-0] B_AREA_1_WP: Boot Area 1 is not protected\n");
+				break;
+			case 0x1:
+				printf("\t[1-0] B_AREA_1_WP: Boot Area 1 is Power on protected\n");
+				break;
+			case 0x2:
+				printf("\t[1-0] B_AREA_1_WP: Boot Area 1 is Permanently Protected\n");
+				break;
+			}
+			val = get_field_val(BOOT_WP_STATUS, 2, 0x3);
+			switch (val) {
+			case 0x0:
+				printf("\t[3-2] B_AREA_2_WP: Boot Area 2 is not protected\n");
+				break;
+			case 0x1:
+				printf("\t[3-2] B_AREA_2_WP: Boot Area 2 is Power on protected\n");
+				break;
+			case 0x2:
+				printf("\t[3-2] B_AREA_2_WP: Boot Area 2 is Permanently Protected\n");
+				break;
+			}
+			return 1;
+
+		case EXT_CSD_SEC_FEATURE_SUPPORT:
+			print_field_caption(SEC_FEATURE_SUPPORT, R);
+			val = get_field_val(SEC_FEATURE_SUPPORT, 0, 0x1);
+			if (val)
+				printf("\t[0] SECURE_ER_EN: supported\n");
+			else
+				printf("\t[0] SECURE_ER_EN: not supported\n");
+			val = get_field_val(SEC_FEATURE_SUPPORT, 2, 0x1);
+			if (val)
+				printf("\t[1] SEC_BD_BLK_EN: supported\n");
+			else
+				printf("\t[1] SEC_BD_BLK_EN: not supported\n");
+			val = get_field_val(SEC_FEATURE_SUPPORT, 4, 0x1);
+			if (val)
+				printf("\t[4] SEC_GB_CL_EN: supported\n");
+			else
+				printf("\t[4] SEC_GB_CL_EN: not supported\n");
+			val = get_field_val(SEC_FEATURE_SUPPORT, 6, 0x1);
+			if (val)
+				printf("\t[6] SEC_SANITIZE: supported\n");
+			else
+				printf("\t[6] SEC_SANITIZE: not supported\n");
+			return 1;
+
+		case EXT_CSD_TRIM_MULT:
+			print_field_caption(TRIM_MULT, R);
+			val = get_field_val(TRIM_MULT, 0, 0xFF);
+			val = val * 300;
+			printf("\t[7-0] TRIM/DISCARD Time out value: %u\n",
+				val);
+			return 1;
+
+		case EXT_CSD_MIN_PERF_DDR_R_8_52:
+			print_field_caption(MIN_PERF_DDR_R_8_52, R);
+			val = get_field_val(MIN_PERF_DDR_R_8_52, 0, 0xFF);
+			printf("\t[7-0] Minimum Read Performance for 8bit at 52MHz in DDR mode %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_MIN_PERF_DDR_W_8_52:
+			print_field_caption(MIN_PERF_DDR_W_8_52, R);
+			val = get_field_val(MIN_PERF_DDR_W_8_52, 0, 0xFF);
+			printf("\tMinimum Write Performance for 8bit at 52MHz in DDR mode %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_PWR_CL_DDR_52_195:
+			print_field_caption(PWR_CL_DDR_52_195, R);
+			val = get_field_val(PWR_CL_DDR_52_195, 0, 0xFF);
+			printf("\tPower class for 52MHz, DDR at 1.95V %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_PWR_CL_DDR_52_360:
+			print_field_caption(PWR_CL_DDR_52_360, R);
+			val = get_field_val(PWR_CL_DDR_52_360, 0, 0xFF);
+			printf("\tPower class for 52MHz, DDR at 3.6V %#02x\n",
+				val);
+			return 1;
+
+		case EXT_CSD_INI_TIMEOUT_AP:
+			print_field_caption(INI_TIMEOUT_AP, R);
+			val = get_field_val(INI_TIMEOUT_AP, 0, 0xFF);
+			val = val * 100;
+			printf("\tInitialization Time out value: %u ms\n", val);
+			return 1;
+
+		/*   EXT_CSD_CORRECTLY_PRG_SECTORS_NUM */
+		case 245:
+		case 244:
+		case 243:
+		case 242:
+			print_field_caption_with_offset(
+				CORRECTLY_PRG_SECTORS_NUM,
+				index - EXT_CSD_CORRECTLY_PRG_SECTORS_NUM, R);
+			val = get_field_val(CORRECTLY_PRG_SECTORS_NUM, 0, 0xFF);
+			val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 1,
+				0, 0xFF) << 8;
+			val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 2,
+				0, 0xFF) << 16;
+			val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 3,
+				0, 0xFF) << 24;
+			printf("\tNumber of correctly programmed sectors: %u\n",
+				val);
+			return 1;
+
+		case EXT_CSD_BKOPS_STATUS:
+			print_field_caption(BKOPS_STATUS, R);
+			val = get_field_val(BKOPS_STATUS, 0, 0x3);
+			switch (val) {
+			case 0:
+				printf("\t[1-0] No operations required\n");
+				break;
+			case 1:
+				printf("\t[1-0] Operations outstanding (non critical)\n");
+				break;
+			case 2:
+				printf("\t[1-0] Operations outstanding (performance being impacted)\n");
+				break;
+			case 3:
+				printf("\t[1-0] Operations outstanding (critical)\n");
+				break;
+			}
+			return 1;
+
+		}
+	if (rev == 5)
+		switch (index) {
+		case EXT_CSD_SEC_TRIM_MULT:
+			print_field_caption(SEC_TRIM_MULT, R);
+			val = get_field_val(SEC_TRIM_MULT, 0, 0xFF);
+			val = val * 300 * get_field_val(ERASE_TIMEOUT_MULT, 0,
+				0xFF);
+			printf("\tSecure Trim time-out value: %u\n", val);
+			return 1;
+
+		case EXT_CSD_SEC_ERASE_MULT:
+			print_field_caption(SEC_ERASE_MULT, R);
+			val = get_field_val(SEC_ERASE_MULT, 0, 0xFF);
+			val = val * 300 * get_field_val(ERASE_TIMEOUT_MULT, 0,
+				0xFF);
+			printf("\tSecure Erase time-out value: %u\n", val);
+			return 1;
+
+		}
+	switch (index) {
+	case EXT_CSD_ERASE_GROUP_DEF:
+		print_field_caption(ERASE_GROUP_DEF, RWE_P);
+		val = get_field_val(ERASE_GROUP_DEF, 0, 0x1);
+		if (val)
+			printf("\t[0] ENABLE: Use high-capacity erase unit size, high capacity erase timeout, and high-capacity write protect group size definition\n");
+		else
+			printf("\t[0] ENABLE: Use old erase group size and write protect group size definition\n");
+		return 1;
+
+	case EXT_CSD_BOOT_BUS_CONDITIONS:
+		print_field_caption(BOOT_BUS_CONDITIONS, RWE);
+		val = get_field_val(BOOT_BUS_CONDITIONS, 0, 0x3);
+		switch (val) {
+		case 0x0:
+			printf("\t[1-0] BOOT_BUS_WIDTH: x1 (sdr) or x4 (ddr) bus width in boot operation mode\n");
+			break;
+		case 0x1:
+			printf("\t[1-0] BOOT_BUS_WIDTH: x4 (sdr/ddr) bus width in boot operation mode\n");
+			break;
+		case 0x2:
+			printf("\t[1-0] BOOT_BUS_WIDTH: x8 (sdr/ddr) bus width in boot operation mode\n");
+			break;
+		}
+		val = get_field_val(BOOT_BUS_CONDITIONS, 2, 0x1);
+		if (val)
+			printf("\t[2] RESET_BOOT_BUS_CONDITIONS: Reset bus width to x1, single data rate and backward compatible timings after boot operation\n");
+		else
+			printf("\t[2] RESET_BOOT_BUS_CONDITIONS: Retain BOOT_BUS_WIDTH and BOOT_MODE values after boot operation. This is relevant to Push-pull mode operation only\n");
+		val = get_field_val(BOOT_BUS_CONDITIONS, 3, 0x3);
+		switch (val) {
+		case 0x0:
+			printf("\t[3] BOOT_MODE: Use single data rate + backward compatible timings in boot operation\n");
+			break;
+		case 0x1:
+			printf("\t[3] BOOT_MODE: Use single data rate + High Speed timings in boot operation mode\n");
+			break;
+		case 0x2:
+			printf("\t[3] BOOT_MODE: Use dual data rate in boot operation\n");
+			break;
+		}
+		return 1;
+
+	case EXT_CSD_BOOT_CONFIG_PROT:
+		print_field_caption(BOOT_CONFIG_PROT, RWaRWC_P);
+		val = get_field_val(BOOT_CONFIG_PROT, 0, 0x1);
+		printf("\t[0] PWR_BOOT_CONFIG_PROT: %u\n", val);
+		val = get_field_val(BOOT_CONFIG_PROT, 4, 0x1);
+		printf("\t[4] PERM_BOOT_CONFIG_PROT: %u\n", val);
+		return 1;
+
+	case EXT_CSD_PARTITION_CONFIG:
+		print_field_caption(PARTITION_CONFIG, RWEaRWE_P);
+		val = get_field_val(PARTITION_CONFIG, 0, 0x7);
+		switch (val) {
+		case 0x0:
+			printf("\t[2-0] PARTITION_ACCESS: No access to boot partition\n");
+			break;
+		case 0x1:
+			printf("\t[2-0] PARTITION_ACCESS: R/W boot partition 1\n");
+			break;
+		case 0x2:
+			printf("\t[2-0] PARTITION_ACCESS: R/W boot partition 2\n");
+			break;
+		case 0x3:
+			printf("\t[2-0] PARTITION_ACCESS: R/W Replay Protected Memory Block (RPMB)\n");
+			break;
+		case 0x4:
+			printf("\t[2-0] PARTITION_ACCESS: Access to General Purpose partition 1\n");
+			break;
+		case 0x5:
+			printf("\t[2-0] PARTITION_ACCESS: Access to General Purpose partition 2\n");
+			break;
+		case 0x6:
+			printf("\t[2-0] PARTITION_ACCESS: Access to General Purpose partition 3\n");
+			break;
+		case 0x7:
+			printf("\t[2-0] PARTITION_ACCESS: Access to General Purpose partition 4\n");
+			break;
+		}
+		val = get_field_val(PARTITION_CONFIG, 3, 0x7);
+		switch (val) {
+		case 0x0:
+			printf("\t[5-3] BOOT_PARTITION_ENABLE: Device not boot enabled\n");
+			break;
+		case 0x1:
+			printf("\t[5-3] BOOT_PARTITION_ENABLE: Boot partition 1 enabled for boot\n");
+			break;
+		case 0x2:
+			printf("\t[5-3] BOOT_PARTITION_ENABLE: Boot partition 2 enabled for boot\n");
+			break;
+		case 0x7:
+			printf("\t[5-3] BOOT_PARTITION_ENABLE: User area enabled for boot\n");
+			break;
+		}
+		val = get_field_val(PARTITION_CONFIG, 6, 0x1);
+		if (val)
+			printf("\t[6] BOOT_ACK: Boot acknowledge sent during boot operation Bit\n");
+		else
+			printf("\t[6] BOOT_ACK: No boot acknowledge sent\n");
+		return 1;
+
+	case EXT_CSD_ERASED_MEM_CONT:
+		print_field_caption(ERASED_MEM_CONT, R);
+		val = get_field_val(ERASED_MEM_CONT, 0, 0x1);
+		printf("\t[0] Erased Memory Content: %u\n", val);
+		return 1;
+
+	case EXT_CSD_BUS_WIDTH:
+		print_field_caption(BUS_WIDTH, WE_P);
+		val = get_field_val(BUS_WIDTH, 0, 0xF);
+		switch (val) {
+		case 0:
+			printf("\t[3-0] Bus Mode: 1 bit data bus\n");
+			break;
+		case 1:
+			printf("\t[3-0] Bus Mode: 4 bit data bus\n");
+			break;
+		case 2:
+			printf("\t[3-0] Bus Mode: 8 bit data bus\n");
+			break;
+		case 5:
+			printf("\t[3-0] Bus Mode: 4 bit data bus (dual data rate)\n");
+			break;
+		case 6:
+			printf("\t[3-0] Bus Mode: 8 bit data bus (dual data rate)\n");
+			break;
+		}
+		val = get_field_val(BUS_WIDTH, 7, 0x1);
+		if (val)
+			printf("\t[7] Strobe is provided during Data Out, CRC response and CMD Response\n");
+		else
+			printf("\t[7] Strobe is provided only during Data Out and CRC response\n");
+		return 1;
+
+	case EXT_CSD_STROBE_SUPPORT:
+		print_field_caption(STROBE_SUPPORT, R);
+		val = get_field_val(STROBE_SUPPORT, 0, 0x1);
+		if (val)
+			printf("\t[0] Enhanced Strobe mode: supported\n");
+		else
+			printf("\t[0] Enhanced Strobe mode: not supported\n");
+		return 1;
+
+	case EXT_CSD_HS_TIMING:
+		print_field_caption(HS_TIMING, RWE_P);
+		val = get_field_val(HS_TIMING, 0, 0xF);
+		switch (val) {
+		case 0x0:
+			printf("\t[3-0] Timing Interface: Selecting backwards compatibility interface timing\n");
+			break;
+		case 0x1:
+			printf("\t[3-0] Timing Interface: High Speed\n");
+			break;
+		case 0x2:
+			printf("\t[3-0] Timing Interface: HS200\n");
+			break;
+		case 0x3:
+			printf("\t[3-0] Timing Interface: HS400\n");
+			break;
+		}
+		return 1;
+
+	case EXT_CSD_POWER_CLASS:
+		print_field_caption(POWER_CLASS, RWE_P);
+		val = get_field_val(POWER_CLASS, 0, 0xFF);
+		printf("\t[7-0] Device power class code: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_CMD_SET_REV:
+		print_field_caption(CMD_SET_REV, R);
+		val = get_field_val(CMD_SET_REV, 0, 0xFF);
+		printf("\t[7-0] Command set revisions: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_CMD_SET:
+		print_field_caption(CMD_SET, RWE_P);
+		val = get_field_val(CMD_SET, 0, 0xFF);
+		printf("\t[7-0] Command set that is currently active in the Device: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_REV:
+		print_field_caption(REV, R);
+		val = get_field_val(REV, 0, 0x1F);
+		switch (val) {
+		case 0:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.0 (for MMC v4.0)\n");
+			break;
+		case 1:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.1 (for MMC v4.1)\n");
+			break;
+		case 2:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.2 (for MMC v4.2)\n");
+			break;
+		case 3:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.3 (for MMC v4.3)\n");
+			break;
+		case 4:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.4 (Obsolete)\n");
+			break;
+		case 5:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.5 (for MMC v4.41)\n");
+			break;
+		case 6:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.6 (for MMC v4.5, v4.51)\n");
+			break;
+		case 7:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.7 (for MMC v5.0, v5.01)\n");
+			break;
+		case 8:
+			printf("\t[4-0] Extended CSD Revision: Revision 1.8 (for MMC v5.1)\n");
+			break;
+		}
+		return 1;
+
+	case EXT_CSD_CSD_STRUCTURE:
+		print_field_caption(CSD_STRUCTURE, R);
+		val = get_field_val(CSD_STRUCTURE, 0, 0x3);
+		switch (val) {
+		case 0x0:
+			printf("\[1-0] tCSD structure version: CSD version No. 1.0\n");
+			break;
+		case 0x1:
+			printf("\t[1-0] CSD structure version: CSD version No. 1.1\n");
+			break;
+		case 0x2:
+			printf("\t[1-0] CSD structure version: CSD version No. 1.2\n");
+			break;
+		}
+		return 1;
+
+	case EXT_CSD_DEVICE_TYPE:
+		print_field_caption(DEVICE_TYPE, R);
+		val = get_field_val(DEVICE_TYPE, 0, 0xFF);
+		printf("%u", val);
+		switch (val) {
+		case 0x1:
+			printf("\tHS eMMC @26MHz - at rated device voltage(s)\n");
+			break;
+		case 0x2:
+			printf("\tHS eMMC @52MHz - at rated device voltage(s)\n");
+			break;
+		case 0x4:
+			printf("\tHS Dual Data Rate eMMC @52MHz 1.8V or 3VI/O\n");
+			break;
+		case 0x8:
+			printf("\tHS Dual Data Rate eMMC @52MHz 1.2VI/O\n");
+			break;
+		case 0x10:
+			printf("\tHS200 Single Data Rate eMMC @200MHz 1.8VI/O\n");
+			break;
+		case 0x20:
+			printf("\tHS200 Single Data Rate eMMC @200MHz 1.2VI/O\n");
+			break;
+		}
+		return 1;
+
+		/* TODO missing JEDEC documention */
+	case EXT_CSD_PWR_CL_52_195:
+		print_field_caption(PWR_CL_52_195, R)
+		val = get_field_val(PWR_CL_52_195, 0, 0xFF);
+		printf("\tPower class for 52 MHz at 1.95 V 1 R: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_PWR_CL_26_195:
+		print_field_caption(PWR_CL_26_195, R)
+		val = get_field_val(PWR_CL_26_195, 0, 0xFF);
+		printf("\tPower class for 26 MHz at 1.95 V 1 R: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_PWR_CL_52_360:
+		print_field_caption(PWR_CL_52_360, R)
+		val = get_field_val(PWR_CL_52_360, 0, 0xFF);
+		printf("\tPower class for 52 MHz at 3.6 V 1 R: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_PWR_CL_26_360:
+		print_field_caption(PWR_CL_26_360, R)
+		val = get_field_val(PWR_CL_26_360, 0, 0xFF);
+		printf("\tPower class for 26 MHz at 3.6 V 1 R: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_R_4_26:
+		print_field_caption(MIN_PERF_R_4_26, R)
+		val = get_field_val(MIN_PERF_R_4_26, 0, 0xFF);
+		printf("\tMinimum Read Performance for 4bit at 26 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_W_4_26:
+		print_field_caption(MIN_PERF_W_4_26, R)
+		val = get_field_val(MIN_PERF_W_4_26, 0, 0xFF);
+		printf("\tMinimum Write Performance for 4bit at 26 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_R_8_26_4_52:
+		print_field_caption(MIN_PERF_R_8_26_4_52, R)
+		val = get_field_val(MIN_PERF_R_8_26_4_52, 0, 0xFF);
+		printf("\tMinimum Read Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_W_8_26_4_52:
+		print_field_caption(MIN_PERF_W_8_26_4_52, R)
+		val = get_field_val(MIN_PERF_W_8_26_4_52, 0, 0xFF);
+		printf("\tMinimum Write Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_R_8_52:
+		print_field_caption(MIN_PERF_R_8_52, R)
+		val = get_field_val(MIN_PERF_R_8_52, 0, 0xFF);
+		printf("\tMinimum Read Performance for 8bit at 52 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_W_8_52:
+		print_field_caption(MIN_PERF_W_8_52, R)
+		val = get_field_val(MIN_PERF_W_8_52, 0, 0xFF);
+		printf("\tMinimum Write Performance for 8bit at52 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_SECURE_WP_INFO:
+		print_field_caption(SECURE_WP_INFO, R);
+		val = get_field_val(SECURE_WP_INFO, 0, 0x1);
+		if (val)
+			printf("\t[0] SECURE_WP_SUPPORT: supported\n");
+		else
+			printf("\t[0] SECURE_WP_SUPPORT: not supported\n");
+		val = get_field_val(SECURE_WP_INFO, 1, 0x1);
+		if (val)
+			printf("\t[1] SECURE_WP_EN_STATUS: Secure Write Protection mode\n");
+		else
+			printf("\t[1] SECURE_WP_EN_STATUS: Legacy Write Protection mode\n");
+		return 1;
+
+	/*   EXT_CSD_SEC_COUNT */
+	case 215:
+	case 214:
+	case 213:
+	case 212:
+		print_field_caption_with_offset(SEC_COUNT,
+			index - EXT_CSD_SEC_COUNT, R);
+		val = get_field_val(SEC_COUNT, 0, 0xFF);
+		val = val | get_field_val(SEC_COUNT + 1, 0, 0xFF) << 8;
+		val = val | get_field_val(SEC_COUNT + 2, 0, 0xFF) << 16;
+		val = val | get_field_val(SEC_COUNT + 3, 0, 0xFF) << 24;
+		tmp64 = val * 512;
+		printf("\tDevice density: %llu B\n", tmp64);
+		return 1;
+
+	case EXT_CSD_SLEEP_NOTIFICATION_TIME:
+		print_field_caption(SLEEP_NOTIFICATION_TIME, R);
+		val = get_field_val(SLEEP_NOTIFICATION_TIME, 0, 0xFF);
+		val = 100 << val;
+		if (val)
+			printf("\t[7-0] Sleep Notification timeout values: %u us\n",
+				val);
+		else
+			printf("\t[7-0] Not Defined\n");
+		return 1;
+
+	case EXT_CSD_S_A_TIMEOUT:
+		print_field_caption(S_A_TIMEOUT, R);
+		val = get_field_val(S_A_TIMEOUT, 0, 0xFF);
+		val = 100 << val;
+		if (val)
+			printf("\t[7-0] Sleep/awake timeout values: %u ns\n",
+				val);
+		else
+			printf("\t[7-0] Not Defined\n");
+		return 1;
+
+	case EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT:
+		print_field_caption(PRODUCTION_ST8_AWARENSS_TIMEOUT, R);
+		val = get_field_val(PRODUCTION_ST8_AWARENSS_TIMEOUT, 0, 0xFF);
+		val = 100 << val;
+		if (val)
+			printf("\t[7-0] Production State Awareness timeout definition: %u us\n",
+				val);
+		else
+			printf("\t[7-0] Not Defined\n");
+		return 1;
+
+	case EXT_CSD_S_C_VCCQ:
+		print_field_caption(S_C_VCCQ, R);
+		val = get_field_val(S_C_VCCQ, 0, 0xF);
+		val = 1 << val;
+		if (val)
+			printf("\t[3-0] S_C_VCCQ Sleep Current: %u uA\n", val);
+		else
+			printf("\t[3-0] Not Defined\n");
+		return 1;
+
+	case EXT_CSD_S_C_VCC:
+		print_field_caption(S_C_VCC, R);
+		val = get_field_val(S_C_VCC, 0, 0xFF);
+		val = 1 << val;
+		if (val)
+			printf("\t[3-0] S_C_VCC Sleep Current: %u uA\n", val);
+		else
+			printf("\t[3-0] Not Defined\n");
+		return 1;
+
+	case EXT_CSD_HC_WP_GRP_SIZE:
+		print_field_caption(HC_WP_GRP_SIZE, R);
+		val = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
+		if (val)
+			printf("\t[7-0] Write protect group size: %u\n", val);
+		else
+			printf("\t[7-0] No support for high-capacity write protect group size\n");
+		return 1;
+
+	case EXT_CSD_REL_WR_SEC_C:
+		print_field_caption(REL_WR_SEC_C, R);
+		val = get_field_val(REL_WR_SEC_C, 0, 0xFF);
+		printf("\t[7-0] Reliable Write Sector Count: %u\n", val);
+		return 1;
+
+	case EXT_CSD_ERASE_TIMEOUT_MULT:
+		print_field_caption(ERASE_TIMEOUT_MULT, R);
+		val = get_field_val(ERASE_TIMEOUT_MULT, 0, 0xFF);
+		val = val * 300;
+		if (val)
+			printf("\t[7-0] Erase timeout values: %u\n", val);
+		else
+			printf("\t[7-0] No support for high-capacity erase timeout\n");
+		return 1;
+
+	case EXT_CSD_HC_ERASE_GRP_SIZE:
+		print_field_caption(HC_ERASE_GRP_SIZE, R);
+		val = get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+		val = val * 524288;
+		if (val)
+			printf("\t[7-0] Erase-unit size: %u\n", val);
+		else
+			printf("\t[7-0] No support for high-capacity erase-unit size\n");
+		return 1;
+
+	case EXT_CSD_ACC_SIZE:
+		print_field_caption(ACC_SIZE, R);
+		val = get_field_val(ACC_SIZE, 0, 0xF);
+		val = val * 512;
+		if (val)
+			printf("\t[3-0] Superpage size: %u\n", val);
+		else
+			printf("\t[3-0] Not defined\n");
+		return 1;
+
+	case EXT_CSD_BOOT_SIZE_MULT:
+		print_field_caption(BOOT_SIZE_MULT, R);
+		val = get_field_val(BOOT_SIZE_MULT, 0, 0xFF);
+		val = val * 131072;
+		printf("\tBoot partition size: %u\n", val);
+		return 1;
+
+	case EXT_CSD_BOOT_INFO:
+		print_field_caption(BOOT_INFO, R);
+		val = get_field_val(BOOT_INFO, 0, 0x1);
+		if (val)
+			printf("\t[0] ALT_BOOT_MODE: supported\n");
+		else
+			printf("\t[0] ALT_BOOT_MODE: not supported\n");
+		val = get_field_val(BOOT_INFO, 1, 0x1);
+		if (val)
+			printf("\t[1] DDR_BOOT_MODE: supported\n");
+		else
+			printf("\t[1] DDR_BOOT_MODE: not supported\n");
+		val = get_field_val(BOOT_INFO, 2, 0x1);
+		if (val)
+			printf("\t[2] HS_BOOT_MODE: supported\n");
+		else
+			printf("\t[2] HS_BOOT_MODE: not supported\n");
+		return 1;
+
+	case EXT_CSD_BKOPS_SUPPORT:
+		print_field_caption(BKOPS_SUPPORT, R);
+		val = get_field_val(BKOPS_SUPPORT, 0, 0x1);
+		printf("\t[0] SUPPORTED: %u\n", val);
+		return 1;
+
+	case EXT_CSD_HPI_FEATURES:
+		print_field_caption(HPI_FEATURES, R);
+		val = get_field_val(HPI_FEATURES, 0, 0x1);
+		printf("\t[0] HPI_SUPPORTED: %u\n", val);
+		val = get_field_val(HPI_FEATURES, 1, 0x1);
+		if (val)
+			printf("\t[1] HPI_FEATURES: implementation based on CMD12\n");
+		else
+			printf("\t[1] HPI_FEATURES: implementation based on CMD13\n");
+		return 1;
+
+	case EXT_CSD_S_CMD_SET:
+		print_field_caption(S_CMD_SET, R);
+		val = get_field_val(S_CMD_SET, 0, 0xFF);
+		printf("\t[7-0] Command Set: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_EXT_SECURITY_ERR:
+		print_field_caption(EXT_SECURITY_ERR, R);
+		val = get_field_val(EXT_SECURITY_ERR, 0, 0x1);
+		printf("\t[0] SEC_INVALID_COMMAND_PARAMETERS: %u\n", val);
+		val = get_field_val(EXT_SECURITY_ERR, 1, 0x1);
+		printf("\t[1] ACCESS_DENIED: %u\n", val);
+		return 1;
+
+	}
+
+	return 0;
+}
+
+static void print_register_raw(u8 *reg, int index)
+{
+	int i;
+
+	if (index == 0)
+		for (i = 0; i < EXT_CSD_BLOCKSIZE; i++) {
+			if (i % 8 == 0)
+				printf("%u:", i);
+			printf(" %#02x", reg[i]);
+			if (i % 8 == 7)
+				printf("\n");
+		}
+	else
+		printf("%u: %#02x\n", index, reg[index]);
+}
+
+static void print_register_readable(u8 *reg, int index)
+{
+	int i;
+
+	if (index == 0)
+		for (i = 0; i < EXT_CSD_BLOCKSIZE; i++)
+			print_field(reg, i);
+	else
+		if (!print_field(reg, index))
+			printf("No field with this index found\n");
+
+	print_access_type_key();
+}
+
+static int request_write_operation(void)
+{
+	int c;
+
+	printf("This is a one time programmable field!\nDo you want to write? [y/N] ");
+	c = getc();
+	/* default is N */
+	if (c == 0xD) {
+		printf("\n");
+		return 0;
+	}
+	printf("%c", c);
+	getc(); /* wait for carriage return */
+	printf("\n");
+	if (c == 'y' || c == 'Y')
+		return 1;
+	return 0;
+}
+
+static void write_field(struct mci *mci, u8 *reg, u16 index, u8 value,
+				int always_write)
+{
+
+	switch (index) {
+	case EXT_CSD_BOOT_CONFIG_PROT:
+	case EXT_CSD_BOOT_WP:
+	case EXT_CSD_USER_WP:
+	case EXT_CSD_FW_CONFIG:
+	case EXT_CSD_WR_REL_SET:
+	case EXT_CSD_BKOPS_EN:
+	case EXT_CSD_RST_N_FUNCTION:
+	case EXT_CSD_PARTITIONS_ATTRIBUTE:
+	case EXT_CSD_PARTITION_SETTING_COMPLETED:
+	/*   EXT_CSD_GP_SIZE_MULT */
+	case 154:
+	case 153:
+	case 152:
+	case 151:
+	case 150:
+	case 149:
+	case 148:
+	case 147:
+	case 146:
+	case 145:
+	case 144:
+	case 143:
+	/*   EXT_CSD_ENH_SIZE_MULT */
+	case 142:
+	case 141:
+	case 140:
+	/*   EXT_CSD_ENH_START_ADDR */
+	case 139:
+	case 138:
+	case 137:
+	case 136:
+	case EXT_CSD_SEC_BAD_BLK_MGMNT:
+	case EXT_CSD_USE_NATIVE_SECTOR:
+	/*   EXT_CSD_EXT_PARTITIONS_ATTRIBUTE */
+	case 53:
+	case 52:
+	case EXT_CSD_BARRIER_CTRL:
+	case EXT_CSD_SECURE_REMOVAL_TYPE:
+		if (!always_write)
+			if (request_write_operation() == 0) {
+				printf("Abort write operation!\n");
+				goto out;
+			}
+		break;
+	}
+
+	mci_switch(mci, 0, index, value);
+
+out:
+	return;
+}
+
+static int do_extcsd(int argc, char *argv[])
+{
+	struct device_d		*dev;
+	struct mci		*mci;
+	struct mci_host		*host;
+	u8			*dst;
+	int			retval = 0;
+	int			opt;
+	char			*devname;
+	int			index = 0;
+	int			value = 0;
+	int			write_operation = 0;
+	int			always_write = 0;
+	int			print_as_raw = 0;
+
+	if (argv[1] == NULL)
+		return COMMAND_ERROR_USAGE;
+
+	devname = argv[1];
+	if (!strncmp(devname, "/dev/", 5))
+		devname += 5;
+
+	while ((opt = getopt(argc, argv, "i:v:yr")) > 0)
+		switch (opt) {
+		case 'i':
+			index = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'v':
+			value = simple_strtoul(optarg, NULL, 0);
+			write_operation = 1;
+			break;
+		case 'y':
+			always_write = 1;
+			break;
+		case 'r':
+			print_as_raw = 1;
+			break;
+		}
+
+	dev = get_device_by_name(devname);
+	if (dev == NULL) {
+		retval = -ENODEV;
+		goto error;
+	}
+	mci = container_of(dev, struct mci, dev);
+	if (mci == NULL) {
+		retval = -ENOENT;
+		goto error;
+	}
+	host = mci->host;
+	if (host == NULL) {
+		retval = -ENOENT;
+		goto error;
+	}
+	dst = xmalloc(sizeof(*dst) * EXT_CSD_BLOCKSIZE);
+	if (dst == NULL) {
+		retval = -ENOMEM;
+		goto error;
+	}
+
+	retval = mci_send_ext_csd(mci, dst);
+	if (retval != 0)
+		goto error_with_mem;
+
+	if (dst[EXT_CSD_REV] < 3) {
+		printf("MMC version 4.2 or lower are not supported");
+		retval = 1;
+		goto error_with_mem;
+	}
+
+	if (write_operation)
+		if (!print_field(dst, index)) {
+			printf("No field with this index found. Abort write operation!\n");
+		} else {
+			write_field(mci, dst, index, value, always_write);
+			printf("\nValue written!\n\n");
+			retval = mci_send_ext_csd(mci, dst);
+			if (retval != 0)
+				goto error_with_mem;
+			print_field(dst, index);
+		}
+	else
+		if (print_as_raw)
+			print_register_raw(dst, index);
+		else
+			print_register_readable(dst, index);
+
+error_with_mem:
+	free(dst);
+error:
+	return retval;
+}
+
+BAREBOX_CMD_HELP_START(extcsd)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-i", "field index of the register")
+BAREBOX_CMD_HELP_OPT("-r", "print the register as raw data")
+BAREBOX_CMD_HELP_OPT("-v", "value which will be written")
+BAREBOX_CMD_HELP_OPT("-y", "don't request when writing to one time programmable fields")
+BAREBOX_CMD_HELP_OPT("",   "__CAUTION__: this could damage the device!")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(extcsd)
+	.cmd		= do_extcsd,
+	BAREBOX_CMD_DESC("Read/write the extended CSD register.")
+	BAREBOX_CMD_OPTS("dev [-r | -i index [-r | -v value [-y]]]")
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+	BAREBOX_CMD_HELP(cmd_extcsd_help)
+BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
