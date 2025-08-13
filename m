Delivery-date: Wed, 13 Aug 2025 16:51:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCom-000CgO-1P
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoj-0006ri-A5
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i19gOWtoUbYMnUiRayLmSS/M1247Bl+8CbfG2JSVNtI=; b=h24XN/XrGMSjzbKvjiWzGxk5dF
	QemYPoY2cNNmvsdYOGxHOpZx/Z4/ABlVutjC+tgwgBXIW7KwXOvgD/zZQatoeI2zjhit+z0OejLeI
	EwjhDCZlwO1Xq6njwvNiIeuuaqpy1Ddhsf2XnxB1404Bspd7NVeNErVJ/ox2/KqpYFRvvDkfUHn3n
	NKDMTiV4pEYXO1WZEP2gCi5irYgiiieHFDXkCIqPseMat9XdwWQ+J+MGzt8Y4OOFVVghKsUEFyLIF
	+VqaQI2sty6bW9kNP2Gzf++VuUeCJamQxv1iv1rtAmXY/73Og3V0pzPk8wOuYkV6tI4hj5dqo0wwm
	XOKn0NrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCnx-0000000Dxru-2Wh5;
	Wed, 13 Aug 2025 14:50:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvJm-0MP3
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYB-0003xl-1Z; Wed, 13 Aug 2025 16:33:59 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:33 +0200
Message-Id: <20250813143345.3758653-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_136928_68F50BEE 
X-CRM114-Status: GOOD (  15.56  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/13] common: introduce structured I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Structured I/O is an alternative method for shell commands input and
output. Instead of consuming and producing lines of unstructured
strings, commands receive objects with dedicated attributes.

In the future, once enough commands support this, we could make it
available in the shell as the pipe operator.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - replace wrong select PARAM with select PARAMETER
---
 common/Kconfig     |  4 ++++
 common/Makefile    |  1 +
 common/structio.c  | 56 ++++++++++++++++++++++++++++++++++++++++++++++
 include/structio.h | 44 ++++++++++++++++++++++++++++++++++++
 4 files changed, 105 insertions(+)
 create mode 100644 common/structio.c
 create mode 100644 include/structio.h

diff --git a/common/Kconfig b/common/Kconfig
index 67aff85efc9b..b32a7cb2960b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -55,6 +55,10 @@ config BLOCK_STATS
 config FILETYPE
 	bool
 
+config STRUCTIO
+	bool
+	select PARAMETER
+
 config BINFMT
 	bool
 	select FILETYPE
diff --git a/common/Makefile b/common/Makefile
index b50b92122293..7a91ef21f79b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -2,6 +2,7 @@
 
 obj-y				+= boards/
 obj-y				+= memory.o
+obj-$(CONFIG_STRUCTIO)		+= structio.o
 obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
diff --git a/common/structio.c b/common/structio.c
new file mode 100644
index 000000000000..935c4628dd77
--- /dev/null
+++ b/common/structio.c
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <structio.h>
+#include <command.h>
+#include <device.h>
+
+static struct bobject *active_capture;
+
+struct bobject *structio_active(void)
+{
+	return active_capture;
+}
+
+int structio_run_command(struct bobject **bret, const char *cmd)
+{
+	struct bobject *bobj;
+	int ret;
+
+	if (!bret)
+		return run_command(cmd);
+
+	active_capture = bobj = bobject_alloc("capture");
+	bobj->local = true;
+
+	ret = run_command(cmd);
+
+	active_capture = NULL;
+
+	if (ret) {
+		bobject_free(bobj);
+		return ret;
+	}
+
+	*bret = bobj;
+	return 0;
+}
+
+int structio_devinfo(struct bobject **bret, struct device *dev)
+{
+	struct bobject *bobj;
+
+	if (!bret) {
+		devinfo(dev);
+		return 0;
+	}
+
+	active_capture = bobj = bobject_alloc("devinfo");
+	bobj->local = true;
+
+	devinfo(dev);
+
+	active_capture = NULL;
+
+	*bret = bobj;
+	return 0;
+}
diff --git a/include/structio.h b/include/structio.h
new file mode 100644
index 000000000000..1c97b4c29b79
--- /dev/null
+++ b/include/structio.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __STRUCTIO_H_
+#define __STRUCTIO_H_
+
+#include <bobject.h>
+
+#ifdef CONFIG_STRUCTIO
+struct bobject *structio_active(void);
+int structio_run_command(struct bobject **, const char *cmd);
+int structio_devinfo(struct bobject **, struct device *dev);
+#else
+#define structio_active() NULL
+static inline int structio_run_command(struct bobject **bobj, const char *cmd)
+{
+	return -ENOSYS;
+}
+
+static inline int structio_devinfo(struct bobject **bobj, struct device *dev)
+{
+	return -ENOSYS;
+}
+#endif
+
+#define stprintf(name, fmt, ...) do { \
+	struct bobject *__bobj = structio_active(); \
+	if (__bobj) \
+		bobject_add_param_fixed(__bobj, name, fmt, ##__VA_ARGS__); \
+	else \
+		printf(name ": " fmt "\n", ##__VA_ARGS__); \
+} while (0)
+
+#define stprintf_prefix(name, prefix, fmt, ...) do { \
+	struct bobject *__bobj = structio_active(); \
+	if (__bobj) \
+		bobject_add_param_fixed(__bobj, name, fmt, ##__VA_ARGS__); \
+	else \
+		printf(prefix fmt "\n", ##__VA_ARGS__); \
+} while (0)
+
+#define stprintf_single(name, fmt...) stprintf_prefix(name, "", fmt)
+
+#define stnoprintf(args...) ({ structio_active() ? 0 : (printf(args), 1); })
+
+#endif
-- 
2.39.5



