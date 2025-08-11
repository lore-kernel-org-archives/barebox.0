Delivery-date: Mon, 11 Aug 2025 14:30:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf9-009Kgz-02
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulReq-0005rf-Rv
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KNASNjPjseDpTfJ2NVW5Uk0xHsgGKBggcUyTat05+dk=; b=UfCUcpYd3I7ZVpRfXX+vJ6MJsr
	2Qy0Sir/4H7hj9DSgDhlJxIko2BvhrP+ssehqJRY8YJbNO8VjxiQ2LLvt10sM+2op6xAIsOFBdazY
	r7gRan5yfo9ai2g4M+i7R4S1+EodMsJBUqrPMhexSY2Bif3wp0FGR7sXg2bapO0It3S08sXDQfo7v
	7FXPUlT+p7UdjnnjuwQ/m4rgGgjv13uYN7nuIeGDU3VrY5dFTNRo3qzgMpYjIO8fNjVBWx+FtpMPU
	+O/HrCXBa/3+Jlx6uYYhiEQPmX+3GrVE9oqDzoZ/s13rt8r3DLna/4CUA51o1A77MlsKvUh68Tk5Z
	iIK3zY6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdx-00000007dxC-1n48;
	Mon, 11 Aug 2025 12:28:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dYB-3nFk
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRde-0004WP-DE; Mon, 11 Aug 2025 14:28:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:56 +0200
Message-Id: <20250811122824.1667791-17-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_941288_15834FB5 
X-CRM114-Status: GOOD (  15.20  )
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
Subject: [PATCH 16/44] common: introduce structured I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Structured I/O is an alternative method for shell commands input and
output. Instead of consuming and producing lines of unstructured
strings, commands receive objects with dedicated attributes.

In the future, once enough commands support this, we could make it
available in the shell as the pipe operator.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Kconfig     |  4 ++++
 common/Makefile    |  1 +
 common/structio.c  | 56 ++++++++++++++++++++++++++++++++++++++++++++++
 include/structio.h | 44 ++++++++++++++++++++++++++++++++++++
 4 files changed, 105 insertions(+)
 create mode 100644 common/structio.c
 create mode 100644 include/structio.h

diff --git a/common/Kconfig b/common/Kconfig
index 21ce2ef97f2c..b4de85f356c9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -55,6 +55,10 @@ config BLOCK_STATS
 config FILETYPE
 	bool
 
+config STRUCTIO
+	bool
+	select PARAM
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



