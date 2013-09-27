Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRZO-00088n-EI
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:30:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:30:01 +0200
Message-Id: <1380263404-23104-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
References: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] environment variables: introduce new helpers
To: barebox@lists.infradead.org

This introduces some new environment variable helpers and updates
the existing ones. Newly introduced are:

getenv_bool: read a bool variable
getenv_ul: read an unsigned long variable
getenev_uint: read an unsigned int variable
getenv_nonempty: like normal getenv, but does return NULL instead of an
                 empty string

All new helpers take a pointer to the value. This value is only modified
when the variable exists. This allows the following programming scheme:

	unsigned int myvalue = sanedefault;

	getenv_uint("myvalue", &myvalue);

So without checking the return value myvalue contains the best possible
value.

getenv_ull is updated to this scheme.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c | 29 +++++---------------
 common/env.c            | 71 +++++++++++++++++++++++++++++++++++++++++++++----
 include/environment.h   | 31 ++++++++++++++++++---
 3 files changed, 100 insertions(+), 31 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 40a63ea..75d751b 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -42,11 +42,9 @@
 static struct tag *params;
 static void *armlinux_bootparams = NULL;
 
-#ifndef CONFIG_ENVIRONMENT_VARIABLES
 static int armlinux_architecture;
 static u32 armlinux_system_rev;
 static u64 armlinux_system_serial;
-#endif
 
 BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
 BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
@@ -54,56 +52,41 @@ BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
 
 void armlinux_set_architecture(int architecture)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
 	export_env_ull("armlinux_architecture", architecture);
-#else
 	armlinux_architecture = architecture;
-#endif
 }
 
 int armlinux_get_architecture(void)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
-	return getenv_ull("armlinux_architecture");
-#else
+	getenv_uint("armlinux_architecture", &armlinux_architecture);
+
 	return armlinux_architecture;
-#endif
 }
 
 void armlinux_set_revision(unsigned int rev)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
 	export_env_ull("armlinux_system_rev", rev);
-#else
 	armlinux_system_rev = rev;
-#endif
 }
 
 unsigned int armlinux_get_revision(void)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
-	return getenv_ull("armlinux_system_rev");
-#else
+	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
+
 	return armlinux_system_rev;
-#endif
 }
 
 void armlinux_set_serial(u64 serial)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
 	export_env_ull("armlinux_system_serial", serial);
-#else
 	armlinux_system_serial = serial;
-#endif
 }
 
 u64 armlinux_get_serial(void)
 {
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
-	return getenv_ull("armlinux_system_serial");
-#else
+	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
+
 	return armlinux_system_serial;
-#endif
 }
 
 #ifdef CONFIG_ARM_BOARD_APPEND_ATAG
diff --git a/common/env.c b/common/env.c
index 33a871f..748b655 100644
--- a/common/env.c
+++ b/common/env.c
@@ -267,13 +267,74 @@ void export_env_ull(const char *name, unsigned long long val)
 }
 EXPORT_SYMBOL(export_env_ull);
 
-unsigned long long getenv_ull(const char *name)
+/*
+ * Like regular getenv, but never returns an empty string.
+ * If the string is empty, NULL is returned instead
+ */
+const char *getenv_nonempty(const char *var)
 {
-	const char *valstr = getenv(name);
+	const char *val = getenv(var);
 
-	if (!valstr)
-		return 0;
+	if (val && *val)
+		return val;
 
-	return simple_strtoull(valstr, NULL, 0);
+	return NULL;
+}
+EXPORT_SYMBOL(getenv_nonempty);
+
+int getenv_ull(const char *var , unsigned long long *val)
+{
+	const char *valstr = getenv(var);
+
+	if (!valstr || !*valstr)
+		return -EINVAL;
+
+	*val = simple_strtoull(valstr, NULL, 0);
+
+	return 0;
 }
 EXPORT_SYMBOL(getenv_ull);
+
+int getenv_ul(const char *var , unsigned long *val)
+{
+	const char *valstr = getenv(var);
+
+	if (!valstr || !*valstr)
+		return -EINVAL;
+
+	*val = simple_strtoul(valstr, NULL, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(getenv_ul);
+
+int getenv_uint(const char *var , unsigned int *val)
+{
+	const char *valstr = getenv(var);
+
+	if (!valstr || !*valstr)
+		return -EINVAL;
+
+	*val = simple_strtoul(valstr, NULL, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(getenv_uint);
+
+int getenv_bool(const char *var, int *val)
+{
+	const char *valstr = getenv(var);
+
+	if (!valstr || !*valstr)
+		return -EINVAL;
+
+	if (!*valstr)
+		*val = false;
+	else if (*valstr == '0')
+		*val = false;
+	else
+		*val = true;
+
+	return 0;
+}
+EXPORT_SYMBOL(getenv_bool);
diff --git a/include/environment.h b/include/environment.h
index ae1ecf5..a08f597 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -45,7 +45,11 @@ char *var_name(struct variable_d *);
 const char *getenv(const char *);
 int setenv(const char *, const char *);
 void export_env_ull(const char *name, unsigned long long val);
-unsigned long long getenv_ull(const char *name);
+int getenv_ull(const char *name, unsigned long long *val);
+int getenv_ul(const char *name, unsigned long *val);
+int getenv_uint(const char *name, unsigned int *val);
+int getenv_bool(const char *var, int *val);
+const char *getenv_nonempty(const char *var);
 #else
 static inline char *getenv(const char *var)
 {
@@ -56,10 +60,22 @@ static inline int setenv(const char *var, const char *val)
 {
 	return 0;
 }
+
 static inline void export_env_ull(const char *name, unsigned long long val) {}
-static inline unsigned long long getenv_ull(const char *name)
+
+static inline int getenv_ull(const char *name, unsigned long long *val)
 {
-	return 0;
+	return -EINVAL;
+}
+
+static inline int getenv_ul(const char *name, unsigned long *val)
+{
+	return -EINVAL;
+}
+
+static inline int getenv_uint(const char *name, unsigned int *val)
+{
+	return -EINVAL;
 }
 
 static inline int export(const char *var)
@@ -67,6 +83,15 @@ static inline int export(const char *var)
 	return -EINVAL;
 }
 
+static inline int getenv_bool(const char *var, int *val)
+{
+	return -EINVAL;
+}
+
+static inline const char *getenv_nonempty(const char *var)
+{
+	return NULL;
+}
 #endif
 
 int env_pop_context(void);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
