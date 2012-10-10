Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLtkf-0000h6-3y
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 10:42:57 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 10 Oct 2012 12:42:50 +0200
Message-Id: <1349865771-18825-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/2] parameter: fix memory leak
To: barebox@lists.infradead.org

In __dev_add_param, the name string is allocated using strdup.
Free it when removing the parameter.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 lib/parameter.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/parameter.c b/lib/parameter.c
index 3ecb480..b33ad17 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -224,6 +224,7 @@ void dev_remove_parameters(struct device_d *dev)
 	list_for_each_entry_safe(p, n, &dev->parameters, list) {
 		p->set(dev, p, NULL);
 		list_del(&p->list);
+		free(p->name);
 		free(p);
 	}
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
