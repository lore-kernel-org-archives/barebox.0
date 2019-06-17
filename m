Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S5-MJ
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j2-3h
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GC-Fd
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:43 +0200
Message-Id: <20190617150751.3421-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 04/12] driver: add stubs for hardware spinlocks
To: barebox@lists.infradead.org

Some STM32MP Linux drivers, which could be ported to barebox as part of
improved second stage barebox support, are using hardware spinlocks to
coordinate access between the three processors. While barebox only
uses one of the two Cortex-A cores, spin locks may still be necessary
because of firmware loaded unto the Cortex-M.

To ease porting these drivers, without having to import the hw spinlock
driver now, add stubs for the functions.

The stubs will we be reused when CONFIG_HWSPINLOCK is introduced,
but is disabled in config. The API is oriented after the implementation
in U-Boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/hwspinlock.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 include/hwspinlock.h

diff --git a/include/hwspinlock.h b/include/hwspinlock.h
new file mode 100644
index 000000000000..ba21c6d29695
--- /dev/null
+++ b/include/hwspinlock.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ */
+
+#ifndef __HWSPINLOCK_H
+#define __HWSPINLOCK_H
+
+struct hwspinlock { /* TODO to be implemented */ };
+
+static inline int hwspinlock_get_by_index(struct device_d *dev,
+					  int index,
+					  struct hwspinlock *hws)
+{
+	return -ENOSYS;
+}
+
+static inline int hwspinlock_lock_timeout(struct hwspinlock *hws,
+					  int timeout_ms)
+{
+	return -ENOSYS;
+}
+
+static inline int hwspinlock_unlock(struct hwspinlock *hws)
+{
+	return -ENOSYS;
+}
+
+struct hwspinlock_ops { /* TODO to be implemented */ };
+
+#endif /* __HWSPINLOCK_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
