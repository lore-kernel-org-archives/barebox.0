Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn04s-00020e-9e
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:13:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 11:13:34 +0200
Message-Id: <1474535615-28133-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] nv: Allow full variable name in nvvar_add
To: Barebox List <barebox@lists.infradead.org>

As a convenience for users allow to pass the full name, including
the leading "nv.", to nvvar_add().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index a2555cf..6466d1d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -240,6 +240,9 @@ int nvvar_add(const char *name, const char *value)
 {
 	int ret;
 
+	if (!strncmp(name, "nv.", 3))
+		name += 3;
+
 	ret = __nvvar_add(name, value);
 	if (ret)
 		return ret;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
