Delivery-date: Sat, 30 Oct 2021 16:19:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCj-0002ZU-Tv
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:19:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCh-000858-S1
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:19:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tu7+tTNUAxB0yKWiewk/WHb1Op6v7y0UXpr7GmJurr0=; b=iMRmstnrwB0+RR
	5PVoGzksmoAUxke7+cK2o14mLlh1Xi9yyT0k3qefOqLf+XGYdH6dXIuC/caaBJwv6bd3RAYmbWVyO
	WC6q4l5jcyY2XP+2Qjjon0+xpEbucwCBDi1j9Gx/39Y1sivY+CDXrkgYL6KD0y0SKia+MJop8mtiM
	+JIaKOmgGwpMmTYHMuuRo6ps7QlcpSfYv4VpYJ3ZXFDzIaH98Vhrs0NDASxeVU5rAIWX6/YJhSbM9
	x4h4HUYp/pf19HmN5V9LUbrm/waAvTySkosaJaeu6BNa8ZvNI2wJCdATTYLNLiwYOEWRczA87Qj5i
	yjfF8/sPMatm16Hg17Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpBJ-00D8nd-1L; Sat, 30 Oct 2021 14:18:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpB0-00D8hS-D0
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAz-0007kU-6z; Sat, 30 Oct 2021 16:17:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAy-009GGj-KO; Sat, 30 Oct 2021 16:17:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:37 +0200
Message-Id: <20211030141739.2207431-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
References: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071742_829979_D99FEC28 
X-CRM114-Status: GOOD (  19.53  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] include: add dedicated header for printf/printk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Including <stdio.h> for printf is a bit problematic, because it pulls in
other headers for <console.h>, which includes quite a few more headers
as well. To make it easier to share code between barebox and host tools
make <printk.h> the new minimal header for printf and move the extra
logging stuff into <linux/printk.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/netgear-rn2120/board.c  |   2 +-
 arch/arm/mach-mvebu/kwb_bbu.c           |   2 +-
 common/bootchooser.c                    |   2 +-
 common/optee.c                          |   2 +-
 common/state/backend_bucket_direct.c    |   2 +-
 common/state/backend_storage.c          |   2 +-
 common/state/state_variables.c          |   2 +-
 drivers/clk/analogbits/wrpll-cln28hpc.c |   2 +-
 drivers/clk/at91/pmc.h                  |   2 +-
 drivers/clk/sifive/sifive-prci.c        |   2 +-
 drivers/gpio/gpio-sifive.c              |   2 +-
 drivers/gpio/gpio-starfive-vic.c        |   2 +-
 drivers/pwm/pwm-atmel.c                 |   2 +-
 drivers/soc/sifive/sifive_l2_cache.c    |   2 +-
 drivers/watchdog/f71808e_wdt.c          |   2 +-
 fs/pstore/platform.c                    |   2 +-
 fs/pstore/ram.c                         |   2 +-
 fs/squashfs/squashfs.h                  |   2 +-
 include/common.h                        |   2 +-
 include/linux/barebox-wrapper.h         |  15 +-
 include/linux/mtd/mtd.h                 |   2 +-
 include/linux/printk.h                  | 173 ++++++++++++++++++++++++
 include/printk.h                        | 168 ++---------------------
 include/stdio.h                         |   8 +-
 lib/hexdump.c                           |   2 +-
 lib/kasan/report.c                      |   2 +-
 pbl/fdt.c                               |   2 +-
 27 files changed, 211 insertions(+), 199 deletions(-)
 create mode 100644 include/linux/printk.h

diff --git a/arch/arm/boards/netgear-rn2120/board.c b/arch/arm/boards/netgear-rn2120/board.c
index caf106af50d6..d5756e09694b 100644
--- a/arch/arm/boards/netgear-rn2120/board.c
+++ b/arch/arm/boards/netgear-rn2120/board.c
@@ -2,7 +2,7 @@
 #include <init.h>
 #include <of.h>
 #include <gpio.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <linux/kernel.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/mach-mvebu/kwb_bbu.c b/arch/arm/mach-mvebu/kwb_bbu.c
