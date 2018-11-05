Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJjgR-0006Bz-Mi
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 18:33:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id b11-v6so4836670pfi.5
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 10:33:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Nov 2018 10:32:22 -0800
Message-Id: <20181105183222.25637-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181105183222.25637-1-andrew.smirnov@gmail.com>
References: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] ARM: rdu1: Implement RDU1 config loading
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RDU1 stores various configuration parameters, including FEC's MAC
address, in a configuration blob that can be located in on of three
places: SPI NOR, RAVE SP EEPROM or Microwire EEPROM.

This patch add an initcall to load those configuration variables from
a valid source (CRC8 checked) as well as expose then as "config_<var>"
environment variables.

This patch also adds appropriate code to register MAC address obtained
from config blob.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/board.c | 179 +++++++++++++++++++++++++
 arch/arm/dts/imx51-zii-rdu1.dts        |   7 +
 arch/arm/mach-imx/Kconfig              |   1 +
 3 files changed, 187 insertions(+)

diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index 46368cccc..f739f3b7b 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -17,9 +17,16 @@
 
 #include <common.h>
 #include <init.h>
+#include <environment.h>
 #include <mach/bbu.h>
 #include <libfile.h>
 #include <mach/imx5.h>
+#include <net.h>
+#include <linux/crc8.h>
+#include <linux/sizes.h>
+#include <linux/nvmem-consumer.h>
+
+#include <envfs.h>
 
 static int zii_rdu1_init(void)
 {
@@ -45,3 +52,175 @@ static int zii_rdu1_init(void)
 	return 0;
 }
 coredevice_initcall(zii_rdu1_init);
+
+#define KEY		0
+#define VALUE		1
+#define STRINGS_NUM	2
+
+static int zii_rdu1_load_config(void)
+{
+	struct device_node *np, *root;
+	size_t len, remaining_space;
+	const uint8_t crc8_polynomial = 0x8c;
+	DECLARE_CRC8_TABLE(crc8_table);
+	const char *cursor, *end;
+	const char *file = "/dev/dataflash0.config";
+	uint8_t *config;
+	int ret = 0;
+	enum {
+		BLOB_SPINOR,
+		BLOB_RAVE_SP_EEPROM,
+		BLOB_MICROWIRE,
+	} blob;
+
+	if (!of_machine_is_compatible("zii,imx51-rdu1"))
+		return 0;
+
+	crc8_populate_lsb(crc8_table, crc8_polynomial);
+
+	for (blob = BLOB_SPINOR; blob <= BLOB_MICROWIRE; blob++) {
+		switch (blob) {
+		case BLOB_MICROWIRE:
+			file = "/dev/microwire-eeprom";
+			/* FALLTHROUGH */
+		case BLOB_SPINOR:
+			config = read_file(file, &remaining_space);
+			if (!config) {
+				pr_err("Failed to read %s\n", file);
+				return -EIO;
+			}
+			break;
+		case BLOB_RAVE_SP_EEPROM:
+			/* Needed for error logging below */
+			file = "shadow copy in RAVE SP EEPROM";
+
+			root = of_get_root_node();
+			np   = of_find_node_by_name(root, "eeprom@a4");
+			if (!np)
+				return -ENODEV;
+
+			pr_info("Loading %s, this may take a while\n", file);
+
+			remaining_space = SZ_1K;
+			config = nvmem_cell_get_and_read(np, "shadow-config",
+							 remaining_space);
+			if (IS_ERR(config))
+				return PTR_ERR(config);
+
+			break;
+		}
+
+		/*
+		 * The environment blob has its CRC8 stored as the
+		 * last byte of the blob, so calculating CRC8 over the
+		 * whole things should return 0
+		 */
+		if (crc8(crc8_table, config, remaining_space, 0)) {
+			pr_err("CRC mismatch for %s\n", file);
+			free(config);
+			config = NULL;
+		} else {
+			/*
+			 * We are done if there's a blob with a valid
+			 * CRC8
+			 */
+			break;
+		}
+	}
+
+	if (!config) {
+		pr_err("No valid config blobs were found\n");
+		ret = -EINVAL;
+		goto free_config;
+	}
+
+	/*
+	 * Last byte is CRC8, so it is of no use for our parsing
+	 * algorithm
+	 */
+	remaining_space--;
+
+	cursor = config;
+	end = cursor + remaining_space;
+
+	/*
+	 * The environemnt is stored a a bunch of zero-terminated
+	 * ASCII strings in "key":"value" pairs
+	 */
+	while (cursor < end) {
+		const char *strings[STRINGS_NUM] = { NULL, NULL };
+		char *key;
+		unsigned int i;
+
+		for (i = 0; i < ARRAY_SIZE(strings); i++) {
+			if (!*cursor) {
+				/* We assume that last key:value pair
+				 * will be terminated by an extra '\0'
+				 * at the end */
+				goto free_config;
+			}
+
+			len = strnlen(cursor, remaining_space);
+			if (len >= remaining_space) {
+				ret = -EOVERFLOW;
+				goto free_config;
+			}
+
+			strings[i] = cursor;
+
+			len++;	/* Account for '\0' at the end of the string */
+			cursor += len;
+			remaining_space -= len;
+
+			if (cursor > end) {
+				ret = -EOVERFLOW;
+				goto free_config;
+			}
+		}
+
+		key = basprintf("config_%s", strings[KEY]);
+		ret = setenv(key, strings[VALUE]);
+		free(key);
+
+		if (ret)
+			goto free_config;
+	}
+
+free_config:
+	free(config);
+	return ret;
+}
+late_initcall(zii_rdu1_load_config);
+
+static int zii_rdu1_ethernet_init(void)
+{
+	const char *mac_string;
+	struct device_node *np, *root;
+	uint8_t mac[ETH_ALEN];
+	int ret;
+
+	if (!of_machine_is_compatible("zii,imx51-rdu1"))
+		return 0;
+
+	root = of_get_root_node();
+
+	np = of_find_node_by_alias(root, "ethernet0");
+	if (!np) {
+		pr_warn("Failed to find ethernet0\n");
+		return -ENOENT;
+	}
+
+	mac_string = getenv("config_mac");
+	if (!mac_string)
+		return -ENOENT;
+
+	ret = string_to_ethaddr(mac_string, mac);
+	if (ret < 0)
+		return ret;
+
+	of_eth_register_ethaddr(np, mac);
+	return 0;
+}
+/* This needs to happen only after zii_rdu1_load_config was
+ * executed */
+environment_initcall(zii_rdu1_ethernet_init);
diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index b5744dac1..01e46baf2 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -77,9 +77,16 @@
 		};
 
 		eeprom@a4 {
+			nvmem-cells = <&shadow_config>;
+			nvmem-cell-names = "shadow-config";
+
 			boot_source: boot-source@83 {
 				reg = <0x83 1>;
 			};
+
+			shadow_config: shadow-config@1000 {
+				reg = <0x1000 0x400>;
+			};
 		};
 	};
 };
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c0788e7d9..c0a4cc1c8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -425,6 +425,7 @@ config MACH_ZII_RDU1
 	bool "ZII i.MX51 RDU1"
 	select ARCH_IMX51
 	select MACH_FREESCALE_MX51_PDK_POWER
+	select CRC8
 
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
