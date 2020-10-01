Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtcQ-00078C-U2
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 08:07:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Oct 2020 10:07:06 +0200
Message-Id: <20201001080708.636-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] magicvar: Use __UNIQUE_ID to generate name
To: Barebox List <barebox@lists.infradead.org>

BAREBOX_MAGICVAR_NAME only exists to generate a unique identifier. We can
generate that using __UNIQUE_ID. With this we can convert users from
BAREBOX_MAGICVAR_NAME to the simpler BAREBOX_MAGICVAR macro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/magicvar.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/include/magicvar.h b/include/magicvar.h
index 9fb89a84cc..bad9b0dee5 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -19,16 +19,18 @@ extern struct magicvar __barebox_magicvar_end;
 #endif
 
 #ifdef CONFIG_CMD_MAGICVAR
-#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
-extern const struct magicvar __barebox_magicvar_##_name;	\
-const struct magicvar __barebox_magicvar_##_name		\
+#define __BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
+static const struct magicvar _name							\
         __attribute__ ((unused,section (".barebox_magicvar_" __stringify(_name)))) = {	\
         .name	= #_varname,					\
 	.description = MAGICVAR_DESCRIPTION(_description),	\
 };
 
+#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
+	__BAREBOX_MAGICVAR_NAMED(__barebox_magicvar_##_name, _varname, _description)
+
 #define BAREBOX_MAGICVAR(_name, _description)			\
-	BAREBOX_MAGICVAR_NAMED(_name, _name, _description)
+	__BAREBOX_MAGICVAR_NAMED(__UNIQUE_ID(magicvar), _name, _description)
 #else
 #define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)
 #define BAREBOX_MAGICVAR(_name, _description)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