index f79464fe53e4..3de575740c27 100644
--- a/arch/arm/mach-mvebu/kwb_bbu.c
+++ b/arch/arm/mach-mvebu/kwb_bbu.c
@@ -1,6 +1,6 @@
 #include <bbu.h>
 #include <libfile.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 #include <mach/bbu.h>
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 2f22e03c4768..75dfbc6166c2 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -13,7 +13,7 @@
 #include <libfile.h>
 #include <common.h>
 #include <malloc.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <xfuncs.h>
 #include <envfs.h>
 #include <errno.h>
diff --git a/common/optee.c b/common/optee.c
index d542dde11854..b460fbcd0161 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -3,7 +3,7 @@
 #define pr_fmt(fmt) "optee: " fmt
 
 #include <tee/optee.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <asm-generic/errno.h>
 
 int optee_verify_header(struct optee_header *hdr)
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 4522f0170f3d..517aec60634b 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -17,7 +17,7 @@
 #include <libfile.h>
 #include <linux/kernel.h>
 #include <malloc.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 #include "state.h"
 
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index fe7e89e8fb39..7fc7acfdcbc8 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -21,7 +21,7 @@
 #include <linux/mtd/mtd-abi.h>
 #include <sys/stat.h>
 #include <malloc.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 #include "state.h"
 
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 66c66f38bd45..f112c60bf602 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -21,7 +21,7 @@
 #include <linux/types.h>
 #include <malloc.h>
 #include <net.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <of.h>
 #include <stdio.h>
 
diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
index 640af533d606..5a3602649f18 100644
--- a/drivers/clk/analogbits/wrpll-cln28hpc.c
+++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -23,7 +23,7 @@
 
 #include <linux/kernel.h>
 #include <stdio.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <linux/bug.h>
 #include <linux/err.h>
 #include <linux/log2.h>
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index 4e6ec8231eae..f9b2324f6aac 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -10,7 +10,7 @@
 
 #include <io.h>
 #include <linux/bitops.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 struct pmc_data {
 	unsigned int ncore;
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index 1701a2c5a0ef..fa0d1dc432bf 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -8,7 +8,7 @@
 #include <linux/list.h>
 #include <linux/clkdev.h>
 #include <linux/overflow.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <clock.h>
 #include <io.h>
 #include <of.h>
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index 63f2c097e446..58ffd8778855 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -4,7 +4,7 @@
  */
 
 #include <linux/basic_mmio_gpio.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <driver.h>
 #include <errno.h>
 
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
index baa4f584d5e8..4f8c0c6cd779 100644
--- a/drivers/gpio/gpio-starfive-vic.c
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -6,7 +6,7 @@
 #include <linux/basic_mmio_gpio.h>
 #include <linux/reset.h>
 #include <linux/clk.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <driver.h>
 #include <errno.h>
 #include <pinctrl.h>
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 7fa394934a76..1c6214594c9d 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -12,7 +12,7 @@
 #include <common.h>
 #include <driver.h>
 #include <module.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <stdio.h>
 #include <init.h>
 #include <pwm.h>
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a1e9a1062204..c1b7fda9c868 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -9,7 +9,7 @@
 #define pr_fmt(fmt) "sifive-l2: " fmt
 
 #include <io.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <stdio.h>
 #include <driver.h>
 #include <init.h>
diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 925c2f809df7..b2cf0f8ddd22 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -13,7 +13,7 @@
 #include <asm/io.h>
 #include <driver.h>
 #include <watchdog.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <reset_source.h>
 #include <superio.h>
 #include <common.h>
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index f4b77226d906..50a1bffdd053 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -27,7 +27,7 @@
 #include <linux/mutex.h>
 #include <console.h>
 #include <malloc.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <module.h>
 
 #include "internal.h"
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 958f46b0ead0..0d8bb8f418f4 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -31,7 +31,7 @@
 #include <linux/log2.h>
 #include <linux/spinlock.h>
 #include <malloc.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <stdio.h>
 #include <globalvar.h>
 #include <init.h>
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 825df2aeddbd..9ddcfbf1c25c 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -17,7 +17,7 @@
  * squashfs.h
  */
 
-#include <printk.h>
+#include <linux/printk.h>
 #include <fs.h>
 #include <linux/fs.h>
 #include <linux/kernel.h>
