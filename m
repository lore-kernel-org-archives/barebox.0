Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvI7H-0002Sf-73
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 06:39:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  4 Apr 2017 08:38:36 +0200
Message-Id: <20170404063836.12141-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] global command: print info about variables
To: Barebox List <barebox@lists.infradead.org>

The info contains useful information at least for enums, for these the
possible values are printed. This makes the output of the "global"
command more useful and similar to "devinfo global"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 52808f8852..4cf635c0c7 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -321,7 +321,10 @@ static void device_param_print(struct device_d *dev)
 		if (IS_ENABLED(CONFIG_NVVAR) && dev != &nv_device)
 			nv = dev_get_param(&nv_device, param->name);
 
-		printf("%s%s: %s\n", nv ? "* " : "  ", param->name, p);
+		printf("%s%s: %s", nv ? "* " : "  ", param->name, p);
+		if (param->info)
+			param->info(param);
+		printf("\n");
 	}
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
