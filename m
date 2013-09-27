Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AB-0j
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:37 +0200
Message-Id: <1380264462-27614-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] globalvar: Do not modify already existing variables
To: barebox@lists.infradead.org

When globalvar_add_simple was called on previously existing variables
then the value was overwritten, even when value was passed as NULL.
Do not overwrite the value in this case which allows us to do a 'global'
on the same variable multiple times without loosing the values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index edb66dd..abd1270 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -72,6 +72,9 @@ int globalvar_add_simple(const char *name, const char *value)
 	if (ret && ret != -EEXIST)
 		return ret;
 
+	if (!value)
+		return 0;
+
 	return dev_set_param(&global_device, name, value);
 }
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
