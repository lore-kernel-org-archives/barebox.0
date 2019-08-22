Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gwF-0004K3-8J
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:51:18 +0000
Received: from geraet.fritz.box (39-236-142-46.pool.kielnet.net
 [46.142.236.39]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9B9BD1C000E
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 06:51:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:51:00 +0200
Message-Id: <20190822065102.22024-2-ahmad@a3f.at>
In-Reply-To: <20190822065102.22024-1-ahmad@a3f.at>
References: <20190822065102.22024-1-ahmad@a3f.at>
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
Subject: [PATCH RFC 1/3] fs: tftp: remove duplicate header
To: barebox@lists.infradead.org

<fs.h> is included again a few lines prior. Delete it here.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/tftp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 43293272d7e9..54dcba272fb8 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -29,7 +29,6 @@
 #include <libgen.h>
 #include <fcntl.h>
 #include <getopt.h>
-#include <fs.h>
 #include <init.h>
 #include <linux/stat.h>
 #include <linux/err.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
