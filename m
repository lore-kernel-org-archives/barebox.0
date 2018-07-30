Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fk68f-0002bX-0s
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 11:14:58 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 30 Jul 2018 13:14:34 +0200
Message-Id: <20180730111437.23453-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX: HAB: fix missing include for EPERM
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 include/hab.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/hab.h b/include/hab.h
index fb7149ef53..78c2b865ba 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -18,6 +18,8 @@
 #ifndef __HABV4_H
 #define __HABV4_H
 
+#include <errno.h>
+
 #ifdef CONFIG_HABV4
 int imx28_hab_get_status(void);
 int imx6_hab_get_status(void);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
