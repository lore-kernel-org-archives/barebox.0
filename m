Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXT-0006zU-25
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:15:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:19 +0200
Message-Id: <20170410071420.26884-10-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] globalvar: make globalvar functions more consistent
To: Barebox List <barebox@lists.infradead.org>

Similar to the device parameter functions also make the globalvar
functions more consistent. This also adds support for readonly
globalvars and changes several existing globalvars which should
really be readonly to readonly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c               |   2 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c |   2 +-
 arch/arm/boards/phytec-som-imx6/board.c          |   2 +-
 arch/arm/boards/vscom-baltos/board.c             |   7 +-
 arch/ppc/boards/pcm030/eeprom.c                  |   4 +-
 common/boot.c                                    |   2 +-
 common/bootchooser.c                             |   4 +-
 common/bootm.c                                   |   2 +-
 common/console_common.c                          |   6 +-
 common/globalvar.c                               |  28 ++----
 common/password.c                                |   2 +-
 common/reset_source.c                            |   2 +-
 drivers/mtd/peb.c                                |   6 +-
 include/globalvar.h                              | 109 ++++++++++++++++++++---
 14 files changed, 123 insertions(+), 55 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 5717c45020..18a9a10a86 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -87,7 +87,7 @@ static int beaglebone_devices_init(void)
 
 	defaultenv_append_directory(defaultenv_beaglebone);
 
-	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
+	globalvar_add_simple_string_fixed("board.variant", black ? "boneblack" : "bone");
 
 	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index c94cb355e2..d0907c11f0 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -105,7 +105,7 @@ void cfa10036_detect_hw(void)
 		return;
 	}
 
-	globalvar_add_simple("board.variant", board_name);
+	globalvar_add_simple_string_fixed("board.variant", board_name);
 
 	pr_info("Booting on a CFA10036 with %s\n", board_name);
 }
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index ed9453bdda..31b2761024 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -152,7 +152,7 @@ static int physom_imx6_devices_init(void)
 		phyflex_err006282_workaround();
 
 		pfla02_module_revision = get_module_rev();
-		globalvar_add_simple_int("board.revision", &pfla02_module_revision, "%u");
+		globalvar_add_simple_uint32_fixed("board.revision", pfla02_module_revision, "%u");
 		pr_info("Module Revision: %u\n", pfla02_module_revision);
 
 		barebox_set_hostname("phyFLEX-i.MX6");
diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 39f40a6061..1a4dc30936 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -64,7 +64,7 @@ static int baltos_read_eeprom(void)
 {
 	struct bsp_vs_hwparam hw_param;
 	size_t size;
-	char *buf, var_buf[32];
+	char *buf;
 	int rc;
 	unsigned char mac_addr[6];
 
@@ -107,8 +107,7 @@ static int baltos_read_eeprom(void)
 		hw_param.SystemId = 0;
 	}
 
-	sprintf(var_buf, "%d", hw_param.SystemId);
-	globalvar_add_simple("board.id", var_buf);
+	globalvar_add_simple_uint32_fixed("board.id", hw_param.SystemId, "%u");
 
 	/* enable mPCIe slot */
 	gpio_direction_output(100, 1);
@@ -131,7 +130,7 @@ static int baltos_devices_init(void)
 	if (!of_machine_is_compatible("vscom,onrisc"))
 		return 0;
 
-	globalvar_add_simple("board.variant", "baltos");
+	globalvar_add_simple_string_fixed("board.variant", "baltos");
 
 	if (bootsource_get() == BOOTSOURCE_MMC)
 		omap_set_bootmmc_devname("mmc0");
diff --git a/arch/ppc/boards/pcm030/eeprom.c b/arch/ppc/boards/pcm030/eeprom.c
index aa00f361cd..34bce85b94 100644
--- a/arch/ppc/boards/pcm030/eeprom.c
+++ b/arch/ppc/boards/pcm030/eeprom.c
@@ -53,7 +53,7 @@ static void pcm030_read_factory_data(const struct pcm030_eeprom *buf)
 			continue;
 		board = xstrndup(&buf->product[u], l);
 		u += l + 1;
