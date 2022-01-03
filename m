Delivery-date: Mon, 03 Jan 2022 13:07:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7c-009o5l-0c
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:07:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7V-0005Xr-Rk
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HZB+JLMGp41jxPnexGGmJ9JgjCanmUCFL79wZ0oBhA=; b=e1cXuJnXXmj8fb
	fp7Ff8xgvYvqBoC/WUnu7WKCNCOjfOGg5xCPnLYQmcu6eNG+wHFdd0kbZifMZ+wJYfiZtnJ1k8sK1
	FqgR40hLrqU+f5uhrllApxXQLqCxFpu6QP76p1GEWNwITGGDpYJc82yF1b8gqJB1SWOtUlYhygQ8F
	St/PtvoovQob6+nmT3mGKaVfCYqWg7fXRGsPBMvPLIVfnIxBJRCSRtelH8lNELEoxdRAavOpzld8c
	643yN+pZFip6tw7VIlabrMpzafHN54ySdFCisVbwJSCCwUbv0n/ieIOg/s5nH11WVRKs5oEWUsahA
	91q+GeY13lv2lFiY0AHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M61-008xvl-9B; Mon, 03 Jan 2022 12:05:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5v-008xtk-DR
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-00052M-Ik; Mon, 03 Jan 2022 13:05:41 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GVz-1m; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:29 +0100
Message-Id: <20220103120539.1730644-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040543_484535_197E726F 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/11] commands: set SPDX-License-Identifier for files without
 license statement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In absence of a dual licensing statement, this is GPL-2.0-only as the
barebox project as a whole. Add a SPDX-License-Identifier to make this
clear.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig            | 2 ++
 commands/Makefile           | 2 ++
 commands/clk.c              | 2 ++
 commands/fbtest.c           | 2 ++
 commands/hwclock.c          | 2 ++
 commands/hwmon.c            | 2 ++
 commands/insmod.c           | 2 ++
 commands/internal.h         | 2 ++
 commands/keystore.c         | 2 ++
 commands/lsmod.c            | 2 ++
 commands/magicvar.c         | 2 ++
 commands/memtester/Makefile | 2 ++
 commands/mmc.c              | 2 ++
 commands/readf.c            | 2 ++
 commands/rmdir.c            | 2 ++
 commands/splash.c           | 2 ++
 commands/time.c             | 2 ++
 commands/ubi.c              | 2 ++
 commands/uimage.c           | 2 ++
 19 files changed, 38 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 22375360885b..e2c36949347e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 config REGINFO
 	bool
 
diff --git a/commands/Makefile b/commands/Makefile
index ba5ea19eb202..0b7c1563b534 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
diff --git a/commands/clk.c b/commands/clk.c
index 4d124807bd73..0f7d7422e9b2 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
diff --git a/commands/fbtest.c b/commands/fbtest.c
index 30d96f6af41f..be1540d3d170 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <errno.h>
diff --git a/commands/hwclock.c b/commands/hwclock.c
index 7a5600c456c9..abb0500e6a5d 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
diff --git a/commands/hwmon.c b/commands/hwmon.c
index ace4503c0b4d..04c3e728c636 100644
--- a/commands/hwmon.c
+++ b/commands/hwmon.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
diff --git a/commands/insmod.c b/commands/insmod.c
index 735dde022253..8f962b62d30d 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <module.h>
diff --git a/commands/internal.h b/commands/internal.h
index 21d1408c911f..63c10af28e76 100644
--- a/commands/internal.h
+++ b/commands/internal.h
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 int __do_digest(struct digest *d, unsigned char *sig,
 		       int argc, char *argv[]);
diff --git a/commands/keystore.c b/commands/keystore.c
index 4f6a7ef190ea..4922cf1bebe9 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 711c1c66dc3d..3d7ce40430bd 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <complete.h>
diff --git a/commands/magicvar.c b/commands/magicvar.c
index 8740784ed2c2..01acc741ac5d 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
diff --git a/commands/memtester/Makefile b/commands/memtester/Makefile
index 17a2429276bb..b410813af7c8 100644
--- a/commands/memtester/Makefile
+++ b/commands/memtester/Makefile
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 obj-y += tests.o memtester.o
diff --git a/commands/mmc.c b/commands/mmc.c
index c696e7b8817b..cbbb9d615145 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <command.h>
 #include <mci.h>
 #include <stdio.h>
diff --git a/commands/readf.c b/commands/readf.c
index 8dd5a2b55a79..d9d1b5124349 100644
--- a/commands/readf.c
+++ b/commands/readf.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
diff --git a/commands/rmdir.c b/commands/rmdir.c
index e1cd5dc54852..9b2938a5563c 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
diff --git a/commands/splash.c b/commands/splash.c
index f1cc8c83bd97..2eb7c5dc39e5 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <errno.h>
diff --git a/commands/time.c b/commands/time.c
index 2d9fb75e7a8c..5b8933ea6553 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <clock.h>
diff --git a/commands/ubi.c b/commands/ubi.c
index f866f00160b0..6abd054af393 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
diff --git a/commands/uimage.c b/commands/uimage.c
index fb4df780bdd0..588519e3f3a7 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <image.h>
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

