Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LV-MR
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:05 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4AE27E0010
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:48 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:39 +0200
Message-Id: <20190827143239.15682-7-ahmad@a3f.at>
In-Reply-To: <20190827143239.15682-1-ahmad@a3f.at>
References: <20190827143239.15682-1-ahmad@a3f.at>
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
Subject: [PATCH 6/6] hwrng: add sandbox driver interface to host /dev/random
To: barebox@lists.infradead.org

Linux as well as other operating systems can provide /dev/random and
/dev/urandom device to service userspace need for randomness.
Add a driver to use /dev/random for blocking and /dev/urandom for
non-blocking barebox random numbers.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/Makefile                   |  1 +
 arch/sandbox/board/board.c                    |  7 +++
 arch/sandbox/board/dev-random.c               | 24 +++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  7 +++
 drivers/hw_random/Kconfig                     |  8 +++
 drivers/hw_random/Makefile                    |  1 +
 drivers/hw_random/dev-random.c                | 63 +++++++++++++++++++
 7 files changed, 111 insertions(+)
 create mode 100644 arch/sandbox/board/dev-random.c
 create mode 100644 drivers/hw_random/dev-random.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index b6c271c858c6..26f6cb192269 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -5,5 +5,6 @@ obj-y += console.o
 obj-y += devices.o
 obj-y += dtb.o
 obj-y += poweroff.o
+obj-y += dev-random.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 1f6392d15ed3..ad2bc910c342 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -42,6 +42,11 @@ static struct device_d sdl_device = {
 	.platform_data = &mode,
 };
 
+static struct device_d devrandom_device = {
+	.id	  = DEVICE_ID_DYNAMIC,
+	.name     = "devrandom",
+};
+
 static int devices_init(void)
 {
 	platform_device_register(&tap_device);
@@ -54,6 +59,8 @@ static int devices_init(void)
 
 	platform_device_register(&sdl_device);
 
+	platform_device_register(&devrandom_device);
+
 	return 0;
 }
 
diff --git a/arch/sandbox/board/dev-random.c b/arch/sandbox/board/dev-random.c
new file mode 100644
index 000000000000..f65e5ef6e5ed
--- /dev/null
+++ b/arch/sandbox/board/dev-random.c
@@ -0,0 +1,24 @@
+#include <common.h>
+#include <mach/linux.h>
+
+devrandom_t *devrandom_init(void) {
+	devrandom_t *fds = xzalloc(sizeof(*fds));
+
+	fds->randomfd = linux_open("/dev/random", false);
+	if (fds->randomfd < 0)
+		return ERR_PTR(-EPERM);
+
+	fds->urandomfd = linux_open("/dev/urandom", false);
+	if (fds->urandomfd < 0)
+		return ERR_PTR(-EPERM);
+
+	return fds;
+}
+
+int devrandom_read(devrandom_t *devrandom, void *buf, size_t len, int wait)
+{
+	if (wait)
+		return linux_read(devrandom->randomfd, buf, len);
+
+	return linux_read(devrandom->urandomfd, buf, len);
+}
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index c344285473e6..1e64d41c6a5e 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -51,4 +51,11 @@ void barebox_libftdi1_gpio_set_value(struct ft2232_bitbang *ftbb,
 int barebox_libftdi1_update(struct ft2232_bitbang *ftbb);
 void barebox_libftdi1_close(void);
 
+typedef struct {
+	int randomfd;
+	int urandomfd;
+} devrandom_t;
+devrandom_t *devrandom_init(void);
+int devrandom_read(devrandom_t *devrandom, void *buf, size_t len, int wait);
+
 #endif /* __ASM_ARCH_LINUX_H */
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index d1297a48d0bb..c57928204d30 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -14,4 +14,12 @@ config HWRNG_MXC_RNGC
 	  This driver provides kernel-side support for the Random Number
 	  Generator hardware found on some Freescale i.MX processors.
 
+config HWRNG_DEV_RANDOM
+	tristate "Linux /dev/random and /dev/urandom RNG"
+	depends on SANDBOX
+	default y
+	help
+	  This driver allows use of the host provided /dev/random
+	  and /dev/urandom as barebox HWRNGs.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 79c238c48d60..8be62f38b740 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_HWRNG)		+= core.o
 obj-$(CONFIG_HWRNG_MXC_RNGC) += mxc-rngc.o
+obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
diff --git a/drivers/hw_random/dev-random.c b/drivers/hw_random/dev-random.c
new file mode 100644
index 000000000000..2170db7437ce
--- /dev/null
+++ b/drivers/hw_random/dev-random.c
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/hw_random.h>
+#include <mach/linux.h>
+
+struct devrandom_rnd {
+	struct hwrng hwrng;
+	devrandom_t *priv;
+};
+
+static inline struct devrandom_rnd *to_rnd(struct hwrng *hwrng)
+{
+	return container_of(hwrng, struct devrandom_rnd, hwrng);
+}
+
+static int devrandom_rnd_read(struct hwrng *hwrng, void *buf, size_t max, bool wait)
+{
+	return devrandom_read(to_rnd(hwrng)->priv, buf, max, wait);
+}
+
+static int devrandom_rnd_init(struct hwrng *hwrng)
+{
+	devrandom_t *devrandom = devrandom_init();
+	if (IS_ERR(devrandom))
+		return PTR_ERR(devrandom);
+
+	to_rnd(hwrng)->priv = devrandom;
+	return 0;
+}
+
+static int devrandom_rnd_probe(struct device_d *dev)
+{
+	struct devrandom_rnd *rnd;
+	int ret;
+
+	rnd = xzalloc(sizeof(*rnd));
+
+	rnd->hwrng.name = dev->name;
+	rnd->hwrng.read = devrandom_rnd_read;
+	rnd->hwrng.init = devrandom_rnd_init;
+
+	ret = hwrng_register(dev, &rnd->hwrng);
+	if (ret) {
+		dev_err(dev, "failed to register: %s\n", strerror(-ret));
+
+		return ret;
+	}
+
+	dev_info(dev, "Registered.\n");
+
+	return 0;
+}
+
+static struct driver_d devrandom_rnd_driver = {
+	.name	= "devrandom",
+	.probe	= devrandom_rnd_probe,
+};
+device_platform_driver(devrandom_rnd_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
