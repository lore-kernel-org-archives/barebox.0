Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR4-0005sL-JC
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:25 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1CFB8FF8770
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:21:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:34 +0200
Message-Id: <1347020017-12110-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/11] defaultenv-2: add ifdown support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/ifdown |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 defaultenv-2/base/bin/ifdown

diff --git a/defaultenv-2/base/bin/ifdown b/defaultenv-2/base/bin/ifdown
new file mode 100644
index 0000000..191144e
--- /dev/null
+++ b/defaultenv-2/base/bin/ifdown
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+mkdir -p /tmp/network
+
+if [ $# != 1 ]; then
+	echo "usage: ifdown <interface>"
+	exit 1
+fi
+
+interface="$1"
+
+
+if [ -f /tmp/network/$interface ]; then
+	rm /tmp/network/$interface
+	exit 0
+fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