-		globalvar_add_simple("model.type", board);
+		globalvar_add_simple_string_fixed("model.type", board);
 		free(board);
 	}
 
@@ -62,7 +62,7 @@ static void pcm030_read_factory_data(const struct pcm030_eeprom *buf)
 			continue;
 		serial = xstrndup(&buf->product[u], l);
 		u += l + 1;
-		globalvar_add_simple("model.serial", serial);
+		globalvar_add_simple_string_fixed("model.serial", serial);
 		free(serial);
 	}
 
diff --git a/common/boot.c b/common/boot.c
index cef3d5e514..a2d27d1593 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -123,7 +123,7 @@ void boot_set_watchdog_timeout(unsigned int timeout)
 
 static int init_boot_watchdog_timeout(void)
 {
-	return globalvar_add_simple_int("boot.watchdog_timeout",
+	return globalvar_add_simple_uint32("boot.watchdog_timeout",
 			&boot_watchdog_timeout, "%u");
 }
 late_initcall(init_boot_watchdog_timeout);
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 455f290fa2..f6d99d130b 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -907,8 +907,8 @@ static int bootchooser_init(void)
 	globalvar_add_simple_bool("bootchooser.retry", &retry);
 	globalvar_add_simple_string("bootchooser.targets", &available_targets);
 	globalvar_add_simple_string("bootchooser.state_prefix", &state_prefix);
-	globalvar_add_simple_int("bootchooser.default_attempts", &global_default_attempts, "%u");
-	globalvar_add_simple_int("bootchooser.default_priority", &global_default_priority, "%u");
+	globalvar_add_simple_uint32("bootchooser.default_attempts", &global_default_attempts, "%u");
+	globalvar_add_simple_uint32("bootchooser.default_priority", &global_default_priority, "%u");
 	globalvar_add_simple_bitmask("bootchooser.reset_attempts", &reset_attempts,
 				  reset_attempts_names, ARRAY_SIZE(reset_attempts_names));
 	globalvar_add_simple_bitmask("bootchooser.reset_priorities", &reset_priorities,
diff --git a/common/bootm.c b/common/bootm.c
index 81625d9157..92cfeb6c32 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -668,7 +668,7 @@ static int bootm_init(void)
 	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
-	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
+	globalvar_add_simple_uint32("bootm.verbose", &bootm_verbosity, "%u");
 
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
diff --git a/common/console_common.c b/common/console_common.c
index d051458de4..b36b3ff083 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -148,10 +148,10 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 static int loglevel_init(void)
 {
 	if (IS_ENABLED(CONFIG_LOGBUF))
-		globalvar_add_simple_int("log_max_messages",
-				&barebox_log_max_messages, "%d");
+		globalvar_add_simple_uint32("log_max_messages",
+				&barebox_log_max_messages, "%u");
 
-	return globalvar_add_simple_int("loglevel", &barebox_loglevel, "%d");
+	return globalvar_add_simple_uint32("loglevel", &barebox_loglevel, "%u");
 }
 device_initcall(loglevel_init);
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 32ca6a24db..2f65ca805f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -424,7 +424,7 @@ int globalvar_add_simple(const char *name, const char *value)
 	return 0;
 }
 
-int globalvar_add_simple_string(const char *name, char **value)
+int __globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
 
@@ -439,28 +439,14 @@ int globalvar_add_simple_string(const char *name, char **value)
 	return 0;
 }
 
