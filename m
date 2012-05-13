Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXXV-0002k0-B9
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:04:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 14:04:29 +0200
Message-Id: <1336910669-26908-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1336910669-26908-1-git-send-email-s.hauer@pengutronix.de>
References: <1336910669-26908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] parameter: remove unused struct member
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |    1 -
 1 file changed, 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index e7b66a4..a855102 100644
--- a/include/param.h
+++ b/include/param.h
@@ -14,7 +14,6 @@ struct param_d {
 	int (*set)(struct device_d *, struct param_d *param, const char *val);
 	unsigned int flags;
 	char *name;
-	struct param_d *next;
 	char *value;
 	struct list_head list;
 };
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
