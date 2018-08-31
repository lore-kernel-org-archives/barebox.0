Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvboV-0000zr-O3
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:17:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id 2-v6so4391539pgo.4
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:17:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:17:25 -0700
Message-Id: <20180831051725.12351-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/5] mfd: rave-sp: Emulate CMD_GET_STATUS on device that don't
 support it
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CMD_GET_STATUS is not supported by some devices implementing
RDU2-compatible ICD as well as "legacy" devices. To account for that
fact, add code that obtains the same information (app/bootloader FW
version) using several different commands.

This is a backport of Linux kernel patch [1]

[1] https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#md1b7130a992235d57cabadc8e59fc74ee3b21d9e

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 100 ++++++++++++++++++++++++++++--------------
 1 file changed, 66 insertions(+), 34 deletions(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 96f69cc09..469ce4cc0 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -112,13 +112,46 @@ struct rave_sp_checksum {
 	void (*subroutine)(const u8 *, size_t, u8 *);
 };
 
+struct rave_sp_version {
+	u8     hardware;
+	__le16 major;
+	u8     minor;
+	u8     letter[2];
+} __packed;
+
+struct rave_sp_status {
+	struct rave_sp_version bootloader_version;
+	struct rave_sp_version firmware_version;
+	u16 rdu_eeprom_flag;
+	u16 dds_eeprom_flag;
+	u8  pic_flag;
+	u8  orientation;
+	u32 etc;
+	s16 temp[2];
+	u8  backlight_current[3];
+	u8  dip_switch;
+	u8  host_interrupt;
+	u16 voltage_28;
+	u8  i2c_device_status;
+	u8  power_status;
+	u8  general_status;
+#define RAVE_SP_STATUS_GS_FIRMWARE_MODE	BIT(1)
+
+	u8  deprecated1;
+	u8  power_led_status;
+	u8  deprecated2;
+	u8  periph_power_shutoff;
+} __packed;
+
 /**
  * struct rave_sp_variant_cmds - Variant specific command routines
  *
  * @translate:	Generic to variant specific command mapping routine
+ * @get_status: Variant specific implementation of CMD_GET_STATUS
  */
 struct rave_sp_variant_cmds {
 	int (*translate)(enum rave_sp_command);
+	int (*get_status)(struct rave_sp *sp, struct rave_sp_status *);
 };
 
 /**
@@ -161,37 +194,6 @@ struct rave_sp {
 	const char *part_number_bootloader;
 };
 
-struct rave_sp_version {
-	u8     hardware;
-	__le16 major;
-	u8     minor;
-	u8     letter[2];
-} __packed;
-
-struct rave_sp_status {
-	struct rave_sp_version bootloader_version;
-	struct rave_sp_version firmware_version;
-	u16 rdu_eeprom_flag;
-	u16 dds_eeprom_flag;
-	u8  pic_flag;
-	u8  orientation;
-	u32 etc;
-	s16 temp[2];
-	u8  backlight_current[3];
-	u8  dip_switch;
-	u8  host_interrupt;
-	u16 voltage_28;
-	u8  i2c_device_status;
-	u8  power_status;
-	u8  general_status;
-#define RAVE_SP_STATUS_GS_FIRMWARE_MODE	BIT(1)
-
-	u8  deprecated1;
-	u8  power_led_status;
-	u8  deprecated2;
-	u8  periph_power_shutoff;
-} __packed;
-
 static bool rave_sp_id_is_event(u8 code)
 {
 	return (code & 0xF0) == RAVE_SP_EVNT_BASE;
@@ -617,18 +619,45 @@ static const char *devm_rave_sp_version(struct device_d *dev,
 			version->letter[1]);
 }
 
-static int rave_sp_get_status(struct rave_sp *sp)
+
+static int rave_sp_rdu1_get_status(struct rave_sp *sp,
+				   struct rave_sp_status *status)
 {
-	struct device_d *dev = sp->serdev->dev;
 	u8 cmd[] = {
 		[0] = RAVE_SP_CMD_STATUS,
 		[1] = 0
 	};
+
+	return rave_sp_exec(sp, cmd, sizeof(cmd), status, sizeof(*status));
+}
+
+static int rave_sp_emulated_get_status(struct rave_sp *sp,
+				       struct rave_sp_status *status)
+{
+	u8 cmd[] = {
+		[0] = RAVE_SP_CMD_GET_FIRMWARE_VERSION,
+		[1] = 0,
+	};
+	int ret;
+
+	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status->firmware_version,
+			   sizeof(status->firmware_version));
+	if (ret)
+		return ret;
+
+	cmd[0] = RAVE_SP_CMD_GET_BOOTLOADER_VERSION;
+	return rave_sp_exec(sp, cmd, sizeof(cmd), &status->bootloader_version,
+			    sizeof(status->bootloader_version));
+}
+
+static int rave_sp_get_status(struct rave_sp *sp)
+{
+	struct device_d *dev = sp->serdev->dev;
 	struct rave_sp_status status;
 	const char *mode;
 	int ret;
 
-	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status, sizeof(status));
+	ret = sp->variant->cmd.get_status(sp, &status);
 	if (ret)
 		return ret;
 
@@ -660,6 +689,7 @@ static const struct rave_sp_variant rave_sp_legacy = {
 	.checksum = &rave_sp_checksum_ccitt,
 	.cmd = {
 		.translate = rave_sp_default_cmd_translate,
+		.get_status = rave_sp_emulated_get_status,
 	},
 };
 
@@ -667,6 +697,7 @@ static const struct rave_sp_variant rave_sp_rdu1 = {
 	.checksum = &rave_sp_checksum_8b2c,
 	.cmd = {
 		.translate = rave_sp_rdu1_cmd_translate,
+		.get_status = rave_sp_rdu1_get_status,
 	},
 };
 
@@ -674,6 +705,7 @@ static const struct rave_sp_variant rave_sp_rdu2 = {
 	.checksum = &rave_sp_checksum_ccitt,
 	.cmd = {
 		.translate = rave_sp_rdu2_cmd_translate,
+		.get_status = rave_sp_emulated_get_status,
 	},
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
