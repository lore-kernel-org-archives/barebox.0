Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL26S-0007I3-Cf
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 10:34:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26P-0005vj-9u
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:21 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26O-0000Lp-UO
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:20 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 23 Sep 2020 12:34:17 +0200
Message-Id: <20200923103418.11186-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
References: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] common: globalvar: add variable for
 buildsystem_version_string
To: Barebox List <barebox@lists.infradead.org>

Now that the buildsystem version is available, make it accessible as a
global variable for runtime usage. If the buildsystem version is not
present (i.e. empty), don't add the variable at all.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/globalvar.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 98a028a68aa7..e38ad0c2c668 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -595,6 +595,9 @@ static int globalvar_init(void)
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
+	if (strlen(buildsystem_version_string) > 0)
+		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
+
 	return 0;
 }
 pure_initcall(globalvar_init);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
