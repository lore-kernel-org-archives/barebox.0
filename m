Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SupLo-0002hS-SJ
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 18:33:25 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 05371FF9883
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 20:39:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Jul 2012 20:33:04 +0200
Message-Id: <1343413990-31891-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/12] only compress default env in uncompressed images
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 7b5a307..40f0c71 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -511,6 +511,7 @@ config DEFAULT_ENVIRONMENT
 config DEFAULT_ENVIRONMENT_COMPRESSED
 	bool
 	depends on DEFAULT_ENVIRONMENT
+	depends on !IMAGE_COMPRESSION_LZO
 	default y if ZLIB
 	default y if BZLIB
 	default y if LZO_DECOMPRESS
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
