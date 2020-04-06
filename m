Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQdK-0003ss-Sn
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 12:13:44 +0000
Received: by mail-lf1-x142.google.com with SMTP id n20so11572180lfl.10
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 05:13:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  6 Apr 2020 15:13:25 +0300
Message-Id: <20200406121325.1364-1-antonynpavlov@gmail.com>
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
Subject: [PATCH V2] startup: introduce global.endianness variable
To: barebox@lists.infradead.org

The global.endianness variable make it possible
to determine current endian mode from command
line or from script on bi-endian capable system.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index c87f2c9339..264833f88c 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -591,6 +591,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 
 static int globalvar_init(void)
 {
+	const char *endianness;
+
 	register_device(&global_device);
 
 	if (IS_ENABLED(CONFIG_NVVAR))
@@ -598,11 +600,19 @@ static int globalvar_init(void)
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
+	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		endianness = "big";
+	else
+		endianness = "little";
+
+	globalvar_add_simple("endianness", endianness);
+
 	return 0;
 }
 pure_initcall(globalvar_init);
 
 BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
+BAREBOX_MAGICVAR_NAMED(global_endianness, global.endianness, "The barebox endianness");
 
 /**
  * nvvar_save - save NV variables to persistent environment
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
