Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo6.mail-out.ovh.net ([178.32.124.17])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVjt1-0004nO-G0
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 16:53:36 +0000
Received: from mail617.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id C89AEFFA01F
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 17:53:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 17:53:02 +0100
Message-Id: <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150311165009.GP30554@ns203013.ovh.net>
References: <20150311165009.GP30554@ns203013.ovh.net>
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
Subject: [PATCH 1/8] digest: move digest.c to crypto
To: barebox@lists.infradead.org

with not the rest of the implementation

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile             | 1 -
 crypto/Makefile             | 1 +
 {common => crypto}/digest.c | 0
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename {common => crypto}/digest.c (100%)

diff --git a/common/Makefile b/common/Makefile
index ee5dca7..6bfbfb4 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -20,7 +20,6 @@ obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
-obj-$(CONFIG_DIGEST)		+= digest.o
 obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
diff --git a/crypto/Makefile b/crypto/Makefile
index 7c5b035..22ae829 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CRC7)	+= crc7.o
+obj-$(CONFIG_DIGEST)	+= digest.o
 obj-$(CONFIG_MD5)	+= md5.o
 obj-$(CONFIG_SHA1)	+= sha1.o
 obj-$(CONFIG_SHA224)	+= sha2.o
diff --git a/common/digest.c b/crypto/digest.c
similarity index 100%
rename from common/digest.c
rename to crypto/digest.c
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
