Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsA8w-0000vW-Ng
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 09:36:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jan 2012 10:36:39 +0100
Message-Id: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add pwm core support
To: barebox@lists.infradead.org

This patch adds framework support for PWM (pulse width modulation)
devices.
A new pwm can be registered from a hardware driver using
pwmchip_add(). It can then be requested from a client driver using
pwm_request(). A string is used as a unique identifier for the
pwms. It should usually be initialized by the hardware drivers
using dev_name(dev). The client API is the same as currently
in the Linux Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

This patch is currently compile tested only due to the lack of
client drivers.

 drivers/Kconfig      |    2 +
 drivers/Makefile     |    1 +
 drivers/pwm/Kconfig  |   12 ++++
 drivers/pwm/Makefile |    1 +
 drivers/pwm/core.c   |  163 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/pwm.h        |   63 +++++++++++++++++++
 6 files changed, 242 insertions(+), 0 deletions(-)
 create mode 100644 drivers/pwm/Kconfig
 create mode 100644 drivers/pwm/Makefile
 create mode 100644 drivers/pwm/core.c
 create mode 100644 include/pwm.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index c4e1517..52eedd9 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -15,4 +15,6 @@ source "drivers/mfd/Kconfig"
 source "drivers/led/Kconfig"
 source "drivers/eeprom/Kconfig"
 
+source "drivers/pwm/Kconfig"
+
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 592c39e..380c2f1 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -13,3 +13,4 @@ obj-y	+= clk/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
 obj-y	+= eeprom/
