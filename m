Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qH-Ut
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB6-0007jC-2V
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:40 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0003z0-P7
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:32 +0200
Message-Id: <20170815134636.21236-4-jbe@pengutronix.de>
In-Reply-To: <20170815134636.21236-1-jbe@pengutronix.de>
References: <20170815134636.21236-1-jbe@pengutronix.de>
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
Subject: [PATCH 3/7] bootchooser: avoid a use after free
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/bootchooser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 455f290fa..69d980d6f 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -376,9 +376,9 @@ struct bootchooser *bootchooser_get(void)
 			bc->state_prefix = xstrdup(state_prefix);
 			bc->state = state_by_name(state_devname);
 			if (!bc->state) {
-				free(state_devname);
 				pr_err("Cannot get state '%s'\n",
 				       state_devname);
+				free(state_devname);
 				ret = -ENODEV;
 				goto err;
 			}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