diff --git a/include/common.h b/include/common.h
index 693f5bf97029..083b76cfedc9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -18,7 +18,7 @@
 #include <linux/stddef.h>
 #include <asm/common.h>
 #include <asm/io.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 /*
  * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 82c52dd93309..83fa9223decc 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -4,6 +4,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <linux/slab.h>
+#include <printk.h>
 
 #define vmalloc(len)		malloc(len)
 #define __vmalloc(len, mode, pgsz)	malloc(len)
@@ -13,20 +14,6 @@ static inline void vfree(const void *addr)
 	free((void *)addr);
 }
 
-#define KERN_EMERG      ""   /* system is unusable                   */
-#define KERN_ALERT      ""   /* action must be taken immediately     */
-#define KERN_CRIT       ""   /* critical conditions                  */
-#define KERN_ERR        ""   /* error conditions                     */
-#define KERN_WARNING    ""   /* warning conditions                   */
-#define KERN_NOTICE     ""   /* normal but significant condition     */
-#define KERN_INFO       ""   /* informational                        */
-#define KERN_DEBUG      ""   /* debug-level messages                 */
-#define KERN_CONT       ""
-
-#define printk			printf
-
-#define pr_warn			pr_warning
-
 #define __init
 
 #define MODULE_AUTHOR(x)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index b17e590f5e91..f9c464518021 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -11,7 +11,7 @@
 
 #include <driver.h>
 #include <errno.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/mtd/mtd-abi.h>