+obj-$(CONFIG_PWM) += pwm/
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
new file mode 100644
index 0000000..93c1052
--- /dev/null
+++ b/drivers/pwm/Kconfig
@@ -0,0 +1,12 @@
+menuconfig PWM
+	bool "PWM Support"
+	help
+	  This enables PWM support through the generic PWM framework.
+	  You only need to enable this, if you also want to enable
+	  one or more of the PWM drivers below.
+
+	  If unsure, say N.
+
+if PWM
+
+endif
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
new file mode 100644
index 0000000..3469c3d
--- /dev/null
+++ b/drivers/pwm/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_PWM)		+= core.o
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
new file mode 100644
index 0000000..af30edf
--- /dev/null
+++ b/drivers/pwm/core.c
@@ -0,0 +1,163 @@
+/*
+ * Generic pwmlib implementation
+ *
+ * Copyright (C) 2011 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License as published by
+ *  the Free Software Foundation; either version 2, or (at your option)
+ *  any later version.
+ *
+ *  This program is distributed in the hope that it will be useful,
+ *  but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; see the file COPYING.  If not, write to
+ *  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <pwm.h>
+#include <linux/list.h>
+
+struct pwm_device {
+	struct			pwm_chip *chip;
+	unsigned long		flags;
+#define FLAG_REQUESTED	0
+#define FLAG_ENABLED	1
+	struct list_head	node;
+};
+
+static LIST_HEAD(pwm_list);
+
+static struct pwm_device *_find_pwm(const char *devname)
+{
+	struct pwm_device *pwm;
+
+	list_for_each_entry(pwm, &pwm_list, node) {
+		if (!strcmp(pwm->chip->devname, devname))
+			return pwm;
+	}
+
+	return NULL;
+}
+
+/**
+ * pwmchip_add() - register a new pwm
+ * @chip: the pwm
+ *
+ * register a new pwm. pwm->devname must be initialized, usually
+ * from dev_name(dev) from the hardware driver.
+ */
+int pwmchip_add(struct pwm_chip *chip)
+{
+	struct pwm_device *pwm;
+	int ret = 0;
+
+	if (_find_pwm(chip->devname))
+		return -EBUSY;
+
+	pwm = xzalloc(sizeof(*pwm));
+	pwm->chip = chip;
+
+	list_add_tail(&pwm->node, &pwm_list);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pwmchip_add);
+
+/**
+ * pwmchip_remove() - remove a pwm
+ * @chip: the pwm
+ *
+ * remove a pwm. This function may return busy if the pwm is still requested.
+ */
+int pwmchip_remove(struct pwm_chip *chip)
+{
+	struct pwm_device *pwm;
+
+	pwm = _find_pwm(chip->devname);
+	if (!pwm)
+		return -ENOENT;
+
+	if (test_bit(FLAG_REQUESTED, &pwm->flags))
+		return -EBUSY;
+
+	list_del(&pwm->node);
+
+	kfree(pwm);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pwmchip_remove);
+
+/*
+ * pwm_request - request a PWM device
+ */
+struct pwm_device *pwm_request(const char *devname)
+{
+	struct pwm_device *pwm;
+	int ret;
+
+	pwm = _find_pwm(devname);
+	if (!pwm)
+		return NULL;
+
+	if (test_bit(FLAG_REQUESTED, &pwm->flags))
+		return NULL;
+
+	if (pwm->chip->ops->request) {
+		ret = pwm->chip->ops->request(pwm->chip);
+		if (ret)
+			return NULL;
+	}
+
+	set_bit(FLAG_REQUESTED, &pwm->flags);
+
+	return pwm;
+}
+EXPORT_SYMBOL_GPL(pwm_request);
+
+/*
+ * pwm_free - free a PWM device
+ */
+void pwm_free(struct pwm_device *pwm)
+{
+	if (!test_and_clear_bit(FLAG_REQUESTED, &pwm->flags))
+		return;
+}
+EXPORT_SYMBOL_GPL(pwm_free);
+
+/*
+ * pwm_config - change a PWM device configuration
+ */
+int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
+{
+	return pwm->chip->ops->config(pwm->chip, duty_ns, period_ns);
+}
+EXPORT_SYMBOL_GPL(pwm_config);
+
+/*
+ * pwm_enable - start a PWM output toggling
+ */
+int pwm_enable(struct pwm_device *pwm)
+{
+	if (!test_and_set_bit(FLAG_ENABLED, &pwm->flags))
+		return pwm->chip->ops->enable(pwm->chip);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pwm_enable);
+
+/*
+ * pwm_disable - stop a PWM output toggling
+ */
+void pwm_disable(struct pwm_device *pwm)
+{
+	if (test_and_clear_bit(FLAG_ENABLED, &pwm->flags))
+		pwm->chip->ops->disable(pwm->chip);
+}
+EXPORT_SYMBOL_GPL(pwm_disable);
diff --git a/include/pwm.h b/include/pwm.h
new file mode 100644
index 0000000..80f88b1
--- /dev/null
+++ b/include/pwm.h
@@ -0,0 +1,63 @@
+#ifndef __PWM_H
+#define __PWM_H
+
+struct pwm_device;
+
+/*
+ * pwm_request - request a PWM device
+ */
+struct pwm_device *pwm_request(const char *pwmname);
+
+/*
+ * pwm_free - free a PWM device
+ */
+void pwm_free(struct pwm_device *pwm);
+
+/*
+ * pwm_config - change a PWM device configuration
+ */
+int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns);
+
+/*
+ * pwm_enable - start a PWM output toggling
+ */
+int pwm_enable(struct pwm_device *pwm);
+
+/*
+ * pwm_disable - stop a PWM output toggling
+ */
+void pwm_disable(struct pwm_device *pwm);
+
+struct pwm_chip;
+
+/**
+ * struct pwm_ops - PWM operations
+ * @request: optional hook for requesting a PWM
+ * @free: optional hook for freeing a PWM
+ * @config: configure duty cycles and period length for this PWM
+ * @enable: enable PWM output toggling
+ * @disable: disable PWM output toggling
+ */
+struct pwm_ops {
+	int (*request)(struct pwm_chip *chip);
+	void (*free)(struct pwm_chip *chip);
+	int (*config)(struct pwm_chip *chip, int duty_ns,
+						int period_ns);
+	int (*enable)(struct pwm_chip *chip);
+	void (*disable)(struct pwm_chip *chip);
+};
+
+/**
+ * struct pwm_chip - abstract a PWM
+ * @devname: unique identifier for this pwm
+ * @ops: The callbacks for this PWM
+ */
+struct pwm_chip {
+	const char		*devname;
+	struct pwm_ops		*ops;
+};
+
+int pwmchip_add(struct pwm_chip *chip);
+int pwmchip_remove(struct pwm_chip *chip);
+
+#endif /* __PWM_H */
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
