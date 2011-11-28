Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAb-0003qt-UN
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:11 +0100
Message-Id: <1322467340-10596-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/14] armlinux: cleanup linux vars
To: barebox@lists.infradead.org

arch_number is currently exported to the environment but not read back
on boot time which is rather confusing. system_rev and system_serial
are not exported to the environment but can be set in board specific
code.
This patch exports all these variables to the environment and reads them
back on boot time. All variables get a armlinux_ prefix, so the
arch_number environment variable gets renamed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   92 +++++++++++++++++++++++++++++++++--------------
 1 files changed, 65 insertions(+), 27 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index d8ca477..ebe4137 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -45,11 +45,67 @@
 #include <asm/system.h>
 
 static struct tag *params;
-static int armlinux_architecture = 0;
 static void *armlinux_bootparams = NULL;
 
-static unsigned int system_rev;
-static u64 system_serial;
+#ifndef CONFIG_ENVIRONMENT_VARIABLES
+static int armlinux_architecture;
+static u32 armlinux_system_rev;
+static u64 armlinux_system_serial;
+#endif
+
+void armlinux_set_architecture(int architecture)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	export_env_ull("armlinux_architecture", architecture);
+#else
+	armlinux_architecture = architecture;
+#endif
+}
+
+int armlinux_get_architecture(void)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	return getenv_ull("armlinux_architecture");
+#else
+	return armlinux_architecture;
+#endif
+}
+
+void armlinux_set_revision(unsigned int rev)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	export_env_ull("armlinux_system_rev", rev);
+#else
+	return armlinux_system_rev;
+#endif
+}
+
+unsigned int armlinux_get_revision(void)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	return getenv_ull("armlinux_system_rev");
+#else
+	return armlinux_system_rev;
+#endif
+}
+
+void armlinux_set_serial(u64 serial)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	export_env_ull("armlinux_system_serial", serial);
+#else
+	armlinux_system_serial = serial;
+#endif
+}
+
+u64 armlinux_get_serial(void)
+{
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
+	return getenv_ull("armlinux_system_serial");
+#else
+	return armlinux_system_serial;
+#endif
+}
 
 static void setup_start_tag(void)
 {
@@ -117,6 +173,8 @@ static void setup_commandline_tag(const char *commandline, int swap)
 
 static void setup_revision_tag(void)
 {
+	u32 system_rev = armlinux_get_revision();
+
 	if (system_rev) {
 		params->hdr.tag = ATAG_REVISION;
 		params->hdr.size = tag_size(tag_revision);
@@ -129,6 +187,8 @@ static void setup_revision_tag(void)
 
 static void setup_serial_tag(void)
 {
+	u64 system_serial = armlinux_get_serial();
+
 	if (system_serial) {
 		params->hdr.tag = ATAG_SERIAL;
 		params->hdr.size = tag_size(tag_serialnr);
@@ -176,7 +236,7 @@ static void setup_tags(struct image_data *data, int swap)
 	setup_end_tag();
 
 	printf("commandline: %s\n"
-	       "arch_number: %d\n", commandline, armlinux_architecture);
+	       "arch_number: %d\n", commandline, armlinux_get_architecture());
 
 }
 
@@ -185,28 +245,6 @@ void armlinux_set_bootparams(void *params)
 	armlinux_bootparams = params;
 }
 
-void armlinux_set_architecture(int architecture)
-{
-	char *arch_number = asprintf("%d", architecture);
-
-	armlinux_architecture = architecture;
-
-	setenv("arch_number", arch_number);
-	export("arch_number");
-
-	kfree(arch_number);
-}
-
-void armlinux_set_revision(unsigned int rev)
-{
-	system_rev = rev;
-}
-
-void armlinux_set_serial(u64 serial)
-{
-	system_serial = serial;
-}
-
 void start_linux(void *adr, int swap, struct image_data *data)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
@@ -229,5 +267,5 @@ void start_linux(void *adr, int swap, struct image_data *data)
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-	kernel(0, armlinux_architecture, params);
+	kernel(0, armlinux_get_architecture(), params);
 }
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
