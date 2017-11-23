Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHpJU-0002yn-VI
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 11:05:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Nov 2017 12:04:38 +0100
Message-Id: <20171123110438.24380-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] globalvar: When a globalvar is created with a NULL value,
 use empty string
To: Barebox List <barebox@lists.infradead.org>

As a convenience for users of globalvar_add_simple_string() create an
empty value for the variable when passed a NULL pointer as value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index ee756e5140..1db6bd9a41 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -459,6 +459,9 @@ int globalvar_add_simple_string(const char *name, char **value)
 
 	globalvar_nv_sync(name);
 
+	if (!*value)
+		*value = xstrdup("");
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
