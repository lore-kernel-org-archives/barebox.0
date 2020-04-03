Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLPt-0001ox-ML
 for barebox@lists.infradead.org; Fri, 03 Apr 2020 12:27:24 +0000
Received: by mail-lf1-x142.google.com with SMTP id s13so5602287lfb.9
 for <barebox@lists.infradead.org>; Fri, 03 Apr 2020 05:27:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  3 Apr 2020 15:26:59 +0300
Message-Id: <20200403122659.32298-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] startup: introduce global.endianity variable
To: barebox@lists.infradead.org

The global.endianity variable make it possible
to determine current endian mode from command
line or from script on bi-endian capable system.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index c87f2c9339..7632cb6418 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -591,6 +591,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 
 static int globalvar_init(void)
 {
+	const char *endianity;
+
 	register_device(&global_device);
 
 	if (IS_ENABLED(CONFIG_NVVAR))
@@ -598,11 +600,19 @@ static int globalvar_init(void)
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
+	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		endianity = "big";
+	else
+		endianity = "little";
+
+	globalvar_add_simple("endianity", endianity);
+
 	return 0;
 }
 pure_initcall(globalvar_init);
 
 BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
+BAREBOX_MAGICVAR_NAMED(global_endianity, global.endianity, "The barebox endianity");
 
 /**
  * nvvar_save - save NV variables to persistent environment
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