diff --git a/include/linux/printk.h b/include/linux/printk.h
new file mode 100644
index 000000000000..3f370adb90ec
--- /dev/null
+++ b/include/linux/printk.h
@@ -0,0 +1,173 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __LINUX_PRINTK_H
+#define __LINUX_PRINTK_H
+
+#include <linux/list.h>
+#include <printk.h>
+
+#define MSG_EMERG      0    /* system is unusable */
+#define MSG_ALERT      1    /* action must be taken immediately */
+#define MSG_CRIT       2    /* critical conditions */
+#define MSG_ERR        3    /* error conditions */
+#define MSG_WARNING    4    /* warning conditions */
+#define MSG_NOTICE     5    /* normal but significant condition */
+#define MSG_INFO       6    /* informational */
+#define MSG_DEBUG      7    /* debug-level messages */
+#define MSG_VDEBUG     8    /* verbose debug messages */
+
+#ifdef VERBOSE_DEBUG
+#define LOGLEVEL	MSG_VDEBUG
+#elif defined DEBUG
+#define LOGLEVEL	MSG_DEBUG
+#else
+#define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
+#endif
+
+/* debugging and troubleshooting/diagnostic helpers. */
+struct device_d;
+
+#ifndef CONFIG_CONSOLE_NONE
+int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+	__attribute__ ((format(__printf__, 3, 4)));
+#else
+static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+{
+	return 0;
+}
+#endif
+
+#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
+	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+int pr_print(int level, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+#else
+static int pr_print(int level, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+static inline int pr_print(int level, const char *format, ...)
+{
+	return 0;
+}
+#endif
+
+#define __dev_printf(level, dev, format, args...) \
+	({	\
+		(level) <= LOGLEVEL ? dev_printf((level), (dev), (format), ##args) : 0; \
+	 })
+
+
+#define dev_emerg(dev, format, arg...)		\
+	__dev_printf(0, (dev) , format , ## arg)
+#define dev_alert(dev, format, arg...)		\
+	__dev_printf(1, (dev) , format , ## arg)
+#define dev_crit(dev, format, arg...)		\
+	__dev_printf(2, (dev) , format , ## arg)
+#define dev_err(dev, format, arg...)		\
+	__dev_printf(3, (dev) , format , ## arg)
+#define dev_warn(dev, format, arg...)		\
+	__dev_printf(4, (dev) , format , ## arg)
+#define dev_notice(dev, format, arg...)		\
+	__dev_printf(5, (dev) , format , ## arg)
+#define dev_info(dev, format, arg...)		\
+	__dev_printf(6, (dev) , format , ## arg)
+#define dev_dbg(dev, format, arg...)		\
+	__dev_printf(7, (dev) , format , ## arg)
+#define dev_vdbg(dev, format, arg...)		\
+	__dev_printf(8, (dev) , format , ## arg)
+
+#define __pr_printk(level, format, args...) \
+	({	\
+		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
+	 })
+
+#ifndef pr_fmt
+#define pr_fmt(fmt) fmt
+#endif
+
+#define pr_emerg(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
+#define pr_alert(fmt, arg...)	__pr_printk(1, pr_fmt(fmt), ##arg)
+#define pr_crit(fmt, arg...)	__pr_printk(2, pr_fmt(fmt), ##arg)
+#define pr_err(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
+#define pr_warning(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
+#define pr_notice(fmt, arg...)	__pr_printk(5, pr_fmt(fmt), ##arg)
+#define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
+#define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
+#define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
+#define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
+#define pr_cont(fmt, arg...)	__pr_printk(-1, fmt, ##arg)
+
+#define pr_warn			pr_warning
+
+int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
+		   int swab);
+int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbytes,
+			int size, int swab, const char *format, ...);
+
+#define pr_memory_display(level, addr, offs, nbytes, size, swab) \
+	({	\
+		(level) <= LOGLEVEL ? __pr_memory_display((level), (addr), \
+				(offs), (nbytes), (size), (swab), pr_fmt("")) : 0; \
+	 })
+
+struct log_entry {
+	struct list_head list;
+	char *msg;
+	void *dummy;
+	uint64_t timestamp;
+	int level;
+};
+
+extern struct list_head barebox_logbuf;
+
+extern void log_clean(unsigned int limit);
+
+#define BAREBOX_LOG_PRINT_RAW		BIT(2)
+#define BAREBOX_LOG_DIFF_TIME		BIT(1)
+#define BAREBOX_LOG_PRINT_TIME		BIT(0)
+
+#define BAREBOX_LOG_PRINT_VDEBUG	BIT(8)
+#define BAREBOX_LOG_PRINT_DEBUG		BIT(7)
+#define BAREBOX_LOG_PRINT_INFO		BIT(6)
+#define BAREBOX_LOG_PRINT_NOTICE	BIT(5)
+#define BAREBOX_LOG_PRINT_WARNING	BIT(4)
+#define BAREBOX_LOG_PRINT_ERR		BIT(3)
+#define BAREBOX_LOG_PRINT_CRIT		BIT(2)
+#define BAREBOX_LOG_PRINT_ALERT		BIT(1)
+#define BAREBOX_LOG_PRINT_EMERG		BIT(0)
+
+int log_writefile(const char *filepath);
+void log_print(unsigned flags, unsigned levels);
+
+struct va_format {
+	const char *fmt;
+	va_list *va;
+};
+
+#if LOGLEVEL >= MSG_DEBUG
+#define print_hex_dump_debug(prefix_str, prefix_type, rowsize,		\
+			     groupsize, buf, len, ascii)		\
+	print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, rowsize,	\
+		       groupsize, buf, len, ascii)
+#else
+static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
+                                        int rowsize, int groupsize,
+                                        const void *buf, size_t len, bool ascii)
+{
+}
+#endif
+
+/**
+ * print_hex_dump_bytes - shorthand form of print_hex_dump() with default params
+ * @prefix_str: string to prefix each line with;
+ *  caller supplies trailing spaces for alignment if desired
+ * @prefix_type: controls whether prefix of an offset, address, or none
+ *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
+ * @buf: data blob to dump
+ * @len: number of bytes in the @buf
+ *
+ * Calls print_hex_dump(), with log level of KERN_DEBUG,
+ * rowsize of 16, groupsize of 1, and ASCII output included.
+ */
+#define print_hex_dump_bytes(prefix_str, prefix_type, buf, len)	\
+	print_hex_dump_debug(prefix_str, prefix_type, 16, 1, buf, len, true)
+
+#endif
diff --git a/include/printk.h b/include/printk.h
index f83ad3bf07f0..0915efbadd51 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -2,97 +2,28 @@
 #ifndef __PRINTK_H
 #define __PRINTK_H
 
-#include <linux/list.h>
-
-#define MSG_EMERG      0    /* system is unusable */
-#define MSG_ALERT      1    /* action must be taken immediately */
-#define MSG_CRIT       2    /* critical conditions */
-#define MSG_ERR        3    /* error conditions */
-#define MSG_WARNING    4    /* warning conditions */
-#define MSG_NOTICE     5    /* normal but significant condition */
-#define MSG_INFO       6    /* informational */
-#define MSG_DEBUG      7    /* debug-level messages */
-#define MSG_VDEBUG     8    /* verbose debug messages */
-
-#ifdef VERBOSE_DEBUG
-#define LOGLEVEL	MSG_VDEBUG
-#elif defined DEBUG
-#define LOGLEVEL	MSG_DEBUG
-#else
-#define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
-#endif
-
-/* debugging and troubleshooting/diagnostic helpers. */
-struct device_d;
-
-#ifndef CONFIG_CONSOLE_NONE
-int dev_printf(int level, const struct device_d *dev, const char *format, ...)
-	__attribute__ ((format(__printf__, 3, 4)));
-#else
-static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
-{
-	return 0;
-}
-#endif
+#define KERN_EMERG      ""   /* system is unusable                   */
+#define KERN_ALERT      ""   /* action must be taken immediately     */
+#define KERN_CRIT       ""   /* critical conditions                  */
+#define KERN_ERR        ""   /* error conditions                     */
+#define KERN_WARNING    ""   /* warning conditions                   */
+#define KERN_NOTICE     ""   /* normal but significant condition     */
+#define KERN_INFO       ""   /* informational                        */
+#define KERN_DEBUG      ""   /* debug-level messages                 */
+#define KERN_CONT       ""
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
 	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
-int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
+int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 #else
-static int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
-static inline int pr_print(int level, const char *format, ...)
+static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+static inline int printf(const char *fmt, ...)
 {
 	return 0;
 }
 #endif
 
-#define __dev_printf(level, dev, format, args...) \
-	({	\
-		(level) <= LOGLEVEL ? dev_printf((level), (dev), (format), ##args) : 0; \
-	 })
-
-
-#define dev_emerg(dev, format, arg...)		\
-	__dev_printf(0, (dev) , format , ## arg)
-#define dev_alert(dev, format, arg...)		\
-	__dev_printf(1, (dev) , format , ## arg)
-#define dev_crit(dev, format, arg...)		\
-	__dev_printf(2, (dev) , format , ## arg)
-#define dev_err(dev, format, arg...)		\
-	__dev_printf(3, (dev) , format , ## arg)
-#define dev_warn(dev, format, arg...)		\
-	__dev_printf(4, (dev) , format , ## arg)
-#define dev_notice(dev, format, arg...)		\
-	__dev_printf(5, (dev) , format , ## arg)
-#define dev_info(dev, format, arg...)		\
-	__dev_printf(6, (dev) , format , ## arg)
-#define dev_dbg(dev, format, arg...)		\
-	__dev_printf(7, (dev) , format , ## arg)
-#define dev_vdbg(dev, format, arg...)		\
-	__dev_printf(8, (dev) , format , ## arg)
-
-#define __pr_printk(level, format, args...) \
-	({	\
-		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
-	 })
-
-#ifndef pr_fmt
-#define pr_fmt(fmt) fmt
-#endif
-
-#define pr_emerg(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
-#define pr_alert(fmt, arg...)	__pr_printk(1, pr_fmt(fmt), ##arg)
-#define pr_crit(fmt, arg...)	__pr_printk(2, pr_fmt(fmt), ##arg)
-#define pr_err(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
-#define pr_warning(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
-#define pr_notice(fmt, arg...)	__pr_printk(5, pr_fmt(fmt), ##arg)
-#define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
-#define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
-#define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
-#define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
-#define pr_cont(fmt, arg...)	__pr_printk(-1, fmt, ##arg)
+#define printk			printf
 
 #define printk_once(fmt, ...)					\
 ({								\
@@ -104,51 +35,6 @@ static inline int pr_print(int level, const char *format, ...)
 	}							\
 })
 
-int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
-		   int swab);
-int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbytes,
-			int size, int swab, const char *format, ...);
-
-#define pr_memory_display(level, addr, offs, nbytes, size, swab) \
-	({	\
-		(level) <= LOGLEVEL ? __pr_memory_display((level), (addr), \
-				(offs), (nbytes), (size), (swab), pr_fmt("")) : 0; \
-	 })
-
-struct log_entry {
-	struct list_head list;
-	char *msg;
-	void *dummy;
-	uint64_t timestamp;
-	int level;
-};
-
-extern struct list_head barebox_logbuf;
-
-extern void log_clean(unsigned int limit);
-
-#define BAREBOX_LOG_PRINT_RAW		BIT(2)
-#define BAREBOX_LOG_DIFF_TIME		BIT(1)
-#define BAREBOX_LOG_PRINT_TIME		BIT(0)
-
-#define BAREBOX_LOG_PRINT_VDEBUG	BIT(8)
-#define BAREBOX_LOG_PRINT_DEBUG		BIT(7)
-#define BAREBOX_LOG_PRINT_INFO		BIT(6)
-#define BAREBOX_LOG_PRINT_NOTICE	BIT(5)
-#define BAREBOX_LOG_PRINT_WARNING	BIT(4)
-#define BAREBOX_LOG_PRINT_ERR		BIT(3)
-#define BAREBOX_LOG_PRINT_CRIT		BIT(2)
-#define BAREBOX_LOG_PRINT_ALERT		BIT(1)
-#define BAREBOX_LOG_PRINT_EMERG		BIT(0)
-
-int log_writefile(const char *filepath);
-void log_print(unsigned flags, unsigned levels);
-
-struct va_format {
-	const char *fmt;
-	va_list *va;
-};
-
 enum {
 	DUMP_PREFIX_NONE,
 	DUMP_PREFIX_ADDRESS,
@@ -161,32 +47,4 @@ extern void print_hex_dump(const char *level, const char *prefix_str,
 			   int prefix_type, int rowsize, int groupsize,
 			   const void *buf, size_t len, bool ascii);
 
-#if LOGLEVEL >= MSG_DEBUG
-#define print_hex_dump_debug(prefix_str, prefix_type, rowsize,		\
-			     groupsize, buf, len, ascii)		\
-	print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, rowsize,	\
-		       groupsize, buf, len, ascii)
-#else
-static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
-                                        int rowsize, int groupsize,
-                                        const void *buf, size_t len, bool ascii)
-{
-}
-#endif
-
-/**
- * print_hex_dump_bytes - shorthand form of print_hex_dump() with default params
- * @prefix_str: string to prefix each line with;
- *  caller supplies trailing spaces for alignment if desired
- * @prefix_type: controls whether prefix of an offset, address, or none
- *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
- * @buf: data blob to dump
- * @len: number of bytes in the @buf
- *
- * Calls print_hex_dump(), with log level of KERN_DEBUG,
- * rowsize of 16, groupsize of 1, and ASCII output included.
- */
-#define print_hex_dump_bytes(prefix_str, prefix_type, buf, len)	\
-	print_hex_dump_debug(prefix_str, prefix_type, 16, 1, buf, len, true)
-
 #endif
diff --git a/include/stdio.h b/include/stdio.h
index 1cb11e88deea..49f3d0cf77b3 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -4,6 +4,7 @@
 
 #include <stdarg.h>
 #include <console.h>
+#include <printk.h>
 
 /*
  * STDIO based functions (can always be used)
@@ -71,8 +72,6 @@ static inline int ctrlc (void)
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
 	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
-int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-
 static inline int puts(const char *s)
 {
 	return console_puts(CONSOLE_STDOUT, s);
@@ -83,11 +82,6 @@ static inline void putchar(char c)
 	console_putc(CONSOLE_STDOUT, c);
 }
 #else
-static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-static inline int printf(const char *fmt, ...)
-{
-	return 0;
-}
 static inline int puts(const char *s)
 {
 	return 0;
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 93f345e8817c..fb80ef9724d8 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -7,7 +7,7 @@
 #include <linux/types.h>
 #include <linux/ctype.h>
 #include <linux/log2.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <asm/unaligned.h>
 
 const char hex_asc[] = "0123456789abcdef";
diff --git a/lib/kasan/report.c b/lib/kasan/report.c
index b7b2d032eee0..79442c00f4cb 100644
--- a/lib/kasan/report.c
+++ b/lib/kasan/report.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <linux/bitops.h>
 #include <linux/kernel.h>
-#include <printk.h>
+#include <linux/printk.h>
 #include <asm-generic/sections.h>
 
 #include "kasan.h"
diff --git a/pbl/fdt.c b/pbl/fdt.c
index 18ddb9f48a6e..7a913c546af6 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/libfdt.h>
 #include <pbl.h>
-#include <printk.h>
+#include <linux/printk.h>
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

