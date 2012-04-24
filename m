Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMbw7-0007d7-JP
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 09:21:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Apr 2012 11:21:19 +0200
Message-Id: <1335259279-25353-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
References: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] dev_add_param: check if param exists already
To: barebox@lists.infradead.org

Before adding a new parameter to a device we should check if
it already exists.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/parameter.c b/lib/parameter.c
index e746467..baf7720 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -183,6 +183,10 @@ int dev_add_param(struct device_d *dev, const char *name,
 {
 	struct param_d *param;
 
+	param = get_param_by_name(dev, name);
+	if (param)
+		return -EEXIST;
+
 	param = __dev_add_param(dev, name, set, get, flags);
 
 	return param ? 0 : -EINVAL;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
