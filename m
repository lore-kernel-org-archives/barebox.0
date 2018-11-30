Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSkMJ-00010B-7M
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 15:05:48 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 Nov 2018 16:05:20 +0100
Message-Id: <20181130150520.5876-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] defaultenv-2: add bnet script to second stage barebox over
 net
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Doing cycling barebox boot over the net is a good testing practice.
It is possible to detect at least some bugs before flushing it to
the system. Suddenly it looks like, it is done not oft enough. So, let's
add this option mainline.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 defaultenv/defaultenv-2-base/boot/bnet | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-base/boot/bnet

diff --git a/defaultenv/defaultenv-2-base/boot/bnet b/defaultenv/defaultenv-2-base/boot/bnet
new file mode 100644
index 0000000000..1290a7acfc
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/boot/bnet
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-barebox-${global.hostname}"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
