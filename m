Delivery-date: Wed, 10 Apr 2024 11:24:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruUBi-005qhC-32
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 11:24:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruUBi-0004xM-6b
	for lore@pengutronix.de; Wed, 10 Apr 2024 11:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2LUOZO9xq69fEYQ1xm8HQlK70X+B+jHW5peLcPO29lQ=; b=UUg4dEZQIbeKIDWRsv6wYnLidH
	8MldNmpp/8sIOEmvWQCsM74Axb5PMhKEQ6AHJp9tCAU4sU/YPfefakuWGKjhc+Xj4pCF6eIbW0aMz
	rkD7vdF11mTWD1rtEV2Jnjl4oM9bDePMUHzPykWAWi2BCSUdf9z7srkyfijCJ+hXDpTif5wURXxyc
	SgqzV/erxD3TfoS7UjfmuOlrg9d/eNvxmf/HNyw2UfC0pXhOA6cE4yVlXzD5B3tdaAT6EGcI9bgvj
	Zv7Cv2dJKBUaRMKxDCvrEbkHFNnLK0fnlm3pMqQPRlgebRNvkbV88MdWy/+YfPvHXzDCdg2DdhlK4
	liCQfmHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUB6-0000000681Y-30xz;
	Wed, 10 Apr 2024 09:23:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUB3-0000000680i-1P7j
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 09:23:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruUB1-0004GH-RX; Wed, 10 Apr 2024 11:23:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruUB1-00BT7Q-Ev; Wed, 10 Apr 2024 11:23:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruUB1-000Suz-16;
	Wed, 10 Apr 2024 11:23:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Apr 2024 11:23:30 +0200
Message-Id: <20240410092330.111150-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_022333_395887_5190795A 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] jffs2: change pr_fmt prefix to jffs2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KBUILD_MODNAME expands to the filename which is not a good prefix for
messages. Change it to jffs2 to give the messages a more meaningful
prefix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/build.c       | 2 +-
 fs/jffs2/compr.c       | 2 +-
 fs/jffs2/compr_rubin.c | 2 +-
 fs/jffs2/compr_zlib.c  | 2 +-
 fs/jffs2/debug.c       | 2 +-
 fs/jffs2/dir.c         | 2 +-
 fs/jffs2/fs.c          | 2 +-
 fs/jffs2/malloc.c      | 2 +-
 fs/jffs2/nodelist.c    | 2 +-
 fs/jffs2/read.c        | 2 +-
 fs/jffs2/readinode.c   | 2 +-
 fs/jffs2/scan.c        | 2 +-
 fs/jffs2/super.c       | 2 +-
 13 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/fs/jffs2/build.c b/fs/jffs2/build.c
index d5757d100b..3871547b99 100644
--- a/fs/jffs2/build.c
+++ b/fs/jffs2/build.c
@@ -8,7 +8,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <linux/kernel.h>
 #include <linux/sched.h>
diff --git a/fs/jffs2/compr.c b/fs/jffs2/compr.c
index 04b014199f..a056be051c 100644
--- a/fs/jffs2/compr.c
+++ b/fs/jffs2/compr.c
@@ -9,7 +9,7 @@
  *
  * Created by Arjan van de Ven <arjan@infradead.org>
  */
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include "compr.h"
 
diff --git a/fs/jffs2/compr_rubin.c b/fs/jffs2/compr_rubin.c
index 91a500f4fb..913276d986 100644
--- a/fs/jffs2/compr_rubin.c
+++ b/fs/jffs2/compr_rubin.c
@@ -8,7 +8,7 @@
  * Created by Arjan van de Ven <arjanv@redhat.com>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 
 #include <linux/string.h>
 #include <linux/types.h>
diff --git a/fs/jffs2/compr_zlib.c b/fs/jffs2/compr_zlib.c
index 2b7914f1f5..0580bab0de 100644
--- a/fs/jffs2/compr_zlib.c
+++ b/fs/jffs2/compr_zlib.c
@@ -7,7 +7,7 @@
  *
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <linux/kernel.h>
 #include <linux/zlib.h>
diff --git a/fs/jffs2/debug.c b/fs/jffs2/debug.c
index edf8539762..4ac501e2de 100644
--- a/fs/jffs2/debug.c
+++ b/fs/jffs2/debug.c
@@ -8,7 +8,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 
 #include <common.h>
 #include <crc.h>
diff --git a/fs/jffs2/dir.c b/fs/jffs2/dir.c
index 34f8d141f2..94ef51f778 100644
--- a/fs/jffs2/dir.c
+++ b/fs/jffs2/dir.c
@@ -7,7 +7,7 @@
  *
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <linux/fs.h>
 #include <linux/hash.h>
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 6f2cbff6c9..fcce56c15f 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -7,7 +7,7 @@
  *
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <crc.h>
 #include <driver.h>
diff --git a/fs/jffs2/malloc.c b/fs/jffs2/malloc.c
index 202191be94..e0e29fa648 100644
--- a/fs/jffs2/malloc.c
+++ b/fs/jffs2/malloc.c
@@ -7,7 +7,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 
 #include <common.h>
 #include <linux/kernel.h>
diff --git a/fs/jffs2/nodelist.c b/fs/jffs2/nodelist.c
index 94753e1995..debf10e751 100644
--- a/fs/jffs2/nodelist.c
+++ b/fs/jffs2/nodelist.c
@@ -7,7 +7,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 
 #include <common.h>
 #include <crc.h>
diff --git a/fs/jffs2/read.c b/fs/jffs2/read.c
index a1c3b9d47b..fffa5f60cb 100644
--- a/fs/jffs2/read.c
+++ b/fs/jffs2/read.c
@@ -7,7 +7,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <crc.h>
 #include <linux/kernel.h>
diff --git a/fs/jffs2/readinode.c b/fs/jffs2/readinode.c
index aaf2619613..605130d60c 100644
--- a/fs/jffs2/readinode.c
+++ b/fs/jffs2/readinode.c
@@ -7,7 +7,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 
 #include <common.h>
 #include <crc.h>
diff --git a/fs/jffs2/scan.c b/fs/jffs2/scan.c
index 0d74a8f51f..e1e5120a28 100644
--- a/fs/jffs2/scan.c
+++ b/fs/jffs2/scan.c
@@ -7,7 +7,7 @@
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <crc.h>
 #include <linux/kernel.h>
diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index 37b3f328c6..d56cdfe132 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -7,7 +7,7 @@
  *
  * Created by David Woodhouse <dwmw2@infradead.org>
  */
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define pr_fmt(fmt) "jffs2: " fmt
 #include <common.h>
 #include <init.h>
 #include <linux/slab.h>
-- 
2.39.2