-int globalvar_add_simple_int(const char *name, int *value,
-			     const char *format)
+int __globalvar_add_simple_int(const char *name, void *value,
+				      enum param_type type,
+				      const char *format)
 {
 	struct param_d *p;
 
-	p = dev_add_param_int(&global_device, name, NULL, NULL,
-		value, format, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	globalvar_nv_sync(name);
-
-	return 0;
-}
-
-int globalvar_add_simple_bool(const char *name, int *value)
-{
-	struct param_d *p;
-
-	p = dev_add_param_bool(&global_device, name, NULL, NULL,
-		value, NULL);
+	p = __dev_add_param_int(&global_device, name, NULL, NULL,
+		value, type, format, NULL);
 
 	if (IS_ERR(p))
 		return PTR_ERR(p);
@@ -522,7 +508,7 @@ static int globalvar_init(void)
 	if (IS_ENABLED(CONFIG_NVVAR))
 		register_device(&nv_device);
 
-	globalvar_add_simple("version", UTS_RELEASE);
+	globalvar_add_simple_string_fixed("version", UTS_RELEASE);
 
 	return 0;
 }
diff --git a/common/password.c b/common/password.c
index 74d328f4b2..5e6bfc53e7 100644
--- a/common/password.c
+++ b/common/password.c
@@ -443,7 +443,7 @@ static int login_global_init(void)
 {
 	login_fail_command = xstrdup("boot");
 
-	globalvar_add_simple_int("login.timeout", &login_timeout, "%d");
+	globalvar_add_simple_uint32("login.timeout", &login_timeout, "%u");
 	globalvar_add_simple_string("login.fail_command", &login_fail_command);
 
 	return 0;
diff --git a/common/reset_source.c b/common/reset_source.c
index 06e2ca85f5..e18bf6db68 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -54,7 +54,7 @@ EXPORT_SYMBOL(reset_source_set_priority);
 
 static int reset_source_init(void)
 {
-	globalvar_add_simple_enum("system.reset", (unsigned int *)&reset_source,
+	globalvar_add_simple_enum_ro("system.reset", (unsigned int *)&reset_source,
 			reset_src_names, ARRAY_SIZE(reset_src_names));
 
 	return 0;
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index c35b63f2fd..0e64fe1671 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -76,11 +76,11 @@ static int mtd_peb_emulate_erase_failure(void)
 #ifdef CONFIG_MTD_PEB_DEBUG
 static int mtd_peb_debug_init(void)
 {
-	globalvar_add_simple_int("mtd_peb.mtd_peb_emulate_bitflip",
+	globalvar_add_simple_uint32("mtd_peb.mtd_peb_emulate_bitflip",
 				 &__mtd_peb_emulate_bitflip, "%u");
-	globalvar_add_simple_int("mtd_peb.mtd_peb_emulate_write_failure",
+	globalvar_add_simple_uint32("mtd_peb.mtd_peb_emulate_write_failure",
 				 &__mtd_peb_emulate_write_failure, "%u");
-	globalvar_add_simple_int("mtd_peb.mtd_peb_emulate_erase_failures",
+	globalvar_add_simple_uint32("mtd_peb.mtd_peb_emulate_erase_failures",
 				 &__mtd_peb_emulate_erase_failures, "%u");
 	globalvar_add_simple_bool("mtd_peb.mtd_peb_chk_io",
 				 &__mtd_peb_chk_io);
diff --git a/include/globalvar.h b/include/globalvar.h
index df43f1fe66..aea43b193d 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -15,10 +15,9 @@ void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 
-int globalvar_add_simple_string(const char *name, char **value);
-int globalvar_add_simple_int(const char *name, int *value,
-			     const char *format);
-int globalvar_add_simple_bool(const char *name, int *value);
+int __globalvar_add_simple_string(const char *name, char **value);
+int __globalvar_add_simple_int(const char *name, void *value,
+			       enum param_type type, const char *format);
 int globalvar_add_simple_enum(const char *name,	int *value,
 			      const char * const *names, int max);
 int globalvar_add_simple_bitmask(const char *name, unsigned long *value,
@@ -39,19 +38,13 @@ static inline int globalvar_add_simple(const char *name, const char *value)
 	return 0;
 }
 
-static inline int globalvar_add_simple_string(const char *name, char **value)
+static inline int __globalvar_add_simple_int(const char *name, void *value,
+			       enum param_type type, const char *format)
 {
 	return 0;
 }
 
-static inline int globalvar_add_simple_int(const char *name,
-		int *value, const char *format)
-{
-	return 0;
-}
-
-static inline int globalvar_add_simple_bool(const char *name,
-		int *value)
+static inline int __globalvar_add_simple_string(const char *name, char **value)
 {
 	return 0;
 }
@@ -115,6 +108,96 @@ static inline void dev_param_init_from_nv(struct device_d *dev, const char *name
 
 #endif
 
+#define DECLARE_GLOBALVAR_INT(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname(const char *name,	\
+						      inttype *value,		\
+						      const char *format)	\
+	{									\
+		return __globalvar_add_simple_int(name, value,			\
+						  paramtype,			\
+						  format);			\
+	}
+
+DECLARE_GLOBALVAR_INT(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_GLOBALVAR_INT(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_GLOBALVAR_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
+DECLARE_GLOBALVAR_INT(int64, int64_t, PARAM_TYPE_INT64)
+
+static inline int globalvar_add_simple_bool(const char *name, uint32_t *value)
+{
+	return __globalvar_add_simple_int(name, value, PARAM_TYPE_BOOL, "%u");
+}
+
+static inline int globalvar_add_simple_string(const char *name, char **value)
+{
+	return __globalvar_add_simple_string(name, value);
+}
+
+#define DECLARE_GLOBALVAR_INT_RO(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname##_ro(const char *name,	\
+						      inttype *value,		\
+						      const char *format)	\
+	{									\
+		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,\
+							   param_set_readonly,	\
+							   NULL, value,		\
+							   paramtype,		\
+							   format, NULL));	\
+	}
+
+DECLARE_GLOBALVAR_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_GLOBALVAR_INT_RO(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_GLOBALVAR_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
+DECLARE_GLOBALVAR_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
+
+static inline int globalvar_add_simple_bool_ro(const char *name, uint32_t *value)
+{
+	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,
+						   param_set_readonly, NULL,
+						   value, PARAM_TYPE_BOOL, "%u",
+						   NULL));
+}
+
+static inline int globalvar_add_simple_string_ro(const char *name, char **value)
+{
+	return __globalvar_add_simple_string(name, value);
+}
+
+#define DECLARE_GLOBALVAR_INT_FIXED(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname##_fixed(const char *name,	\
+								 inttype value,		\
+								 const char *format)	\
+	{										\
+		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,	\
+							   ERR_PTR(-EROFS), NULL,	\
+							   &value, paramtype,		\
+							   format, NULL));		\
+	}
+
+DECLARE_GLOBALVAR_INT_FIXED(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_GLOBALVAR_INT_FIXED(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_GLOBALVAR_INT_FIXED(uint64, uint64_t, PARAM_TYPE_UINT64)
+DECLARE_GLOBALVAR_INT_FIXED(int64, int64_t, PARAM_TYPE_INT64)
+
+static inline int globalvar_add_simple_bool_fixed(const char *name, uint32_t value)
+{
+	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name, ERR_PTR(-EROFS),
+						   NULL, &value, PARAM_TYPE_BOOL, "%u",
+						   NULL));
+}
+
+static inline int globalvar_add_simple_string_fixed(const char *name, char *value)
+{
+	return PTR_ERR_OR_ZERO(dev_add_param_string_fixed(&global_device, name, value));
+}
+
+static inline int globalvar_add_simple_enum_ro(const char *name, int *value,
+					       const char * const *names, int max)
+{
+	return PTR_ERR_OR_ZERO(dev_add_param_enum_ro(&global_device, name, value, names,
+						     max));
+}
+
 void nv_var_set_clean(void);
 int nvvar_save(void);
 int nv_global_complete(struct string_list *sl, char *instr);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
