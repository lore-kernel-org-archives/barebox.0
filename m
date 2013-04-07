Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MC-Jt
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:35 +0200
Message-Id: <1365343255-26497-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/21] param: Add dev member to struct param_d
To: barebox@lists.infradead.org

This will make it unnecessary to pass the dev pointer around later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 1 +
 lib/parameter.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/param.h b/include/param.h
index 3a585cd..2a1b4fa 100644
--- a/include/param.h
+++ b/include/param.h
@@ -15,6 +15,7 @@ struct param_d {
 	unsigned int flags;
 	char *name;
 	char *value;
+	struct device_d *dev;
 	struct list_head list;
 };
 
diff --git a/lib/parameter.c b/lib/parameter.c
index c00b824..94da79c 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -159,6 +159,7 @@ static struct param_d *__dev_add_param(struct device_d *dev, const char *name,
 
 	param->name = strdup(name);
 	param->flags = flags;
+	param->dev = dev;
 	list_add_tail(&param->list, &dev->parameters);
 
 	return param;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
