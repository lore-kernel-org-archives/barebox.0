Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDn2c-0005dG-Lp
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 10:00:01 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 27 Sep 2019 11:59:52 +0200
Message-Id: <20190927095954.13168-3-bst@pengutronix.de>
In-Reply-To: <20190927095954.13168-1-bst@pengutronix.de>
References: <20190927095954.13168-1-bst@pengutronix.de>
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
Subject: [PATCH v4 2/4] common: machine_id: introduce machine id generation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Bastian Krause <bst@pengutronix.de>

This patch adds functionality to pass device-specific information that
will be hashed to generate a persistent unique machine id. It is then
available as global.machine_id. It can be overwritten with
nv.machine_id if necessary. Passing the machine id to the kernel is
done in a separate patch.

Note: if multiple sources provide hashable device-specific information
(via machine_id_set_hashable()) the information provided by the last call
prior to the late initcall set_machine_id() is used to generate the
machine id from. Thus when updating barebox the machine id might change.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/Kconfig       | 18 ++++++++++++
 common/Makefile      |  1 +
 common/machine_id.c  | 69 ++++++++++++++++++++++++++++++++++++++++++++
 include/machine_id.h | 16 ++++++++++
 4 files changed, 104 insertions(+)
 create mode 100644 common/machine_id.c
 create mode 100644 include/machine_id.h

diff --git a/common/Kconfig b/common/Kconfig
index cafaadb3d4..7c56eb469e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -982,6 +982,24 @@ config RESET_SOURCE
 	  of the reset and why the bootloader is currently running. It can be
 	  useful for any kind of system recovery or repair.
 
+config MACHINE_ID
+	bool "pass machine-id to kernel"
+	depends on FLEXIBLE_BOOTARGS
+	depends on SHA1
+	help
+	  Sets the linux.bootargs.machine_id global variable with a value of
+	  systemd.machine_id=UID. The UID is a persistent device-specific
+	  id. It is a hash over device-specific information provided by various
+	  sources.
+
+	  Note: if multiple sources provide hashable device-specific information
+	  (via machine_id_set_hashable()) the information provided by the last call
+	  prior to the late initcall set_machine_id() is used to generate the
+	  machine id from. Thus when updating barebox the machine id might change.
+
+	  Note: if no hashable information is available no machine id will be passed
+	  to the kernel.
+
 endmenu
 
 menu "Debugging"
diff --git a/common/Makefile b/common/Makefile
index a284655fc1..10960169f9 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -11,6 +11,7 @@ obj-y				+= bootsource.o
 obj-$(CONFIG_ELF)		+= elf.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
+obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-y				+= version.o
 obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
diff --git a/common/machine_id.c b/common/machine_id.c
new file mode 100644
index 0000000000..e678bb7fe8
--- /dev/null
+++ b/common/machine_id.c
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Pengutronix, Bastian Krause <kernel@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <digest.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <crypto/sha.h>
+#include <machine_id.h>
+
+#define MACHINE_ID_LENGTH 32
+
+static void *__machine_id_hashable;
+static size_t __machine_id_hashable_length;
+
+
+void machine_id_set_hashable(const void *hashable, size_t len)
+{
+
+	__machine_id_hashable = xmemdup(hashable, len);
+	__machine_id_hashable_length = len;
+}
+
+static int machine_id_set_bootarg(void)
+{
+	struct digest *digest = NULL;
+	unsigned char machine_id[SHA1_DIGEST_SIZE];
+	char hex_machine_id[MACHINE_ID_LENGTH];
+	char *env_machine_id;
+	int ret = 0;
+
+	/* nothing to do if no hashable information provided */
+	if (!__machine_id_hashable)
+		goto out;
+
+	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
+	ret = digest_init(digest);
+	if (ret)
+		goto out;
+
+	ret = digest_update(digest, __machine_id_hashable,
+			    __machine_id_hashable_length);
+	if (ret)
+		goto out;
+
+	ret = digest_final(digest, machine_id);
+	if (ret)
+		goto out;
+
+	/* use the first 16 bytes of the sha1 hash as the machine id */
+	bin2hex(hex_machine_id, machine_id, MACHINE_ID_LENGTH/2);
+
+	env_machine_id = basprintf("%.*s", MACHINE_ID_LENGTH, hex_machine_id);
+	globalvar_add_simple("machine_id", env_machine_id);
+	free(env_machine_id);
+
+out:
+	globalvar_add_simple("machine_id", NULL);
+
+	digest_free(digest);
+	return ret;
+
+}
+late_initcall(machine_id_set_bootarg);
+
+BAREBOX_MAGICVAR_NAMED(global_machine_id, global.machine_id, "Persistent device-specific, hexadecimal, 32-character id");
diff --git a/include/machine_id.h b/include/machine_id.h
new file mode 100644
index 0000000000..31d5e0bb28
--- /dev/null
+++ b/include/machine_id.h
@@ -0,0 +1,16 @@
+#ifndef __MACHINE_ID_H__
+#define __MACHINE_ID_H__
+
+#if IS_ENABLED(CONFIG_MACHINE_ID)
+
+void machine_id_set_hashable(const void *hashable, size_t len);
+
+#else
+
+static inline void machine_id_set_hashable(const void *hashable, size_t len)
+{
+}
+
+#endif /* CONFIG_MACHINE_ID */
+
+#endif  /* __MACHINE_ID_H__ */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
