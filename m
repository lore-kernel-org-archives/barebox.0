Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqE4o-0001kf-ER
 for barebox@lists.infradead.org; Mon, 26 Feb 2018 08:25:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Feb 2018 09:23:49 +0100
Message-Id: <20180226082349.31568-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Pass barebox version to kernel
To: Barebox List <barebox@lists.infradead.org>

When userspace is interested in the barebox version it has currently no
way of reliably reading it. Add it to the kernel command line as it's an
established way to pass information from the bootloader to the kernel.
If CONFIG_FLEXIBLE_BOOTARGS is enabled then the barebox version is
passed in the "bootloader.version=" variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index b9bfce7dac..eff4cbc72e 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -571,6 +571,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 	return 0;
 }
 
+static char *kernel_arg_bootloader_version;
+
 static int globalvar_init(void)
 {
 	register_device(&global_device);
@@ -580,6 +582,13 @@ static int globalvar_init(void)
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
+	if (IS_ENABLED(CONFIG_FLEXIBLE_BOOTARGS)) {
+		kernel_arg_bootloader_version = basprintf("bootloader.version=barebox-%s",
+					       UTS_RELEASE);
+		globalvar_add_simple_string("linux.bootargs.bootloader.version",
+					    &kernel_arg_bootloader_version);
+	}
+
 	return 0;
 }
 pure_initcall(globalvar_init);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
