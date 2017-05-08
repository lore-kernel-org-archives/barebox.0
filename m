Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7n7Z-00068P-Mo
 for barebox@lists.infradead.org; Mon, 08 May 2017 18:10:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 May 2017 20:10:31 +0200
Message-Id: <20170508181031.25106-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] globalvar: Fix value of new globalvar when nvvar exists
To: Barebox List <barebox@lists.infradead.org>
Cc: Ian Abbott <abbotti@mev.co.uk>

When a new globalvar with a value is created and the corresponding
nvvar exists, then the globalvar gets the value of the nvvar, not
from the newly assigned value as expected.

nv quux=foo; global quux=bar; echo ${global.quux}

Should give "bar", not "foo". Fix this.

Reported-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c48e7df067..c528b24062 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -403,11 +403,11 @@ int globalvar_add_simple(const char *name, const char *value)
 			return PTR_ERR(param);
 	}
 
+	globalvar_nv_sync(name);
+
 	if (value)
 		dev_set_param(&global_device, name, value);
 
-	globalvar_nv_sync(name);
-
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
