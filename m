Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hn-0001y7-Qy
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:34 +0200
Message-Id: <20170614072641.29942-2-s.hauer@pengutronix.de>
In-Reply-To: <20170614072641.29942-1-s.hauer@pengutronix.de>
References: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] Revert "globalvar: Fix value of new globalvar when nvvar
 exists"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit f8a177478c1b79e369ecc65501d9d15ff573339f.
---
 common/globalvar.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c528b24062..c48e7df067 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -403,11 +403,11 @@ int globalvar_add_simple(const char *name, const char *value)
 			return PTR_ERR(param);
 	}
 
-	globalvar_nv_sync(name);
-
 	if (value)
 		dev_set_param(&global_device, name, value);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
