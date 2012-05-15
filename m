Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUBr7-0004eD-Gj
 for barebox@lists.infradead.org; Tue, 15 May 2012 07:07:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 May 2012 09:07:33 +0200
Message-Id: <1337065654-17925-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337065654-17925-1-git-send-email-s.hauer@pengutronix.de>
References: <1337065654-17925-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] magicvar: Add magicvar macro with additional name argument
To: barebox@lists.infradead.org

Currently magicvar fails on variables containing a '.' because we can't
use these as C names. Overcome this by adding a new macro which allows
to specify a name seperately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/magicvar.h |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/magicvar.h b/include/magicvar.h
index d27a2e3..bb5bd25 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -18,14 +18,18 @@ extern struct magicvar __barebox_magicvar_end;
 #endif
 
 #ifdef CONFIG_CMD_MAGICVAR
-#define BAREBOX_MAGICVAR(_name, _description)			\
+#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
 extern const struct magicvar __barebox_magicvar_##_name;	\
 const struct magicvar __barebox_magicvar_##_name		\
         __attribute__ ((unused,section (".barebox_magicvar_" __stringify(_name)))) = {	\
-        .name	= #_name,					\
+        .name	= #_varname,					\
 	.description = MAGICVAR_DESCRIPTION(_description),	\
 };
+
+#define BAREBOX_MAGICVAR(_name, _description)			\
+	BAREBOX_MAGICVAR_NAMED(_name, _name, _description)
 #else
+#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)
 #define BAREBOX_MAGICVAR(_name, _description)
 #endif
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
