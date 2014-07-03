Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2oXh-0006Cj-RY
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 21:27:46 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so595638lbi.11
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 14:27:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Jul 2014 01:27:00 +0400
Message-Id: <1404422826-6589-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v5 1/7] linux/ioport.h: include missed <linux/list.h>
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/ioport.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index d1b2f55..9b35a30 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -9,6 +9,7 @@
 #define _LINUX_IOPORT_H
 
 #ifndef __ASSEMBLY__
+#include <linux/list.h>
 #include <linux/compiler.h>
 #include <linux/types.h>
 /*
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
