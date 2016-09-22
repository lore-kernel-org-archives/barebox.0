Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn04s-00020h-9c
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:13:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 11:13:35 +0200
Message-Id: <1474535615-28133-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474535615-28133-1-git-send-email-s.hauer@pengutronix.de>
References: <1474535615-28133-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] globalvar: Allow full variable name in globalvar_add
To: Barebox List <barebox@lists.infradead.org>

As a convenience for users allow to pass the full name, including
the leading "global.", to globalvar_add().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 6466d1d..d6a46de 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -36,6 +36,9 @@ int globalvar_add(const char *name,
 {
 	struct param_d *param;
 
+	if (!strncmp(name, "global.", 7))
+		name += 7;
+
 	param = dev_add_param(&global_device, name, set, get, flags);
 	if (IS_ERR(param))
 		return PTR_ERR(param);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
