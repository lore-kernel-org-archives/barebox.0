Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLG-0001JT-0l
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:34:54 +0000
Received: by mail-wm0-x231.google.com with SMTP id p187so22961830wmp.1
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:32 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:33:59 +0100
Message-Id: <1450550044-14674-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/7] led: add missing includes
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

The led header use some parts which are missing when include the this
header. This patch adds them.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/led.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/led.h b/include/led.h
index ddf8d90..000267c 100644
--- a/include/led.h
+++ b/include/led.h
@@ -1,7 +1,10 @@
 #ifndef __LED_H
 #define __LED_H
 
+#include <linux/list.h>
+
 #include <errno.h>
+#include <of.h>
 
 struct led {
 	void (*set)(struct led *, unsigned int value);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
