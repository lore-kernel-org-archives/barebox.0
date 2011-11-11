Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROsvQ-0003Cr-N5
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 15:21:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Nov 2011 16:21:45 +0100
Message-Id: <1321024905-17030-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1321024905-17030-1-git-send-email-s.hauer@pengutronix.de>
References: <1321024905-17030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] export: do not fail on already exported variable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/common/env.c b/common/env.c
index defb26b..05ed714 100644
--- a/common/env.c
+++ b/common/env.c
@@ -247,8 +247,7 @@ int export(const char *varname)
 	if (val) {
 		setenv_raw(context->global, varname, val);
 		setenv_raw(context->local, varname, NULL);
-		return 0;
 	}
-	return -1;
+	return 0;
 }
 EXPORT_SYMBOL(export);
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
