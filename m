Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejh6U-0000ce-Io
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 07:58:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Feb 2018 08:58:33 +0100
Message-Id: <20180208075833.11564-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] env: Add more context to error message
To: Barebox List <barebox@lists.infradead.org>

When setenv complains that it can't set a device parameter, then print
which parameter it tried to set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/env.c b/common/env.c
index 80d3f7ab50..323a82223e 100644
--- a/common/env.c
+++ b/common/env.c
@@ -266,7 +266,7 @@ int setenv(const char *_name, const char *value)
 	if (strchr(name, '.')) {
 		ret = dev_setenv(name, value);
 		if (ret)
-			eprintf("Cannot set parameter: %s\n", strerror(-ret));
+			eprintf("Cannot set parameter %s: %s\n", name, strerror(-ret));
 		goto out;
 	}
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
