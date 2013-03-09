Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f52.google.com ([74.125.82.52])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4N-0005UY-2F
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:56 +0000
Received: by mail-wg0-f52.google.com with SMTP id 12so3860984wgh.7
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:49 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:41 +0100
Message-Id: <1362871182-25726-9-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 8/9] archos: add atag appender for all features
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/archos_features.c | 414 ++++++++++++++++++++++++++---
 arch/arm/boards/archosg9/archos_features.h |  39 +++
 2 files changed, 412 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c
index 5d93403..4b0265e 100644
--- a/arch/arm/boards/archosg9/archos_features.c
+++ b/arch/arm/boards/archosg9/archos_features.c
@@ -27,144 +27,448 @@ static void setup_feature_core(void)
 	features->hdr.tag = FTAG_CORE;
 	features->hdr.size = feature_tag_size(feature_tag_core);
 
+	memset(&features->u.core, 0, sizeof(features->u.core));
 	features->u.core.magic = FEATURE_LIST_MAGIC;
 	features->u.core.list_revision = FEATURE_LIST_REV;
-	features->u.core.flags = 0;
 
 	features = feature_tag_next(features);
 }
 static void setup_feature_product_name(void)
 {
+#ifdef INSERT_ATAG_PRODUCT_NAME
 	features->hdr.tag = FTAG_PRODUCT_NAME;
 	features->hdr.size = feature_tag_size(feature_tag_product_name);
 
-	memset(features->u.product_name.name, 0,
-		sizeof(features->u.product_name.name));
+	memset(&features->u.product_name, 0, sizeof(features->u.product_name));
 	sprintf(features->u.product_name.name, "A80S");
 	features->u.product_name.id = 0x13A8;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_product_serial_number(void)
 {
+#ifdef INSERT_ATAG_PRODUCT_SERIAL_NUMBER
 	features->hdr.tag = FTAG_PRODUCT_SERIAL_NUMBER;
 	features->hdr.size = feature_tag_size(feature_tag_product_serial);
 
-	features->u.product_serial.serial[0] = 0;
-	features->u.product_serial.serial[1] = 0;
-	features->u.product_serial.serial[2] = 0;
-	features->u.product_serial.serial[3] = 0;
+	memset(&features->u.product_serial, 0,
+		sizeof(features->u.product_serial));
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_product_mac_address(void)
 {
+#ifdef INSERT_ATAG_PRODUCT_MAC_ADDRESS
 	features->hdr.tag = FTAG_PRODUCT_MAC_ADDRESS;
 	features->hdr.size = feature_tag_size(feature_tag_product_mac_address);
 
-	features->u.mac_address.addr[0] = 0;
-	features->u.mac_address.addr[1] = 0;
-	features->u.mac_address.addr[2] = 0;
-	features->u.mac_address.addr[3] = 0;
-	features->u.mac_address.addr[4] = 0;
-	features->u.mac_address.addr[5] = 0;
-	features->u.mac_address.reserved1 = 0;
-	features->u.mac_address.reserved2 = 0;
+	memset(&features->u.mac_address, 0, sizeof(features->u.mac_address));
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_board_pcb_revision(void)
 {
+#ifdef INSERT_ATAG_BOARD_PCB_REVISION
 	features->hdr.tag = FTAG_BOARD_PCB_REVISION;
 	features->hdr.size = feature_tag_size(feature_tag_board_revision);
 
+	memset(&features->u.board_revision, 0,
+		sizeof(features->u.board_revision));
 	features->u.board_revision.revision = 5;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_sdram(void)
 {
+#ifdef INSERT_ATAG_SDRAM
 	features->hdr.tag = FTAG_SDRAM;
 	features->hdr.size = feature_tag_size(feature_tag_sdram);
 
-	memset(features->u.sdram.vendor, 0, sizeof(features->u.sdram.vendor));
-	memset(features->u.sdram.product, 0,
-		sizeof(features->u.sdram.product));
+	memset(&features->u.sdram, 0, sizeof(features->u.sdram));
 	sprintf(features->u.sdram.vendor , "elpida");
-	sprintf(features->u.sdram.product, "EDB8064B1PB"/*"EDB4064B2PB"*/);
-	features->u.sdram.type     = 0;
-	features->u.sdram.revision = 0;
-	features->u.sdram.flags    = 0;
+	sprintf(features->u.sdram.product, "EDB8064B1PB");
 	features->u.sdram.clock    = 400;
-	features->u.sdram.param_0  = 0;
-	features->u.sdram.param_1  = 0;
-	features->u.sdram.param_2  = 0;
-	features->u.sdram.param_3  = 0;
-	features->u.sdram.param_4  = 0;
-	features->u.sdram.param_5  = 0;
-	features->u.sdram.param_6  = 0;
-	features->u.sdram.param_7  = 0;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_pmic(void)
 {
+#ifdef INSERT_ATAG_PMIC
 	features->hdr.tag = FTAG_PMIC;
 	features->hdr.size = feature_tag_size(feature_tag_pmic);
 
+	memset(&features->u.pmic, 0, sizeof(features->u.pmic));
 	features->u.pmic.flags = FTAG_PMIC_TPS62361;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_serial_port(void)
 {
+#ifdef INSERT_ATAG_SERIAL_PORT
 	features->hdr.tag = FTAG_SERIAL_PORT;
 	features->hdr.size = feature_tag_size(feature_tag_serial_port);
 
+	memset(&features->u.serial_port, 0, sizeof(features->u.serial_port));
 	features->u.serial_port.uart_id = 1;
 	features->u.serial_port.speed = 115200;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_has_gpio_volume_keys(void)
 {
+#ifdef INSERT_ATAG_HAS_GPIO_VOLUME_KEYS
 	features->hdr.tag = FTAG_HAS_GPIO_VOLUME_KEYS;
 	features->hdr.size = feature_tag_size(feature_tag_gpio_volume_keys);
 
+	memset(&features->u.gpio_volume_keys, 0,
+		sizeof(features->u.gpio_volume_keys));
 	features->u.gpio_volume_keys.gpio_vol_up   = 0x2B;
 	features->u.gpio_volume_keys.gpio_vol_down = 0x2C;
-	features->u.gpio_volume_keys.flags = 0;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_screen(void)
 {
+#ifdef INSERT_ATAG_SCREEN
 	features->hdr.tag = FTAG_SCREEN;
 	features->hdr.size = feature_tag_size(feature_tag_screen);
 
-	memset(features->u.screen.vendor, 0,
-		sizeof(features->u.screen.vendor));
+	memset(&features->u.screen, 0, sizeof(features->u.screen));
 	sprintf(features->u.screen.vendor, "CMI");
-	features->u.screen.type = 0;
-	features->u.screen.revision = 0;
-	features->u.screen.vcom = 0;
 	features->u.screen.backlight = 0xC8;
-	features->u.screen.reserved[0] = 0;
-	features->u.screen.reserved[1] = 0;
-	features->u.screen.reserved[2] = 0;
-	features->u.screen.reserved[3] = 0;
-	features->u.screen.reserved[4] = 0;
 
 	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_turbo(void)
 {
+#ifdef INSERT_ATAG_TURBO
 	features->hdr.tag = FTAG_TURBO;
 	features->hdr.size = feature_tag_size(feature_tag_turbo);
 
+	memset(&features->u.turbo, 0, sizeof(features->u.turbo));
 	features->u.turbo.flag = 1;
 
 	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_product_oem(void)
+{
+#ifdef INSERT_ATAG_PRODUCT_OEM
+	features->hdr.tag = FTAG_PRODUCT_OEM;
+	features->hdr.size = feature_tag_size(feature_tag_product_oem);
+
+	memset(&features->u.product_oem, 0, sizeof(features->u.product_oem));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_product_zone(void)
+{
+#ifdef INSERT_ATAG_PRODUCT_ZONE
+	features->hdr.tag = FTAG_PRODUCT_ZONE;
+	features->hdr.size = feature_tag_size(feature_tag_product_zone);
+
+	memset(&features->u.product_zone, 0, sizeof(features->u.product_zone));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_clock(void)
+{
+#ifdef INSERT_ATAG_CLOCK
+	features->hdr.tag = FTAG_CLOCK;
+	features->hdr.size = feature_tag_size(feature_tag_clock);
+
+	memset(&features->u.clock, 0, sizeof(features->u.clock));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_dcin(void)
+{
+#ifdef INSERT_ATAG_DCIN
+	features->hdr.tag = FTAG_HAS_DCIN;
+	features->hdr.size = feature_tag_size(feature_tag_dcin);
+
+	memset(&features->u.dcin, 0, sizeof(features->u.dcin));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_ext_screen(void)
+{
+#ifdef INSERT_ATAG_EXT_SCREEN
+	features->hdr.tag = FTAG_HAS_EXT_SCREEN;
+	features->hdr.size = feature_tag_size(feature_tag_ext_screen);
+
+	memset(&features->u.ext_screen, 0, sizeof(features->u.ext_screen));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_wifi(void)
+{
+#ifdef INSERT_ATAG_WIFI
+	features->hdr.tag = FTAG_HAS_WIFI;
+	features->hdr.size = feature_tag_size(feature_tag_wifi);
+
+	memset(&features->u.wifi, 0, sizeof(features->u.wifi));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_bluetooth(void)
+{
+#ifdef INSERT_ATAG_BLUETOOTH
+	features->hdr.tag = FTAG_HAS_BLUETOOTH;
+	features->hdr.size = feature_tag_size(feature_tag_bluetooth);
+
+	memset(&features->u.bluetooth, 0, sizeof(features->u.bluetooth));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_accelerometer(void)
+{
+#ifdef INSERT_ATAG_ACCELEROMETER
+	features->hdr.tag = FTAG_HAS_ACCELEROMETER;
+	features->hdr.size = feature_tag_size(feature_tag_accelerometer);
+
+	memset(&features->u.accelerometer, 0,
+		sizeof(features->u.accelerometer));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_gps(void)
+{
+#ifdef INSERT_ATAG_GPS
+	features->hdr.tag = FTAG_HAS_GPS;
+	features->hdr.size = feature_tag_size(feature_tag_gps);
+
+	memset(&features->u.gps, 0, sizeof(features->u.gps));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_harddisk_controller(void)
+{
+#ifdef INSERT_ATAG_HARDDISK_CONTROLLER
+	features->hdr.tag = FTAG_HAS_HARDDISK_CONTROLLER;
+	features->hdr.size = feature_tag_size(feature_tag_harddisk_controller);
+
+	memset(&features->u.harddisk_controller, 0,
+		sizeof(features->u.harddisk_controller));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_harddisk(void)
+{
+#ifdef INSERT_ATAG_HARDDISK
+	features->hdr.tag = FTAG_HAS_HARDDISK;
+	features->hdr.size = feature_tag_size(feature_tag_harddisk);
+
+	memset(&features->u.harddisk, 0, sizeof(features->u.harddisk));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_touchscreen(void)
+{
+#ifdef INSERT_ATAG_TOUCHSCREEN
+	features->hdr.tag = FTAG_HAS_TOUCHSCREEN;
+	features->hdr.size = feature_tag_size(feature_tag_touchscreen);
+
+	memset(&features->u.touchscreen, 0, sizeof(features->u.touchscreen));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_mmcsd(void)
+{
+#ifdef INSERT_ATAG_MMCSD
+	features->hdr.tag = FTAG_HAS_EXT_MMCSD_SLOT;
+	features->hdr.size = feature_tag_size(feature_tag_mmcsd);
+
+	memset(&features->u.mmcsd, 0, sizeof(features->u.mmcsd));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_gpio_keys(void)
+{
+#ifdef INSERT_ATAG_GPIO_KEYS
+	features->hdr.tag = FTAG_GPIO_KEYS;
+	features->hdr.size = feature_tag_size(feature_tag_gpio_keys);
+
+	memset(&features->u.gpio_keys, 0, sizeof(features->u.gpio_keys));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_wifi_pa(void)
+{
+#ifdef INSERT_ATAG_WIFI_PA
+	features->hdr.tag = FTAG_WIFI_PA;
+	features->hdr.size = feature_tag_size(feature_tag_wifi_pa);
+
+	memset(&features->u.wifi_pa, 0, sizeof(features->u.wifi_pa));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_speaker(void)
+{
+#ifdef INSERT_ATAG_SPEAKER
+	features->hdr.tag = FTAG_HAS_SPEAKER;
+	features->hdr.size = feature_tag_size(feature_tag_speaker);
+
+	memset(&features->u.speaker, 0, sizeof(features->u.speaker));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_battery(void)
+{
+#ifdef INSERT_ATAG_BATTERY
+	features->hdr.tag = FTAG_BATTERY;
+	features->hdr.size = feature_tag_size(feature_tag_battery);
+
+	memset(&features->u.battery, 0, sizeof(features->u.battery));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_electrical_shortcut(void)
+{
+#ifdef INSERT_ATAG_ELECTRICAL_SHORTCUT
+	features->hdr.tag = FTAG_HAS_ELECTRICAL_SHORTCUT;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_gyroscope(void)
+{
+#ifdef INSERT_ATAG_GYROSCOPE
+	features->hdr.tag = FTAG_HAS_GYROSCOPE;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_compass(void)
+{
+#ifdef INSERT_ATAG_COMPASS
+	features->hdr.tag = FTAG_HAS_COMPASS;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_camera(void)
+{
+#ifdef INSERT_ATAG_CAMERA
+	features->hdr.tag = FTAG_HAS_CAMERA;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_microphone(void)
+{
+#ifdef INSERT_ATAG_MICROPHONE
+	features->hdr.tag = FTAG_HAS_MICROPHONE;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_ambient_light_sensor(void)
+{
+#ifdef INSERT_ATAG_AMBIENT_LIGHT_SENSOR
+	features->hdr.tag = FTAG_HAS_AMBIENT_LIGHT_SENSOR;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_proximity_sensor(void)
+{
+#ifdef INSERT_ATAG_PROXIMITY_SENSOR
+	features->hdr.tag = FTAG_HAS_PROXIMITY_SENSOR;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_gsm(void)
+{
+#ifdef INSERT_ATAG_GSM
+	features->hdr.tag = FTAG_HAS_GSM;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_dect(void)
+{
+#ifdef INSERT_ATAG_DECT
+	features->hdr.tag = FTAG_HAS_DECT;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_hsdpa(void)
+{
+#ifdef INSERT_ATAG_HSDPA
+	features->hdr.tag = FTAG_HAS_HSDPA;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
+}
+static void setup_feature_nfc(void)
+{
+#ifdef INSERT_ATAG_NFC
+	features->hdr.tag = FTAG_HAS_NFC;
+	features->hdr.size = feature_tag_size(feature_tag_generic);
+
+	memset(&features->u.generic, 0, sizeof(features->u.generic));
+
+	features = feature_tag_next(features);
+#endif
 }
 static void setup_feature_none(void)
 {
@@ -191,6 +495,34 @@ static struct tag *setup_feature_list(struct tag * params)
 	setup_feature_has_gpio_volume_keys();
 	setup_feature_screen();
 	setup_feature_turbo();
+	setup_feature_product_oem();
+	setup_feature_product_zone();
+	setup_feature_clock();
+	setup_feature_dcin();
+	setup_feature_ext_screen();
+	setup_feature_wifi();
+	setup_feature_bluetooth();
+	setup_feature_accelerometer();
+	setup_feature_gps();
+	setup_feature_harddisk_controller();
+	setup_feature_harddisk();
+	setup_feature_touchscreen();
+	setup_feature_mmcsd();
+	setup_feature_gpio_keys();
+	setup_feature_wifi_pa();
+	setup_feature_speaker();
+	setup_feature_battery();
+	setup_feature_electrical_shortcut();
+	setup_feature_gyroscope();
+	setup_feature_compass();
+	setup_feature_camera();
+	setup_feature_microphone();
+	setup_feature_ambient_light_sensor();
+	setup_feature_proximity_sensor();
+	setup_feature_gsm();
+	setup_feature_dect();
+	setup_feature_hsdpa();
+	setup_feature_nfc();
 	setup_feature_none();
 
 	fl->size = ((u32)features) - ((u32)(fl->data));
diff --git a/arch/arm/boards/archosg9/archos_features.h b/arch/arm/boards/archosg9/archos_features.h
index 5769c6c..a3e1437 100644
--- a/arch/arm/boards/archosg9/archos_features.h
+++ b/arch/arm/boards/archosg9/archos_features.h
@@ -1,6 +1,45 @@
 #ifndef __ARCHOS_FEATURES_H
 #define __ARCHOS_FEATURES_H
 
+#undef  INSERT_ATAG_PRODUCT_NAME
+#undef  INSERT_ATAG_PRODUCT_SERIAL_NUMBER
+#undef  INSERT_ATAG_PRODUCT_MAC_ADDRESS
+#undef  INSERT_ATAG_BOARD_PCB_REVISION
+#define INSERT_ATAG_SDRAM
+#undef  INSERT_ATAG_PMIC
+#define INSERT_ATAG_SERIAL_PORT
+#define INSERT_ATAG_HAS_GPIO_VOLUME_KEYS
+#define INSERT_ATAG_SCREEN
+#define INSERT_ATAG_TURBO
+#undef  INSERT_ATAG_PRODUCT_OEM
+#undef  INSERT_ATAG_PRODUCT_ZONE
+#undef  INSERT_ATAG_CLOCK
+#undef  INSERT_ATAG_DCIN
+#undef  INSERT_ATAG_EXT_SCREEN
+#undef  INSERT_ATAG_WIFI
+#undef  INSERT_ATAG_BLUETOOTH
+#undef  INSERT_ATAG_ACCELEROMETER
+#undef  INSERT_ATAG_GPS
+#undef  INSERT_ATAG_HARDDISK_CONTROLLER
+#undef  INSERT_ATAG_HARDDISK
+#undef  INSERT_ATAG_TOUCHSCREEN
+#undef  INSERT_ATAG_MMCSD
+#undef  INSERT_ATAG_GPIO_KEYS
+#undef  INSERT_ATAG_WIFI_PA
+#undef  INSERT_ATAG_SPEAKER
+#undef  INSERT_ATAG_BATTERY
+#undef  INSERT_ATAG_ELECTRICAL_SHORTCUT
+#undef  INSERT_ATAG_GYROSCOPE
+#undef  INSERT_ATAG_COMPASS
+#undef  INSERT_ATAG_CAMERA
+#undef  INSERT_ATAG_MICROPHONE
+#undef  INSERT_ATAG_AMBIENT_LIGHT_SENSOR
+#undef  INSERT_ATAG_PROXIMITY_SENSOR
+#undef  INSERT_ATAG_GSM
+#undef  INSERT_ATAG_DECT
+#undef  INSERT_ATAG_HSDPA
+#undef  INSERT_ATAG_NFC
+
 /* bootloader version */
 #define ATAG_BOOT_VERSION	0x5441000A
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
