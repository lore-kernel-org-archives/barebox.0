Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout01.rmx.de ([94.199.90.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itr2h-0006AD-Ua
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 10:46:02 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout01.rmx.de (Postfix) with ESMTPS id 4824vK3G3Mz2SWQW
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 11:45:49 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 4824vG2lhRz2xng
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 11:45:46 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 21 Jan 2020 11:45:27 +0100
Message-ID: <20200121104527.14109-1-ceggers@arri.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] param: Make enum param_tristate always visible
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

When disabling CONFIG_SHELL_HUSH, also CONFIG_PARAMETER may be disabled.
In this case, the definition "enum param_tristate" is not reachable from
watchdog.h.

I also considered moving almost everything in watchdog.h inside the
CONFIG_WATCHDOG guard. But this doesn't work for me because
drivers/watchdog/imxwd.c can also be built without CONFIG_WATCHDOG.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 @Sascha: I've asked my IT department to stop modifiying my patch
emails. I hope the mails are ok now.

 include/param.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/param.h b/include/param.h
index d75f50ea3..f1166eb28 100644
--- a/include/param.h
+++ b/include/param.h
@@ -37,6 +37,8 @@ struct param_d {
 	enum param_type type;
 };
 
+enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTATE_FALSE };
+
 #ifdef CONFIG_PARAMETER
 const char *get_param_type(struct param_d *param);
 const char *dev_get_param(struct device_d *dev, const char *name);
@@ -63,8 +65,6 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, const char * const *names, int max, void *priv);
 
-enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTATE_FALSE };
-
 struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-- 
2.16.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
